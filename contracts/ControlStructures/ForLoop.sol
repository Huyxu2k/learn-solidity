// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    function factorial(uint num) public view returns (uint fact){
        uint f=1;

        for (uint i=1; i<=num; i++) 
        {
            f=f*i;
        }
        fact=f;
    }
}