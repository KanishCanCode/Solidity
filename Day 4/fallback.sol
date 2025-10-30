// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FallbackExample{
    event CalledFallback();

    fallback() external { 
        emit CalledFallback();
    }
}