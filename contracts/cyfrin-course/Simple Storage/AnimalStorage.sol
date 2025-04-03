// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract AnimalStorage {

    string[3] public myAnimals = ["moose", "bear", "koala"];

    struct Animal {
        string name;
    }

    Animal[] public listOfAnimals;

    function addAnimal(string memory _name) public {
        listOfAnimals.push(Animal(_name));
    }


}