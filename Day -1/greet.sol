// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Greet {
    address public immutable owner;
    string private _greeting;

    event GreetingUpdated(string newGreeting);
    constructor(string memory initialGreeting) {
        owner = msg.sender;
        _greeting = initialGreeting;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "caller is not the owner");
        _;
    }
    
    function greet() external view returns (string memory) {
        return _greeting;
    }

    
    function setGreeting(string memory newGreeting) external onlyOwner {
        _greeting = newGreeting;
        emit GreetingUpdated(newGreeting);
    }
}