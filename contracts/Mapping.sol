// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Mapping {

    mapping(address => uint) Balances;

    function getBalance(address _monAdresse) public view returns(uint) {
        return Balances[_monAdresse];
    }

    receive() external payable {
        Balances[msg.sender] = msg.value;
    }
}