// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract Ftoken is ERC20 {
    constructor() ERC20("FTOKEN", "FTK") {
        _mint(msg.sender, 100000000000000000000000000000000);
    }
}
