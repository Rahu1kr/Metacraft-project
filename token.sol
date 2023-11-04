// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract mytokens {

    // public variables here
    string public tokenName = "Rahul";
    string public token_abb = "Kumar";
    uint public total_amount = 0;

    // mapping variable here
    mapping(address => uint) public bal;

    // mint function
    function mint(address _addr, uint _val) public {
        total_amount += _val;
        bal[_addr] += _val;
    }

    // burn function
    function burn(address _addr, uint _val) public {
        if(bal[_addr] >= _val) {
            total_amount -= _val;
            bal[_addr] -= _val;
    }
    }
}
