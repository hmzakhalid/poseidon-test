// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {PoseidonT3} from "poseidon-solidity/PoseidonT3.sol";

contract TestPoseidon {

    function combine(uint input0, uint input1) public pure returns (uint) {
        uint out = PoseidonT3.hash([input0, input1]);
        return out;
    }
}
