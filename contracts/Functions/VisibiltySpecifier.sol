// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{
    uint var1;
    function getValue1() view external returns (uint){
        return var1;
    }

    function callSetValue1(uint _var) public {
        setValue1(_var);
        setValueI(_var);
    }

    function setValue1(uint _var1) private {
        var1=_var1;
    }
    function setValueI(uint _var1) internal {
        var1=_var1;
    }
}