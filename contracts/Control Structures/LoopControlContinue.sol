// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    function FindSum() public pure returns (uint256 sum) {
        for (uint256 i = 1; i <= 5; i++) {
            if (i == 1) {
                continue;
            }
            sum=sum+i;
        }
    }
}
