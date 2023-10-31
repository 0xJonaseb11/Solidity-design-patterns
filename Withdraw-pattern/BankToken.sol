// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract BankToken {
    address[] internal investors;
    mapping(address => uint256) internal balances;

    //funcn saves an investor address on an array
    function registerInvestor(address _investor) public onlyOwner {
        require(_investor != address(0));
        investors.push(_investor);
    }

    function calculateDevidendAcquired(address _investor) internal returns (uint256) {
        //calculate the devidends
    }

    //bad practice
    function distributeDividends() public onlyOwner {
        for (uint i = 0; i < investors.length; i++) {
            uint amount = calculateDevidendAcquired((investors[i]));

            //amount is what due to the investor
            balances[investors[i]] = 0;
            
             // push ether to address
            investors[i].transfer(amount);
        }
    }

    // Good practice
    function claimDividend() public {
        uint amount = calculateDevidendAcquired(msg.sender);
        require(amount > 0, "No dividends to claim");

        //set the balance to sero to avoid reentrancy
        balances[msg.sender] = 0;
        //pull ether from the contract
        msg.sender.transfer(amount);
    }
}