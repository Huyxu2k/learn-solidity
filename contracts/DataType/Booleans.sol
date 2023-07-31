// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract Storage {
    bool stateValue;

    function store(bool data) public {
        stateValue=data;
    }
    function show() public view returns (bool){
        return stateValue;
    }
}