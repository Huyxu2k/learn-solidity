// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    mapping(uint => mapping (uint=>string)) public studentsName;

    function setName(uint batchNo,uint rollNo,string memory studentName) public {
        studentsName[batchNo][rollNo]=studentName;
    } 
}