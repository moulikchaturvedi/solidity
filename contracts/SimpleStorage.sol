// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SimpleStorage {

    // struct People {
    //     uint256 favoriteNumber;
    //     string name;
    // }
    // People[] public people;

    mapping(string => uint256) public nametoFavNumber;

    // calldata, memory, storage

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        // People memory newPerson = People(_favoriteNumber, _name);
        // people.push(newPerson);
        // people.push(People(_favoriteNumber, _name));
        nametoFavNumber[_name] = _favoriteNumber;
    }

    // boolean, uint, int, address, bytes
    // uint256 favoriteNumber;
    // People public person = People({favoriteNumber: 2, name: "Moulik"});

    // function store(uint256 _favoriteNumber) public {
    //     favoriteNumber = _favoriteNumber;
    // }

    // function retrieve() public view returns(uint256){
    //     return favoriteNumber;
    // }
}