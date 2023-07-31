// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract  Storage {
    uint256 result;

    function add(uint256 number1,uint256 number2) public {
       result=number1+number2;
    }
    function getResult() public  view returns (uint256) {
        return result;
    }
}