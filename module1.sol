// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract errorHandling{

    address public owner;
    uint public balance;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner==msg.sender,"Only Owner can access");
        _;
    }

    function deposit(uint _value)external onlyOwner{
        require(_value>0,"Value must be greater than 0");
        balance+=_value;
    }

    function withdraw(uint _value)external onlyOwner{
        assert(_value<=balance);
        balance-=_value;
    }

    function withdraw2(uint _value)external onlyOwner{
        if(_value<=balance){
            balance-=_value;
        }
        else{
            revert("Amount to be withdrawn must be less than or equal to balance of the account");
        }
    }

}
