All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.


# [v0.12.0](https://github.com/nervosnetwork/ckb-sdk-swift/compare/v0.11.0...v0.12.0) (2019-05-18)


### Features

* Add address to publicKeyHash ([ae42882](https://github.com/nervosnetwork/ckb-sdk-swift/commit/ae42882))
* Add system script loading ([c9f06bb](https://github.com/nervosnetwork/ckb-sdk-swift/commit/c9f06bb))
* Generalize OutPoint struct to reference headers ([28bf93a](https://github.com/nervosnetwork/ckb-sdk-swift/commit/28bf93a))
* Implement experiment RPC methods ([f9d389d](https://github.com/nervosnetwork/ckb-sdk-swift/commit/f9d389d))
* Implement get_current_epoch RPC method ([be20881](https://github.com/nervosnetwork/ckb-sdk-swift/commit/be20881))
* Implement get_epoch_by_number RPC method ([2e7a96a](https://github.com/nervosnetwork/ckb-sdk-swift/commit/2e7a96a))
* Implement get_peers RPC method ([abecb54](https://github.com/nervosnetwork/ckb-sdk-swift/commit/abecb54))
* Implement Stats RPC methods ([52ad9f5](https://github.com/nervosnetwork/ckb-sdk-swift/commit/52ad9f5))
* Implement transaction sign ([bfcb656](https://github.com/nervosnetwork/ckb-sdk-swift/commit/bfcb656))
* Remove always success script ([96a80c9](https://github.com/nervosnetwork/ckb-sdk-swift/commit/96a80c9))
* **secp256k1:** Implement ECDSA sign, add test JSON fixture ([fa28824](https://github.com/nervosnetwork/ckb-sdk-swift/commit/fa28824))
* Implement tx_pool_info RPC method ([6432afc](https://github.com/nervosnetwork/ckb-sdk-swift/commit/6432afc))
* Stringify RPC number type ([43c2fa9](https://github.com/nervosnetwork/ckb-sdk-swift/commit/43c2fa9))
* Update Header.proposalsRoot to Header.proposalsHash ([5311a0c](https://github.com/nervosnetwork/ckb-sdk-swift/commit/5311a0c))
* Update the `param` function of `OutPoint` ([df1c1d0](https://github.com/nervosnetwork/ckb-sdk-swift/commit/df1c1d0))


* Remove trace RPC methods ([b0f70b6](https://github.com/nervosnetwork/ckb-sdk-swift/commit/b0f70b6))


### Bug Fixes

* Modify data type of `CellOutputWithOutPoint.lock` ([6a5f6c9](https://github.com/nervosnetwork/ckb-sdk-swift/commit/6a5f6c9))
* RPC request/response id unmatch issue ([8872a85](https://github.com/nervosnetwork/ckb-sdk-swift/commit/8872a85))


### BREAKING CHANGES

* Trace RPC methods are removed.


# [v0.11.0](https://github.com/nervosnetwork/ckb-sdk-swift/compare/v0.10.0...v0.11.0) (2019-05-14)


### Bug Fixes

* Fix test ([607512f](https://github.com/nervosnetwork/ckb-sdk-swift/commit/607512f))


### Features

* Add an empty example iOS app ([3bf41b2](https://github.com/nervosnetwork/ckb-sdk-swift/commit/3bf41b2))
* Implement get_block_by_number RPC method ([cc3e3a1](https://github.com/nervosnetwork/ckb-sdk-swift/commit/cc3e3a1))


# [v0.10.0](https://github.com/nervosnetwork/ckb-sdk-swift/compare/v0.9.0...v0.10.0) (2019-05-06)


### Features

* Change RPC types per CKB change ([c2f79ab](https://github.com/nervosnetwork/ckb-sdk-swift/commit/c2f79ab))


### BREAKING CHANGES

* RPC types and fields are changed and client needs to update to adapt.


# [v0.9.0](https://github.com/nervosnetwork/ckb-sdk-swift/compare/v0.8.0...v0.9.0) (2019-04-22)


### Bug Fixes

* Fix public initializers ([37368f0](https://github.com/nervosnetwork/ckb-sdk-swift/commit/37368f0))


### Features

* Change get_cells_by_type_hash to get_cells_by_lock_hash ([6a4f973](https://github.com/nervosnetwork/ckb-sdk-swift/commit/6a4f973))
* Implement Bech32 and address format ([3c38ae3](https://github.com/nervosnetwork/ckb-sdk-swift/commit/3c38ae3))
* Update Bench32 to convert data between 5 bits and 8 bits ([7e46334](https://github.com/nervosnetwork/ckb-sdk-swift/commit/7e46334))
* Remove cellbase from header and uncle block ([931d2ae](https://github.com/nervosnetwork/ckb-sdk-swift/commit/931d2ae))
* Add segregated witness structure ([a418daf](https://github.com/nervosnetwork/ckb-sdk-swift/commit/a418daf))
* Remove index field from witness ([e0f3da2](https://github.com/nervosnetwork/ckb-sdk-swift/commit/e0f3da2))


# [v0.8.0](https://github.com/nervosnetwork/ckb-sdk-swift/compare/v0.7.0...v0.8.0) (2019-04-08)


### Features

* Update to Swift 5 ([6b07458](https://github.com/nervosnetwork/ckb-sdk-swift/commit/6b07458))
* Make more interfaces/properties public


### BREAKING CHANGES

* The SDK requires Xcode 10.2 and Swift 5 to build


# [v0.7.0](https://github.com/nervosnetwork/ckb-sdk-swift/compare/v0.6.0...v0.7.0) (2019-03-25)


### Bug Fixes

* test bundle damaged issue ([970aefe](https://github.com/nervosnetwork/ckb-sdk-swift/commit/970aefe))


### Features

* add SPM support
* add tests for compressed/umcopressed public key computing ([89f2f42](https://github.com/nervosnetwork/ckb-sdk-swift/commit/89f2f42))
* replace secp256k1_swift with secp256k1.swift and implement Secp256k1.privateToPublic ([f1911b8](https://github.com/nervosnetwork/ckb-sdk-swift/commit/f1911b8))
* **lint:** use SwiftLint installed via CocoaPods ([3f06d86](https://github.com/nervosnetwork/ckb-sdk-swift/commit/3f06d86))
* **rpc:** implement local_node_info RPC method ([7c05644](https://github.com/nervosnetwork/ckb-sdk-swift/commit/7c05644))
* **rpc:** implement trace rpc trace_transaction and get_transaction_trace ([744d8b5](https://github.com/nervosnetwork/ckb-sdk-swift/commit/744d8b5))


### BREAKING CHANGES

* Repalce SHA3 with Blake2b.
* Remove bitcoin_unblock.rb.


# [v0.6.0](https://github.com/nervosnetwork/ckb-sdk-swift/compare/v0.5.0...v0.6.0) (2019-02-25)

No changes for v0.6.0.


# [v0.5.0](https://github.com/nervosnetwork/ckb-sdk-swift/compare/v0.5.0...v0.6.0) (2019-02-11)

### Bug Fixes

* type hash changed by bitcoin_unlock.rb update ([188a0fe](https://github.com/nervosnetwork/ckb-sdk-swift/commit/188a0fe))


### Features

* use ckb-ruby-scripts submodule to include ruby scripts ([af6f834](https://github.com/nervosnetwork/ckb-sdk-swift/commit/af6f834))