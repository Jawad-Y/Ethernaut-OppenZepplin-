// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/GatekeeperOne.sol";

contract Level13Solution is Script{

GatekeeperOne public one = GatekeeperOne();

function run() external
    {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        

        vm.stopBroadcast();
    }

}
