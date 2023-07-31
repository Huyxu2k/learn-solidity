// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Storage {
    function msgSender() public  view returns (address){
        return msg.sender;
    }
    function getTime()public  view returns (uint){
        return block.timestamp;

        //convert to ddMMyyyy hhmmss
        //No complete
    }
}