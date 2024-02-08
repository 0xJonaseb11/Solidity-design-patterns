
# About

 This pattern incorporates the ability to pause all functions execution in the contract in the case of something going wrong. Since contracts are immutable once deployed; if there are bugs in the contract the `pause` functionality can be activated to prevent further damage caused.

The emergency pause functionality should be in the control of the owner or an authorised address. The `Emergency stop pattern` should be avoided at all means as it is against the spirit of decentralisation but in those instance where a centralized control is required, it could be a worthy pattern to incorporate in your contract.

## Functionality

_Our sample code has a contract called `MerchantBank` which the owner of the contract is the person that it deploys it. Access modifiers are used to restrict access. The contract has a function called `depositEther` which can only be called when the function is not in a paused state. The pause state can be activated by the contract owner and when the contract is paused userd can no longer deposit ether._

_The contract also has an `emergencyWithdrawal` function that can be triggered by the owner if the contract is paused as a result of bugs in the code and the ether in the contract can safely be transferred elsewhere_

## When to use

- _You want the ability to pause the contract as a result of unwanted situation_
- _In cas of failure, you want the ability to stop state corruption_
- _You are a centralized entity_
