// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";

contract Ftoken is ERC20, ERC20Burnable {
    constructor() ERC20("FTOKEN", "FTK") {
        _mint(msg.sender, 10000000000000 * (10 ** decimals()));
    }
}
