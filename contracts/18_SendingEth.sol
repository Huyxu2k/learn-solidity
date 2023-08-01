// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReceiveEther {
    receive() external payable {}

    fallback() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract SendEther {
    function sendViaTransfer(address payable to) public payable {
        to.transfer(msg.value);
    }
    function sendViaSend( address payable to) public payable {
        bool sent=to.send(msg.value);
        require(sent,"Failed to send Eth");
    }
    function senViaCall(address payable to) public  payable {
        (bool sent ,bytes memory data)=to.call{value:msg.value}("");
        require(sent,"Failed to send Eth");
    }
}