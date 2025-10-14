// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventEx{
    event MessageSent(string message);
    string public lastMessage;

    function sendMessage(string memory msg) public{
        lastMessage=msg;
        emit MessageSent(msg);
    }
    function viewMessage() public view returns (string memory){
        return lastMessage;
    }
}