// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage {
    uint256 square;
    uint256 total;
    uint256 product;

    function FindSquare(uint256 num1) private pure returns(uint256 _total){
        return num1*num1;
    }
    function FindTotalLandProduct(uint256 num1, uint256 num2) private pure returns (uint256 _total,uint256 _product){
        return  (num1+num2,num1*num2);
    }
    function StoreValues(uint256 num1,uint256 num2) public {
        square=FindSquare(num1);

        (total,product)=FindTotalLandProduct(num1, num2);
    }
}