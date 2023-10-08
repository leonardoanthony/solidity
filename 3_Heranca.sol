// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Heranca {

    mapping(string => uint) private valorAReceber;


    function escreveValor(string memory _nome, uint _valor) public{
        valorAReceber[_nome] = _valor;
    }

    function recuperaValor(string memory _nome) public view returns(uint){
        return valorAReceber[_nome];
    }

}