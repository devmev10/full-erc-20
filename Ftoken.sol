// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Ftoken is ERC20, ERC20Burnable, ERC20Pausable, Ownable {
    constructor() ERC20("FTOKEN", "FTK") {
        _mint(msg.sender, 100000000000000 * (10 ** decimals()));
    }

    function pause() public onlyOwner {
        _pause();
    }
}
