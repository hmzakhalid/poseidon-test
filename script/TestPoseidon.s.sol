// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {TestPoseidon} from "../src/TestPoseidon.sol";

contract TestPoseidonScript is Script {
    TestPoseidon public testPoseidon;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        testPoseidon = new TestPoseidon();
        uint result = testPoseidon.combine(0, 0);
        console.logUint(result);

        vm.stopBroadcast();
    }
}
