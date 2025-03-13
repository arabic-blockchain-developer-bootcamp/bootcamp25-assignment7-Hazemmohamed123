// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Assignment7} from "../src/Assignment7.sol";

contract Assignment7Test is Test {
    Assignment7 assignment;

    function setUp() public {
        // Pass your token name and symbol here during contract creation
        assignment = new Assignment7("Test Token", "TST");
    }

    function testMintAndTransfer() public {
        // Mint 1000 tokens (with 18 decimals) to this test contract
        assignment.mint(address(this), 1000 * 10**18);

        // Check the balance of the test contract
        uint256 balance = assignment.balanceOf(address(this));
        assertEq(balance, 1000 * 10**18, "Balance should be 1000 tokens");

        // Transfer tokens to another address and verify the balances
        address recipient = address(0x123);
        assignment.transfer(recipient, 500 * 10**18);
        
        // Check balances after transfer
        assertEq(assignment.balanceOf(recipient), 500 * 10**18, "Recipient should have 500 tokens");
        assertEq(assignment.balanceOf(address(this)), 500 * 10**18, "Test contract should have 500 tokens");
    }
}

