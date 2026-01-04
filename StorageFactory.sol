// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfStorageContracts;

    function crateSimpleStorageContract() public {
        SimpleStorage newSimpleStorageConctrct = new SimpleStorage();
        listOfStorageContracts.push(newSimpleStorageConctrct);
    }

    function sfStore(uint256 index,uint256 _favNumber) public {
        SimpleStorage contractX = listOfStorageContracts[index];
        contractX.store(_favNumber);
    }

}