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
        _;
    }

    modifier isPaused {
        require(paused, "Bank services are paused");
        _;
    }

    modifier notPaused {
        require(!paused, "It is paused");
        _;
    }
    
    //setters
    function pauseContract() public onlyOwner notPaused {
        paused = true;
    }

    function unPauseContract() public onlyOwner isPaused {
        paused = false;
    }

    function depositEther() public isPaused {
       // logic to deposit ether into the contract
    }

    function emergencyWithdrawal() public isPaused {
        // transfer ether out fast before more damage is done
        owner.transfer(address(this).balance);
    }
}