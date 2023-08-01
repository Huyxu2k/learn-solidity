// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Imutable {
    address public immutable My_Address;
    uint public immutable My_Number;
    address public constant My_Address1 = 0x0000000000000000000000000000000000000000;
    uint public constant My_Number1 = 1112000;

    constructor() {
        My_Address = msg.sender;
        My_Number = 2712000;
    }
}
//Error: immutable can't be modified afterwards.
// contract S is Imutable {
//     constructor() {
//         My_Address = 0x0000000000000000000000000000000000000000;
//         My_Number = 1112000;
//     }
// }
