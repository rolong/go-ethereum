pragma solidity ^0.4.21;

contract Test02 {
    
    uint public constant cons01 = 1;
    uint public constant cons02 = 2;

    uint256 public u1;  // 0
    uint8 public u2;    // 1
    uint256 public u3;  // 2
    uint64 public u4;   // 3
    uint256 public u5;  // 4

    //index : 0x0000000000000000000000000000000000000000000000000000000000000005
    //value : 0x0000000000000009000000000000000800000000000000070000000000000006
    uint64 public u6;   // 5
    uint64 public u7;   // 5
    uint64 public u8;   // 5
    uint64 public u9;   // 5


    constructor() public {
        u1 = 1;
        u2 = 2;
        u3 = 3;
        u4 = 4;
        u5 = 5;
        u6 = 6;
        u7 = 7;
        u8 = 8;
        u9 = 9;
    }
    
}