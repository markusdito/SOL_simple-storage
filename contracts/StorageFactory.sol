// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfStorageContracts;

    function crateSimpleStorageContract() public {
        SimpleStorage newSimpleStorageConctrct = new SimpleStorage();
        listOfStorageContracts.push(newSimpleStorageConctrct);
    }

    function sfStore(uint256 _index, uint256 _favNumber) public {
        SimpleStorage contractX = listOfStorageContracts[_index];
        contractX.store(_favNumber);
    }

    function sfGetNumber(uint256 _index) public view returns(uint256) {
        SimpleStorage contractX = listOfStorageContracts[_index];
        return contractX.retrieve();
    }

}