// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    modifier yesItIs(int _value){
        if(_value<5) revert("Input not greate than five");
        _;
    }
    function isItGreaterThanFive(int value) public pure yesItIs(value) returns (bool){
        return true;
    }
}