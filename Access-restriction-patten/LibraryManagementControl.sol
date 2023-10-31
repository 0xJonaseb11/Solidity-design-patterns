// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract LibraryManagementControl {
    address public owner;
    address public librarian;

    constructor() {
        owner = msg.sender;
    }

    function appointLibrarian(address _libAddress) public onlyOwner {
        librarian = _libAddress;
    }

    modifier onlyLibrarian {
        require(msg.sender == librarian);
        _;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    modifier authorised {
        require(msg.sender == owner || msg.sender == librarian);
        _;
    }

    function setUpLibrary() public onlyLibrarian {
        //code to setup a library
    }

}