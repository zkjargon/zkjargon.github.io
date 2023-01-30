# Nullifier
> A private value which, once revealed, invalidates (or "nullifies") some associated object.
---

The term "nullifier" is somewhat loosely defined and appears more in system specs than in academic papers. In general it refers to a private value which, once revealed, invalidates some associated object.

## Example: Nullifiers to Prevent Double-Spending
A notorious example system that uses nullifiers is [Tornado Cash](https://tornadocash.sh):
- Users deposit funds into the smart contract and associate a unique, secret nullifier value to their deposit.
- Later one may withdraw from the contract by revealing the nullifier associated with the original deposit. A zero-knowledge proof attests to the fact that the nullifier is associated with one of the contract's deposits but does not reveal which one.
- Upon successful verification of the nullifier and proof, the smart contract allows the withdrawal.  

The smart contract keeps track of all the nullifiers it has seen: if the same nullifier is presented a second time, it must be the case that the funds have already been released and that this user is attempting to cheat by withdrawing more funds than they deposited!