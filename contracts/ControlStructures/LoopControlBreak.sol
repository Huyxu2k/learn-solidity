// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    function sum()  public  pure returns (uint sum){

        for (uint i=1; i<=5; i++) 
        {
            if(i==5){
                break ;
            }

            sum=sum+i;
        }
    } 
}
