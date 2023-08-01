// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Math{
    function sqrt(uint y) internal pure returns(uint z){
        if(y>3){
            z=y;
            uint x=y/2+1;
            while (x<z) 
            {
                z=x;
                x=(y/x+x)/2;
            }
        }
        else if(y!=0){
            z=1;
        }
    }
}
library Array{
    function remove(uint[] storage arr,uint index) public  {
        require(arr.length>0, "Array is empty");
        //require(index>arr.length-1, "Out of index");
        arr[index]=arr[arr.length-1];
        arr.pop();
    }
    // function removeValue(uint[] storage arr,uint value) public  {
    // }
}