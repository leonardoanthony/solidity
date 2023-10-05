## Aula 01 - Compilação e Introdução a funções

        string public nome;

        function getNome() public view returns(string memory){
            return nome;
        }

        function setNome(string memory _nome) public {
            nome = _nome;
        }