// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage {
    bytes32 msgValue="Hello Byte";

    function show() public view  returns (bytes32){
        return msgValue;
    }
    function setValue(string memory data) public {
        msgValue= bytes32(abi.encodePacked(data));
    }
}