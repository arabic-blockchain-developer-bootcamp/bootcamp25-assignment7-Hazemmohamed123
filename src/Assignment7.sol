// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Assignment7 is ERC20 {
    // Constructor to initialize the token with name and symbol
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

    // Function to mint tokens
    // Make the function external
    function mint(address to, uint256 amount) external {
        _mint(to, amount);  // Use the _mint function from ERC20 to mint tokens
    }
}
