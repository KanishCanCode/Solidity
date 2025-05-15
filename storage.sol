// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract Storage {

    uint256 number;
    function store(uint256 num) public {
        number = num;
    }
    function retrieve() public view returns (uint256){
        return number;
    }
    address owner;
    function StoreADDR(address addre) external{
        owner =addre;
    }
    function viewADDR() external view returns(address){
        return owner;
    }
    bool a;
    function storeBool(bool c) public {
        a = c;
    }
    function retrieveBool() public view returns (bool){
        return a;
    }

}
