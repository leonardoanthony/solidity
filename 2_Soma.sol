// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Soma {
    
    uint private x;
    uint public y;

    function setXY(uint _x, uint _y) public{
        x = _x;
        y = _y;
    }

    function soma() public view returns(uint){
        return x + y;
    }

}