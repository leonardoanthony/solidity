Para definir uma variável é preciso especificar o tipo, visibilidade e nome da variável

        string public nome;

Ao definir funções, é necessário tipar os parametros

        function setNome(string memory _nome) public {
            nome = _nome;
        }

É possível informar se ela terá um retorno visível (através do atributo 'view'), assim como também é necessário tipar o retorno

        function getNome() public view returns(string memory){
            return nome;
        }

        