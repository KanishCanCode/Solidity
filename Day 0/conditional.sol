// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Conditional{
    function isEven(uint num) public pure returns (bool){
        if(num%2==0){
            return true;
        }
        else{
            return false;
        }
    }
}