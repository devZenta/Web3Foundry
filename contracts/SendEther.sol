// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract SendEther {

    address lastPerson;
    uint balance;

    function getLastPerson() public view returns (address) {
        return lastPerson;
    }

    function getBalance() public view returns (uint) {
        return balance;
    }

    receive() external payable {
        lastPerson = msg.sender;
        balance = balance + msg.value;
    }
}