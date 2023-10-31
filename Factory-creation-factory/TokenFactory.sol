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

contract OToken {
    address public asset;
    address public collateral;
    address public strikePrice;
    uint256 public expiry;

    constructor(address _asset, address _collateral, uint256 _expiry, address _strikePrice) {
        asset = _asset;
        collateral = _collateral;
        strikePrice = _strikePrice;
        expiry = _expiry;
    }
}