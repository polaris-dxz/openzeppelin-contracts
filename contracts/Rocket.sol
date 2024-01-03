// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract Rocket is ERC20 {
  // @initialSupply 容纳打算用于该令牌的总供应量
  constructor(uint256 initialSupply) ERC20("ROCKET", "ROC") {
    _mint(msg.sender, initialSupply * (10 ** decimals()));
  }
}

