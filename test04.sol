pragma solidity ^0.4.11;

contract Masternode {

    function register(bytes32 id1, bytes32 id2) public view returns(address)  {
        bytes32[2] memory input;
        bytes32[1] memory output;
        input[0] = id1;
        input[1] = id2;
        assembly {
            if iszero(call(not(0), 0x09, 0, input, 128, output, 32)) {
              revert(0, 0)
            }
        }
        return address(output[0]);
    }
    
}