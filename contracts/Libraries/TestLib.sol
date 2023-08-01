import "./Lib.sol";

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TestMath {
    function test(uint256 x) public pure returns (uint256) {
        return Math.sqrt(x);
    }
}

contract TestArray {
    using Array for uint256[];
    uint[] arr;

    constructor() {
      for (uint i=0; i<6; i++) 
      {
          arr.push(i);
      }
    }
    
    function remove(uint _index) public {
         arr.remove(_index);
    }
    function add(uint _value) public {
         arr.push(_value);
    }
    function show()public  view returns (uint[] memory){
       return  arr;
    }
}
