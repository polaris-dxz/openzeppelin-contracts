// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Lemonade is ERC1155, Ownable {
    uint256 public LEMONADE = 0;
    constructor() ERC1155("") {
        _mint(msg.sender, LEMONADE, 12, "");
    }

    function mint(address account, uint256 tokenID, uint256 supply) public onlyOwner {
        _mint(account, tokenID, supply, "");
    }

    function burn(address account, uint256 tokenID, uint256 amount) public onlyOwner {
        _burn(account, tokenID, amount);
    }
}

