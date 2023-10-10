// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContratoMonstros {
    struct Monstro {
        string nome;
        uint forca;
    }

    Monstro[] monstros;


    function criaMonstro(string memory _nome, uint _forca) external {
        Monstro memory novoMonstro;
        novoMonstro.nome = _nome;
        novoMonstro.forca = _forca;
        monstros.push(novoMonstro);
    }

    function pegaMonstro(uint id) public view returns(string memory, uint){
        Monstro memory monstro = monstros[id];
        return (monstro.nome, monstro.forca);
    }

    function mudaForca(uint id, uint novaForca) public {
        Monstro storage monstro = monstros[id];
        monstro.forca = novaForca;
    }
}