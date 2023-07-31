// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    struct Book{
     uint id;
     string title;
     string author;
    }
    mapping (uint=>Book) books;
    uint bookcount=0;

    function setBook() public {
        books[bookcount]=Book(1001, 'Learn Blockchain Part 1', 'KBA');
        bookcount+=1;
    }
    function setBookAnother() public {
          books[bookcount].id = 1002;
        books[bookcount].title = 'Learn Blockchain Part 2';
        books[bookcount].author = 'KBA';
        bookcount += 1;
    }
    function getBook() public  view  returns (uint,string memory,string memory){
        return (books[1].id,books[1].title,books[1].author);
    }
}