//
//  Node.swift
//  CKB
//
//  Created by James Chen on 2019/03/01.
//  Copyright © 2019 Nervos Foundation. All rights reserved.
//

import Foundation

public struct NodeAddress: Codable {
    public let address: String
    public let score: Number
}

public struct Node: Codable {
    public let version: Number
    public let nodeId: String
    public let addresses: [NodeAddress]
    public let isOutbound: Bool?

    enum CodingKeys: String, CodingKey {
        case version
        case nodeId = "node_id"
        case addresses
        case isOutbound = "is_outbound"
    }
}
