// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Example {
    // Static array
    /* with a static array my family wouldn't be able to grow, if someone had a baby i wouldnt be able to update it to store them without re deploying */
    string[3] public staticFamily = ["Zoey", "Mom", "Dad"];

    // Dynamic array
    /* whenever there's a new member of my family i can push their name by calling the function addToFamily */
    myFamily[] public dynamicFamily;

    // mapping name -> number
    mapping(string => uint256) public nameToAge;

    // Array vs Struct
    /* struct is just a word for structure, a structure holds different types of data (uint, string, etc). arrays only hold one type of data so instead of making things more complicated you use structs and push them to arrays */
    struct myFamily {
        string name;
        uint age;
    }

    // Simple function to add to dynamicFamily array
    function addToFamily(string memory _name, uint _age) public {
        dynamicFamily.push(myFamily(_name, _age));
        nameToAge[_name] = _age;
    }

}