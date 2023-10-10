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

Recupere o endereço de quem está executando ações do contrato através do tipo Addess e do objeto msg.sender;

        address public owner = msg.sender;

Utilize o require para especificar que o código continuará apenas se atender a requisição

        function escreveValor(string memory _nome, uint _valor) public{
                require(msg.sender == owner)
                valorAReceber[_nome] = _valor;
        }

### Aula 6

- A diferença entre o require e o if é que o require não permite a continuidade da execução do código ( transação );
- Memory X Storage
        Enquanto o memory armazena dados temporários, storage preocupa-se com os dados permanentes
        Variáveis de estado são do tipo STORAGE, enquanto varáveis de funções são do tipo memory
- Variáveis que possuem um tamanho fixo ( int, uint, uint256, address, bool) são do tipo VALOR, enquanto as que não possuem tamanho fixo são do tipo REFERÊNCIA 
- O "msg" é o objeto global mais importante. E o método "msg.sender" é o método mais importante dele, pois traz informações de quem chamou o contrato.

### Aula 7 - Struct, Array e Storage

- Struct = Classe

- Para retornar um item da storage ele pode ser clonado em um memory

                function pegaMonstro(uint id) public view returns(string memory, uint){
                        Monstro memory monstro = monstros[id];
                        return (monstro.nome, monstro.forca);
                }

- Para alterar, utilize o storage

                function mudaForca(uint id, uint novaForca) public {
                        Monstro storage monstro = monstros[id];
                        monstro.forca = novaForca;
                }