// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {TestPoseidon} from "../src/TestPoseidon.sol";

contract TestPoseidonTest is Test {
    TestPoseidon public testPoseidon;

    function setUp() public {
        testPoseidon = new TestPoseidon();
    }

    function test_Combine() public view {
        uint256 input0 = 123;
        uint256 input1 = 456;
        uint256 result = testPoseidon.combine(input0, input1);
        console.logUint(result);
    }
}
