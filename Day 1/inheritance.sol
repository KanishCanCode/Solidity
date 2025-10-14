// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Base{
    uint public baseVar=230;

}

contract derived is Base{
    function getBaseVar() public view returns (uint){
        return baseVar;
    }
}