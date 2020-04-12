# Campeonato de Escolas de Samba

## Ferramentas
* [MySQL](https://dev.mysql.com/)
* [Overleaf](https://www.overleaf.com/)
* [LibreOffice](https://www.libreoffice.org/)
* [Dia Diagram Editor](http://dia-installer.de/)

## Conceito
### Análise de requisitos
* Entrevistas a usuários
* Documentação do sistema

### Projeto Conceitual
* Utiliza modelo de dados de alto nı́vel;
* Descreve de maneira concisa as necessidades dos usuários;
* Inclui descrições detalhadas dos tipos de dados, relacionamentos e
restrições;
* Fácil compreensão.

### Mapeamento para o Modelo 
Tradução do esquema conceitual em uma linguagem de alto nı́vel para uma linguagem de implementação.

### Projeto Fı́sico
* Especificação de estruturas internas de armazenamento.
* Especificação das formas de organização de arquivos para BD.

## Projeto

1. Compreender o domı́nio do mundo real que está sendo capturado
2. Especifique-o usando um modelo de projeto de banco de dados
3. Traduzir especificação para o modelo de SGBD
4. Criar esquema usando comandos DBMS (DDL)
5. Carregar dados

## Elicitação de Requisitos

### Demanando do cliente
Campeonato de escolas de samba, deve se analisar o que é necessario a armazenar e manter a integridade do banco de dados. 
Logo, levantar uma ficha de dados necessária para elaborar a elicitação de requisitos.

### Requisitos

#### Sambódromos
Cada sambódromo possui um endereço especı́fico, uma data de inauguração, um conjunto de nomes de fundadores e assim por diante.
Adicionalmente, os sambódromos são divididos em diversos setores, cada qual com caracterı́sticas particulares e consequentemente, preços especı́ficos.
Exemplos de setores incluem arquibancada simples, arquibancada coberta, camarote simples, camarote especial.

#### Campeonatos 
Os campeonatos estaduais são realizados todos os anos nos estados de São Paulo e Rio de Janeiro. 
Cada campeonato divide as escolas em dois grupos: grupo de acesso e grupo especial. 
Os grupos são julgados separadamente e uma escola de samba é eleita campeã de cada grupo.
Para cada campeonato cadastrado no sistema, devem ser armazenadas informações tais como o ano de realização, a data de inı́cio e fim, os jurados, o regulamento, etc;

#### Escolas 
Sobre as escolas deseja-se armazenar informações tais como: nome completo, nome fantasia, cores representativas, endereço da sede, etc.
Além disso, também deseja-se armazenar, para cada campeonato no qual a escola de samba participa, o enredo, a data na qual a escola desfilou, a hora de inı́cio e fim do desfile, quais foram os participantes naquele desfile, além do tempo que o desfile demorou.

#### Jurados
Deseja-se armazenar informações detalhadas sobre seus dados pessoais. 
Deseja-se armazenar também qual a principal atividade do jurado.
Cada jurado participa de um dia de desfiles e julga apenas um quesito para todas as escolas que participaram naquele dia. 
Exemplos de quesitos julgados pelos jurados são: bateria, harmonia e samba enredo.

#### Participante
Para os participantes das escolas, deseja-se armazenar informações detalhadas sobre seus dados pessoais.

#### Espectadores
Deseja-se armazenar informações detalhadas sobre seus dados pessoais. 
Deseja-se armazenar também qual a data que ele foi as sistir ao carnaval, qual o valor do ingresso que ele pagou, em que setor do sambódromo ele ficou.

## Modelo Lógico: Modelo Entidade Relacionamento

Uma representação abstrata comumente é usada estrutura da base de dados. 
A criação de um modelo ER é o primeiro passo no processo de construção de um banco de dados relacional. 
Recursos de antecipação dados e como eles inter-relacionam são codificados em um modelo de ER. 
O modelo ER é então usado para criar um esquema relacional para o banco de dados, que por sua vez é usado para construir o próprio banco de dados.

<p align="center">
    <img src="/image/ER.svg">
    Figura 1:  Modelo Entidade Relacionamento 
</p>

## Normalização e Mapeamento

Normalização é um processo a partir do qual se aplicam regras a todas as
tabelas do banco de dados com o objetivo de evitar falhas no projeto, como
redundância de dados e mistura de diferentes assuntos numa mesma tabela.

<p align="center">
    <img src="/image/mape.png">
    Figura 2: Mapeamento 
</p>

## Modelo Relacional

<p align="center">
    <img src="/image/diagram.png">
    Figura 3: Modelo Relacional
</p>

## Banco de Dados: MySQL

### Exemplo de perguntas sanadas pelo banco de dados
* Ordem de desfile em um campeonato X (X é um parâmetro do usuário)

<p align="center">
    <img src="/image/paradeOrde.png"> <br>
    Figura 4: Ordem de desfile
</p>

<p align="center">
    <img src="/image/resultadoOrdemDesfile.png"> <br>
    Figura 5: Resposta: Ordem de desfile
</p>

* Listar o nome de todas as pessoas que assistiram ao campeonato X no setor Y (X e Y são um parâmetro do usuário).

<p align="center">
    <img src="/image/championPeople.png"> <br>
    Figura 6: Assistiram ao campeonato
</p>

<p align="center">
    <img src="/image/resultadoPessoasAssitem.png"> <br>
    Figura 7: Resposta: Assistiram ao campeonato
</p>

* Duração de desfile de um campeonato

<p align="center"> 
    <img src="/image/paradeTime.png"> <br>
    Figura 8: Duração de desfile de um campeonato
</p>

<p align="center">
    <img src="/image/resultadoTempo.png"> <br>
    Figura 9: Resposta: Duração de desfile de um campeonato 
</p>

* Capacidade dos Sambódromo

<p align="center">
    <img src="/image/capacity.png"> <br>
    Figura 10 Capacidade dos Sambódromo 
</p>

<p align="center">
    <img src="/image/resultadoCapacidade.png"> <br>
    Figura 11: Resposta: Capacidade dos Sambódromo
</p>

## Referências

ELMASRI, Ramez et al. Sistemas de banco de dados. 2005.
