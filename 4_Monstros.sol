// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContratoMonstros {
    struct Monstro {
        string nome;
        uint forca;
        TipoMonstro tipo;
    }

    enum TipoMonstro {
        Normal,
        Raro,
        Especial,
        Bacana
    }

    Monstro[] monstros;


    function criaMonstro(string memory _nome) external {
        Monstro memory novoMonstro;
        novoMonstro.nome = _nome;
        novoMonstro.forca = block.timestamp % 20;

        if(block.timestamp % 4 == 0) {novoMonstro.tipo = TipoMonstro.Normal;}
        else if(block.timestamp % 4 == 1) {novoMonstro.tipo = TipoMonstro.Raro;}
        else if(block.timestamp % 4 == 2) {novoMonstro.tipo = TipoMonstro.Especial;}
        else if(block.timestamp % 4 == 3) {novoMonstro.tipo = TipoMonstro.Bacana;}

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