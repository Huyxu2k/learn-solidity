// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage{
    address ad=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    function show() public  view returns(address){
        return ad;
    } 
}