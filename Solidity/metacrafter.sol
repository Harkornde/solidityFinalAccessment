// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract CoinToken{
    string public tokenName = "Metcoin";
    string public abbrevToken = "MTC";
    uint256 totalSupply = 0;
    mapping (address => uint) public balance;

    function mintToken(address _address, uint256 _value) public{
        totalSupply += _value;
balance[_address] += _value;
    }

    function burnToken(address _address, uint256 _value) public{
        if (balance[_address] >= _value){
        totalSupply -= _value;
        balance[_address] -= _value;
        }
    }
}