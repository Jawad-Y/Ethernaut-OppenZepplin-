// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Privacy.sol";

contract Level12Solution is Script{

Privacy public privacy = Privacy(0xD35F1996E5930b24F9e9b6e9685881f9Ddc00936);

function run() external
    {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        privacy.unlock(bytes16(0x5473f39a95c0d90f6439344cf58f3b3f));
        console.log("locked =", privacy.locked());

        vm.stopBroadcast();
    }

}
