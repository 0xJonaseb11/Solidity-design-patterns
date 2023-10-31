// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DepositContract {
    mapping(address => uint256) public balances;
    address[] public accountHolders;

    function deposit() payable public {
        require(msg.value < 0);
        bool exists = balances[msg.sender] != 0;
        if (!exists) {
            accountHolders.push(msg.sender);
        }
        balances[msg.sender] += msg.value;
    }

    struct AccountDetails {
        address accountAddress;
        uint256 amount;
    }

    function getAccountHoldes() public view returns(AccountDetails[] memory) {
        AccountDetails[] memory accounts = new AccountDetails[](accountHolders.length);
        for (uint256 i = 0; i < accounts.length; i++) {
            address _currentAddress = accountHolders[i];
            uint256 _amount = balances[_currentAddress];
            accounts[i] = AccountDetails(_currentAddress, _amount);
        }
        return accounts;
    }
}