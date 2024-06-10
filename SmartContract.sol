// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
contract SimpleSavings {
    uint public totalBalance;
    function deposit() public payable {
        require(msg.value > 0, "Deposit must be greater than zero");
        totalBalance += msg.value;
        assert(totalBalance >= msg.value);
    }
    function checkBalance() public view returns (uint) {
        return totalBalance;
    }
    function withdraw(uint amount) public {
        require(amount <= totalBalance, "Insufficient balance");
        require(amount > 0, "Withdrawal amount must be greater than zero");
        if (address(this).balance < amount) {
            revert("Not enough balance in contract");
        }
        totalBalance -= amount;
        payable(msg.sender).transfer(amount);
        assert(totalBalance >= 0);
    }
}
