// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }
    
}