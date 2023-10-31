// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract LibraryManagementControl {
    address public owner;
    address public librarian;

    constructor() {
        owner = msg.sender;
    }

}