// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicArray{
    uint[] public nums;
    function addNumber(uint num) public{
        nums.push(num);
    }
    function removeLast() public{
        nums.pop();
    }
}