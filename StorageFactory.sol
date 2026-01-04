// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "./contracts/SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage public simpleStorage;

    function crateSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }

}