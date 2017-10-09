pragma solidity ^0.4.0;

import "zeppelin-solidity/contracts/token/StandardToken.sol";

contract CarFixTokens is StandardToken {

  string public name = "CarFix Token";
  string public symbol = "CFT";
  uint public decimals = 8;

  function CarFixTokens() public { }

}
