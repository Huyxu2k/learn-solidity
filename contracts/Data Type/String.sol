// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage {
    string  msgValue;

    function setValue(string memory data) public {
        msgValue=data;
    }
    function getValue() public view returns (string memory) {
       return msgValue;
    }
}