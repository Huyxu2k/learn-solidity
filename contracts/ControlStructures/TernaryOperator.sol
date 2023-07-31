// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    function Max(uint a,uint b) public pure returns (uint max){
        max=(a>b)? a:b;
    }
}