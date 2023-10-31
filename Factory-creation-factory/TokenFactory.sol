// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract OTokenFactory {
    address[] public otokenAddress;

    function createNewOToken(address _asset, address _collateral, address _strikePrice, uint256 _expiry) 
     public returns(address) {
        address otoken = address (new OToken(_asset, _collateral, _expiry, _strikePrice));
        otokenAddress.push(otoken);
        return otoken;

    } 
}

