// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Vault.sol";

contract Level8Solution is Script
{

Vault public vault = Vault(0x19bE8C67Fe42ee86E08e57300aCCE52C4c2a9642);

function run() external
    {
       
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        
       //console.log("is locked?", vault.locked()); 
       vault.unlock(0x412076657279207374726f6e67207365637265742070617373776f7264203a29);
       //console.log("is locked?", vault.locked());

        vm.stopBroadcast();
    }

}

