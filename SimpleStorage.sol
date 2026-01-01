// SPDX-License-Identifier: MIT
pragma solidity 0.8.31; //Compiler version

contract SimpleStorage {
    //initialized to 0
    uint256 favoriteNumber;

    //Function name will displayed on "Deployed Contracts"
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    //view, pure
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
}