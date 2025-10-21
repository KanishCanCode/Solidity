// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract assemblyEx{
    event Added(uint indexed a,uint indexed b,uint result);
    event Multiplied(uint indexed a,uint indexed b,uint result);

    function addAssembly(uint a ,uint b) public returns (uint){
        require(a<type(uint256).max && b<type(uint256).max-a,"Addition overflow");
    
    uint result;
    assembly{
        result:=add(a,b)
    }  emit Added(a,b,result);
     return result;
     }

    function Mulassembly(uint a ,uint b) public returns (uint){
        require(a==0 || b<=type(uint256).max/a,"Mtultiplication overflow");
    
    uint result;
    assembly{
        result:=mul(a,b)
    }  emit Multiplied(a, b, result);
     return result;
     }
   
}