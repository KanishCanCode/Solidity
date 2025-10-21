// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorH{
    function check(uint num) public pure{
        require(num>0,"must be positive");
        assert(num!=42);
        if(num==100) revert("too buuug");
    }
}