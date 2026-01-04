// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import { SimpleStorage } from "./SimpleStorage.sol";

//Inheritance
contract AddFiveNumber is SimpleStorage {
    function store(uint256 _number) override public {
        myNumber = _number + 5;
    }
}