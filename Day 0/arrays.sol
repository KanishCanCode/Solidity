// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Arrays{
    uint[3] public nums=[1,2,3];

    function getLength() public view returns (uint){
        return nums.length;
    }
}