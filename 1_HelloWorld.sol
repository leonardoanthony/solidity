// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {

    string public nome;

    function getNome() public view returns(string memory){
        return nome;
    }

    function setNome(string memory _nome) public {
        nome = _nome;
    }

}