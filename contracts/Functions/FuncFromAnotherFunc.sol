// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage {
    uint256 number;

    function store(uint256 num) public {
        number=num;
    }
    function callStore() public {
        store(1001);
    }
    function callStoreAnother()public  {
        store({num:1001});
    }
    function show() public view returns (uint256){
        return number;
    }
}