// SPDX-License-Identifier: MIT
// question 3:- Develop a contract that only allows the deployer (owner) to call a specific function (use modifiers).
pragma solidity ^0.8.0;
contract OwnerOnly{
 address public owner;
 owner = msg.sender;
 }
  modifier onlyOwner() {
  require(msg.sender == owner, "Not the owner");
  _;
  }
  function sensitiveFunction() public onlyOwner {
  //can be called by user or the owner only
  }
  function getOwner() public view returns (address) {
  return owner;
  }
