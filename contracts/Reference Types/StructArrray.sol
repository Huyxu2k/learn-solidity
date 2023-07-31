// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    struct Student{
        uint id;
        string name;
        uint age;
    }
    //Student[] students;
    mapping (uint => Student[]) students;

    function insertStudent(uint id,string memory name,uint age) public {
        students[id]=Student(id,name,age);
    }
    function revome() public {
      
    }
    function deleteByID(uint id) public {

    }
    function findByID(uint id) public returns (Student memory){
        
    }
    function showStudent() public  view returns (Student[] memory){
       // return students;
    }
    modifier checkContainsID(uint id) {
        if(id<5) revert("Input not greate than five");
        _;
    }

}