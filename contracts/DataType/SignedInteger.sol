// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Storage {
    int number;

    function storePostive() public {
        number=1234;
    }
    function storeNegative() public {
        number=-1234;
    }
    function show()public  view returns (int256){
        return number;
    }
}