// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructEx{
struct Person{
    string name;
    uint age;
}
Person public alice = Person("Alice",30);
}