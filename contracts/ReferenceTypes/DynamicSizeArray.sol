// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint[] public numbers=[1,2,3];

    function insert(uint x) public {
        numbers.push(x);
    }
    function remove() public {
        numbers.pop();
    }

    function countLength() public  view returns (uint){
        return numbers.length;
    }
    function showArray() public  view returns (uint[] memory){
        return numbers;
    }
 }