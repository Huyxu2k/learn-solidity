// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Base contract X
contract X {
    string public name;

    constructor(string memory _name) {
        name=_name;
    }
}
//Base contract Y
contract Y {
    string public  text;
    constructor(string memory _text) {
        text=_text;
    }
}
contract A is X("Input to X"),Y("Input to Y") {
    
}
contract B is X,Y {
    constructor(string memory _name,string memory _text)X(_name) Y(_name){}
}

contract C is X,Y {
    constructor()X("X was called")Y("Y was Called"){
    }
}

contract D is X,Y{
    constructor()Y("Y was called")X("X was Called") {
    }
}