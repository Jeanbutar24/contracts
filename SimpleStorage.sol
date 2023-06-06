// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; 

// EVM, Ethereum Virtual Machine
// Avalanche, Fantom, Polygon

contract SimpleContract {
    // bool, uint(always positif) , int(possible to be positive or negative),address(address wallet crypto),bytest

    // bool hasFavoriteNumber = false;
    // uint256 favoriteNumber = 9;
    // string favoriteNumberInText = "five";
    // int256 favoriteInt = -5;
    // address myAddress = 0x8A4cF9c6d8aE0Bc342cd3B5221AD70Fd7FdcCBCB; 

    // function
    uint256 public favoriteNumber; // initialize variable uint
    function store(uint256 _favoriteNumber) public {
        favoriteNumber =_favoriteNumber;   
    }   
    People public person = People({
        favoriteNumber:3,
        name:'jean'
    });


    struct People {
        uint256 favoriteNumber;
        string name;
    }
    People[] public people;
 


    function retrieve()public view returns(uint256) {
    return favoriteNumber;
    }

    // mapping(uint256 => string) public myMapping;

    // function setValue(uint256 key, string memory value) public {
    //     myMapping[key] = value;
    // }
    mapping (string => uint256) public nameToFavoriteNumber;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // People memory newPerson  = People({favoriteNumber:_favoriteNumber, name:_name});
        people.push(People({favoriteNumber:_favoriteNumber, name:_name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}