pragma solidity ^0.4.21;

contract Test01 {
    
    uint public age;
    string public name;
    bool public adult;
    bytes8 public code;

    function setInfo(uint _age, string _name, bool _adult, bytes8 _code) public {
        name = _name;
        age = _age;
        adult = _adult;
        code = _code;
    }
    
}