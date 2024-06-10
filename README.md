# Overview
SimpleSavings is a simple Ethereum smart contract that allows users to deposit, check balance, and withdraw funds.
# Features
1. deposit()
The deposit() function allows users to deposit Ether into the contract. This function is marked as payable, meaning it can receive Ether. It includes a require statement to ensure that the deposit amount is greater than zero. Upon successful deposit, the totalBalance of the contract is increased by the deposited amount. The function also asserts that the totalBalance is non-negative after the deposit.

2. checkBalance()
The checkBalance() function allows users to view the total balance of the contract. This function is marked as view, indicating that it does not modify the state of the contract. It simply returns the current totalBalance as an unsigned integer (uint).

3. withdraw(uint amount)
The withdraw(uint amount) function enables users to withdraw a specified amount of Ether from the contract. It takes one parameter, amount, which represents the amount to be withdrawn. The function includes several require statements: it ensures that the withdrawal amount does not exceed the totalBalance and that the amount is greater than zero. Additionally, it checks if the contract's balance is sufficient to cover the withdrawal. Upon successful withdrawal, the totalBalance is decreased by the specified amount, and the amount is transferred to the caller. The function asserts that the totalBalance is non-negative after the withdrawal.
