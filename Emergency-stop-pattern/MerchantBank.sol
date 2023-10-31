// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MerchantBank {
    address payable public owner;
    bool paused = false;

    constructor () {
        owner = payable(msg.sender);
    }

    modifier onlyOwner {
        require(msg.sender == owner);
    }
}