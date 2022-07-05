// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Unlock {
    address contractAddress = 0x161e06f63a85CD08fC48fC89D913C082D7A71909;

    function pwn() public {
        contractAddress.call(
            abi.encodeWithSignature("unlock(bytes32)", 0xcf309012)
        );
    }
}
