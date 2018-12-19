//
//  APIClient.swift
//  CKB
//
//  Created by James Chen on 2018/12/13.
//  Copyright © 2018 Nervos Foundation. All rights reserved.
//

import Foundation
import CryptoSwift

/// JSON RPC API client.
public class APIClient {
    private var url: URL

    public init(url: URL = URL(string: "http://localhost:8114")!) {
        self.url = url
    }

    public func load<R: Codable>(_ request: APIRequest<R>, id: Int = 1) throws -> R {
        var result: R?
        var error: Error?

        let semaphore = DispatchSemaphore(value: 0)
        URLSession.shared.dataTask(with: try createRequest(request)) { (data, response, err) in
            error = err

            if data == nil {
                error = APIError.emptyResponse
            }

            do {
                result = try request.decode(data!)
            } catch let err {
                error = err
            }

            semaphore.signal()
        }.resume()
        semaphore.wait()

        if let error = error {
            throw error
        }

        if result == nil {
            throw APIError.emptyResponse
        }
        return result!
    }

    private func createRequest<R>(_ request: APIRequest<R>, id: Int = 1) throws -> URLRequest {
        var req = URLRequest(url: url)
        req.httpMethod = "POST"
        req.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let jsonObject: Any = [ "jsonrpc": "2.0", "id": id, "method": request.method, "params": request.params ]
        if !JSONSerialization.isValidJSONObject(jsonObject) {
            throw APIError.invalidParameters
        }
        req.httpBody = try JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted)

        return req
    }
}

extension APIClient {
    public func genesisBlockHash() throws -> H256 {
        return try getBlockHash(number: 0)
    }

    public func genesisBlock() throws -> BlockWithHash {
        return try getBlock(hash: try genesisBlockHash())
    }
}

// MARK: - Chain RPC Methods

extension APIClient {
    public func getBlock(hash: H256) throws -> BlockWithHash {
        return try load(APIRequest<BlockWithHash>(method: "get_block", params: [hash]))
    }

    public func getTransaction(hash: H256) throws -> TransactionWithHash {
        return try load(APIRequest<TransactionWithHash>(method: "get_transaction", params: [hash]))
    }

    public func getBlockHash(number: BlockNumber) throws -> H256 {
        return try load(APIRequest<String>(method: "get_block_hash", params: [number]))
    }

    public func getTipHeader() throws -> Header {
        return try load(APIRequest<Header>(method: "get_tip_header"))
    }

    public func getCellsByTypeHash(typeHash: H256, from: BlockNumber, to: BlockNumber) throws -> [CellOutputWithOutPoint] {
        return try load(APIRequest<[CellOutputWithOutPoint]>(method: "get_cells_by_type_hash", params: [typeHash, from, to]))
    }

    public func getCurrentCell(outPoint: OutPoint) throws -> CellWithStatus {
        return try load(APIRequest<CellWithStatus>(method: "get_current_cell", params: [outPoint.param]))
    }
}

// MARK: - Pool RPC Methods

extension APIClient {
    public func sendTransaction(transaction: Transaction) throws -> H256 {
        return try load(APIRequest<H256>(method: "send_transaction", params: [transaction.param]))
    }
}

// MARK: - Info for mruby script and verify cell

extension APIClient {
    func mrubyCellHash() throws -> String {
        let systemCells = try genesisBlock().transactions.first!.transaction.outputs
        if systemCells.count < 3 {
            throw APIError.genericError("Cannot find mruby contract cell")
        }
        let hash = Data(bytes: systemCells[2].data).sha3(.sha256)
        return Utils.prefixHex(hash.toHexString())
    }
}
