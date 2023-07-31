// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint[8] public numbers=[1,2];

    function insert(uint value,uint index) public {
        numbers[index]=value;
    }
    function countLength() public  view returns(uint){
        return  numbers.length;
    }
    // function showArray() public  view returns (uint[] memory){
    //     return numbers;
    // }
}