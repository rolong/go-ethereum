pragma solidity ^0.4.21;

contract Test03 {
    
    // index: 0x0000000000000000000000000000000000000000000000000000000000000000
    uint256 public u0;
    
    // index: 0x0000000000000000000000000000000000000000000000000000000000000001
    // Map元素索引值 = Keccak256(元素Key + 属性index)
    mapping (address => uint) public balance;
    
    struct node {
        uint u1; // Map元素索引值 + 0
        uint u2; // Map元素索引值 + 1
        uint u3; // Map元素索引值 + 2
    }
    
    // index: 0x0000000000000000000000000000000000000000000000000000000000000002
    mapping (address => node) public nodes;

    constructor() public {
        balance[address(1)] = 11;
        balance[address(2)] = 12;
        balance[address(3)] = 13;
        
        nodes[address(1)] = node(0x0101, 0x0102, 0x0103);
        nodes[address(2)] = node(0x0201, 0x0202, 0x0203);
        nodes[address(3)] = node(0x0301, 0x0302, 0x0303);
    }

    function getNode(address addr) public returns(uint _u1, uint _u2, uint _u3) 
    {
        _u1 = nodes[addr].u1;
        _u2 = nodes[addr].u2;
        _u3 = nodes[addr].u3;
    }
}
