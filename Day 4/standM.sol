// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StorageVsMemory{
uint[] public array = [1,2,3];

function modifyArray(uint index,uint value) public{
    uint[] storage ref =array;
    ref[index]=value;
}

function noModifyArray(uint index,uint value) public view returns(uint[] memory){
    uint[] memory copy =array;
    copy[index]=value;
    return copy;
}
function viewArray() public view returns(uint[] memory){
    return array;
}
}