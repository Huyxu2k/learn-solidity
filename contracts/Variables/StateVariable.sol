// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage {
    bytes32 msgValue;

    function store() public  {
        msgValue="Hello Byte";
    }
}