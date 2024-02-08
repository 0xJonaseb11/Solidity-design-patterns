# About

The iterable map pattern allows you to iterate over mapping entries. Solidity mapping provides no way to iterate over them. There are some cases where you will need to iterate over a mapping. This pattern is well situated for such cases.

## Functionality

_In this pattern we added the ability to loop over our data in the mapping data structure. The contract above called DepositContract consists of a mapping that links the address to the amount deposited by each address. Normally without this pattern, we could only pull out the value deposited by supplying the address._

The deposit function that takes care of the amount deposited by the user stores that value in a state variable called `balances`. The function also stores the address of the depositor into an address array called `accountHolders`. The code checks and ensures that only unique address are saved in the accountHolders array.

There is another function called `getAccountHolders` and it's purpose is to display the address and the value owned by each address. The function is a view function which does not require a transaction, thereby saving on gas. We defined a struct that contains an address and a uint256 variables, used for saving the account details.

We created an array of `AccountDetails` struct in memory called `accounts` that will hold each account details. We initialized the value of accounts to the length of the `accountHolders` array (contains unique address of account holders). As we loop through the `accountHolders` array we retrieve the saved address which we plug into the balances mapping to retrieve the amount saved by that address. These value and the address is placed in a `AccountDetails` struct and pushed into the accounts array that holds the array of `AccountDetails`.

**As we can see, this pattern allows us to iterate over all values in a mapping.*

## When to use

_**You need iterable behaviours over Solidity mappings**_

**The items contain in the mappings are not that many.**

**You would want to filter some data out of the mapping and get the result via a view function.**
