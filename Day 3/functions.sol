// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//function visiblity

contract Example{

uint private secret = 64;

function getSecret() external view returns (uint){
    return secret;
}

function getPublicSecret() public view returns (uint){
    return secret;
}
}