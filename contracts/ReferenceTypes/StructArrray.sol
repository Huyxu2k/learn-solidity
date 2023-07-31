// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
   
    uint id;
    mapping (string=>uint) public nameToID;
    struct Student{
        uint id;
        string name;
    }
    Student[] public students;
    function store(uint _id) public {
       id=_id; 
    }
    function show_student() public  view returns (Student[] memory){
       return students;
    }
    function add(string memory _name,uint _id) public {
        students.push(Student(_id,_name));
        nameToID[_name]=_id;
    }


}