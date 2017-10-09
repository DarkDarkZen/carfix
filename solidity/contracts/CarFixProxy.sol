pragma solidity ^0.4.0;

import 'zeppelin-solidity/contracts/lifecycle/Pausable.sol';

contract CarFixProxy is Pausable  {
    address public icoContractAddress;

    function CarFixProxy(address adr) public {
        icoContractAddress = adr;
    }

    function update(address newAdr) whenPaused onlyOwner public {
        icoContractAddress = newAdr;
    }

    function() public {
        if (!icoContractAddress.delegatecall(msg.data)) revert();
    }

    function destroy() onlyOwner whenPaused public {
        selfdestruct(owner);
    }

    function destroyAndSend(address _recipient) onlyOwner whenPaused public {
        selfdestruct(_recipient);
    }
}
