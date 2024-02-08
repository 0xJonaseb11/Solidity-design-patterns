# About

This pattern is used for the creation of child contract from a parent that acts as a factory. The factory contract has an array of address where all the child contracts created are stored. This pattern is very common in Solidity.

## Functionality

 _The code above is used for the creation of oToken. The contract OTokenFactory is deployed and it is used to create new child OToken contract. When the function createNewOToken is called, parameters that is used for creating a new OToken is passed to it._

The function uses the new keyword to spawn a new instance of OToken contract. The result of this line below :

``` sh
address otoken = address (new OToken(_asset, _collateral, _expiry,
_strikePrice));
otokenAddress.push(otoken);
```

Is an address, that is stored in an array of addresses that depicts the address of the new created OToken contract.

### When to use

_- You need a new contract for each request._
