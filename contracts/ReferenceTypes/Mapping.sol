// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract  MyContract{
    struct Books {
       uint id;
       string title;
       string author;
    }

    mapping (uint => Books) books;
    function initBook() public {
        books[1001]=Books(1001,"English","NXB GD");//books[1002]=Books(1002,"Math","NXB GD");
    }
    function setAnotherBook() public {
        books[1002].id=1002;
        books[1002].title="Math";
        books[1002].author="NXB GD";
    }
    // function showBookID() public returns(uint){
        
    // }
    function show() public  view returns(uint,string memory,string memory){
        //return(books[1001].id,books[1001].title,books[1001].author);
        return(books[1002].id,books[1002].title,books[1002].author);
    }
}