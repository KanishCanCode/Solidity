

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PayableEX{
    // Simple ether bank
    address public owner;
    event Deposited(address indexed sender ,uint amount);
    event Withdrawn(address indexed receipnt , uint amount);
    constructor(){
        owner=msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender==owner,"Only the owner can call this function");
        _;

    }

    function deposit() public payable {
        require(msg.value>0,"You must send some ETH");
        emit Deposited(msg.sender, msg.value);
    }

    function getBalance() public view returns (uint){
        return address(this).balance;
    }

    function withdraw(address payable recipient) public onlyOwner{
        uint amount = address(this).balance;
        require(amount>0,"No ether to withdraw");
        recipient.transfer(amount);
        emit Withdrawn(recipient, amount);
    }
}