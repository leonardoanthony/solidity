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

o Tipo de dado mapping é semelhante a um objeto javascript, mas onde tambem precisam ser tipados os valores das chaves;

        mapping(string => uint) valorAReceber

A interação com este tipo de dado, é ainda mais semelhante

        function escreveValor(string memory _nome, uint _valor) public{
                valorAReceber[_nome] = _valor;
            }

        function recuperaValor(string memory _nome) public view returns(uint){
            return valorAReceber[_nome];
        }

Existem 4 niveis de visibilidade: Internal, External, Private, Public;