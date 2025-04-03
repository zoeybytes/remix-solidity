// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
/* 1. 📕 Define the difference between a _dynamic_ array and a _static_ array. Make an example of each.
2. 📕 What is an _array_ and what is a _struct_?
3. 🧑‍💻 Create a smart contract that can store and view a list of animals. Add manually three (3) animals and give the possibility to the user to manually add an indefinite number of animals into the smart contract.
I still need to complete this^ https://github.com/Cyfrin/foundry-full-course-cu?tab=readme-ov-file#basic-solidity-arrays--structs
*/

contract SimpleStorage {

    struct Person {
        uint256 favourite_number;
        string name;
    }

    Person[] public listOfPeople;

    function add_person(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }
    
}