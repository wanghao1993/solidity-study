// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Isaac {
    address private owner;
    mapping(address => uint256) private balances;
    uint256 public totalSupply;
    constructor() {
        owner = msg.sender;
    }

    function mint(address recipient, uint256 amount) public {
        require(msg.sender == owner, "Only owner can mint");
        balances[recipient] += amount;
        totalSupply += amount;
    }

    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }

    function transfer(address recipient, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }
}
