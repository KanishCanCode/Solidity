// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20{
    function totalSupply() external view returns (uint);
}

contract MTT is IERC20{
    function totalSupply() external view returns(uint){
        return 1092084;
    }
}