// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library SafeMath{
    function add(uint a,uint b) internal pure returns (uint){
        uint c= a+b;
        require(c>=a,"Overflow");
        return c;
    }
}
contract UsingLibrary{
        using SafeMath for uint;

        function safeAdd(uint x, uint y) public pure returns(uint){
            return x.add(y);
        }
    }
