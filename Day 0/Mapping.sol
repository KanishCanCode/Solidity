// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingEx{
    mapping(address=>uint) public balances;

    function setBalance(uint amount) public{
        balances[msg.sender]=amount;
    }
}