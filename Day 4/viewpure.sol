// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract viewsVsPure{
    uint public value=200;
    function readVal() public view returns(uint){
        return value;
    }
    function clculate(uint x) public pure returns(uint){
        return x*5;
    }

}