// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery {
    address public owner;
    address payable[] public players;
    uint public lotteryID;
    mapping(uint => address payable) public lotteryHistory;

    constructor() {
        owner = msg.sender;
        lotteryID = 1;
    }

    function getWinnerByLottery(
        uint lottery
    ) public view returns (address payable) {
        return lotteryHistory[lottery];
    }

    function getPlayers() public view returns (address payable[] memory) {
        return players;
    }

    function enter() public payable {
        require(msg.value > 0.1 ether);
        players.push(payable(msg.sender));
    }

    function getRandomNumber() public view returns (uint) {
        return uint(keccak256(abi.encodePacked(owner, block.timestamp)));
    }

    function pickWinner() public onlyowner{
        uint index = getRandomNumber() % players.length;
        players[index].transfer(address(this).balance);

        lotteryHistory[lotteryID] = players[index];
        lotteryID++;

        players=new address payable[](0);

    }
    modifier onlyowner(){
        require(msg.sender==owner);
        _;
    }
}
