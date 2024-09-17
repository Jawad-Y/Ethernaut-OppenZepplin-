// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/NaughtCoin.sol";


contract Level15Solution is Script{

NaughtCoin public naughtCoin = NaughtCoin(0x0c84ee819bf8690CC580F0459337c858E6B58c3b);

function run() external
    {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        

        vm.stopBroadcast();
    }

}
