 // SPDX-License-Identifier: MIT
 pragma solidity  <0.9.0;

 contract Hello{
     string greeting;
     constructor()
     public {
         greeting="Hello World";
     }
     function printGreeting()
     public 
     view 
     returns (string memory){
       return greeting;
     }

     function setGreeting(string memory _greeting)
     public 
     {
         greeting=_greeting;
     }


 }