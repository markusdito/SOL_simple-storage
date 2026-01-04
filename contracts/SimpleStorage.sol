// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; //Compiler version

contract SimpleStorage {
    //initialized to 0
    uint256 myNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    //Function name will displayed on "Deployed Contracts"
    function store(uint256 _favoriteNumber) public virtual {
        myNumber = _favoriteNumber;
    }

    //view, pure
    function retrieve() public view returns(uint256){
        return myNumber;
    }

    //add list of favorite number
    //calldata, memory -> temp data | not modified, modified
    // storage -> perm data | not modified
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}