// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    function FindMax(uint a,uint b ,uint c) public  pure returns (uint max){
        if(a>b &&a >c){
            max=a;
        }else if( b>c){
            max=b;
        }
        else{
            max=c;
        }
    }
} 