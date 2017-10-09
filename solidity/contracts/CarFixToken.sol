pragma solidity ^0.4.0;

import "zeppelin-solidity/contracts/token/MintableToken.sol";

contract CarFixToken is MintableToken {

  string public constant name = "CarFix Token";
  string public constant symbol = "SAUFRA";
  uint8 public constant decimals = 18;
}
