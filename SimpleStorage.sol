// SPDX-License-Identifier: MIT
pragma solidity 0.8.31; //Compiler version

contract SimpleStorage {
    //initialized to 0
    uint256 myNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    //Function name will displayed on "Deployed Contracts"
    function store(uint256 _favoriteNumber) public{
        myNumber = _favoriteNumber;
    }

    //view, pure
    function retrieve() public view returns(uint256){
        return myNumber;
    }

    //add list of favorite number
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        listOfPeople.push(Person(_favoriteNumber, _name));
    }
}