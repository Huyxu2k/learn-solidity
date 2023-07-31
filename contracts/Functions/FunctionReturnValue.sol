// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage {
    uint256 number;

    function store(uint256 num) public {
        number=num;
    }
    function show() public view returns (uint256){
        return  number;
    }
    function showAnother() public  view returns (uint256 _num){
        _num=number;
    }
}