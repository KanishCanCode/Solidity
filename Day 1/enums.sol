// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnumEx{
    enum Status {Pending,Approved , Rejected}
    Status public currentStatus = Status.Pending;

    function approve() public {
        currentStatus=Status.Approved;
    }
}