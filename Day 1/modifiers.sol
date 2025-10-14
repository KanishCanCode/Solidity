// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModifeireEx{
    address public owner = msg.sender;

    modifier onlyOwner(){
        require(msg.sender==owner,"Not owner");
        _;
    }
    function restricted() public onlyOwner{
        //code
    }
}