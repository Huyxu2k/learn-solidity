// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract MyContract {
    //byte[] b= new byte[](7);
     bytes  b = new bytes(7);

    function test(uint len) public {
        b=new bytes(len);

        string memory st= new string (len);
        bytes memory by= new bytes(len);
    }
}