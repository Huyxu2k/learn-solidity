// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    struct Books{
        uint id;
        string title;
        string author;
    }
    // Books[] books= new Books[](100);
     Books book;

     function setBook() public {
         book = Books(1001, 'Learn Blockchain Part 1', 'KBA');
     }
     function setAnother() public {
           book = Books(1002, 'Learn Blockchain Part 2', 'KBA');
     }
     function show() public  view  returns(uint ,string memory,string memory){
         return (book.id,book.title,book.author);
     }
    
}