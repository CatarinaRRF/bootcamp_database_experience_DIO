<h1 align="center">
<h1 align="center">
  <br>
  <img src="https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/c242d91a8d454a9e3d0d62169cb8955e1fd6a81e/Desafio-RoutineNuvem/media/banner_RoutineNuvem.png" alt="logo" >
</h1>

<h3 align="center"> Database Experience - 1° Desafio: E-COMMERCE Routine Nuvem</h3>

</p>

<p align="center">
  <a href="#sobre">Sobre</a> •
  <a href="#metodologia">Metodologia e Resultados</a>

## Sobre 
Os diretores de Ecommerce hoje, gastam uma quantia significativa de dinheiro tentando direcionar o tráfego para sua loja online. Com as taxas médias de conversão de comércio eletrônico em torno de 2,86%, os varejistas on-line devem se esforçar muito para gerar leads para aproveitar ao máximo sua estratégia de marketing. Dessa forma, a empresa de departamentos Routine Nuvem deseja criar um banco de dados, a fim de, identificar o perfil de seus clientes a modo de aperfeiçoar a estratégia de marketing da organização.
  
As entidades requeridas pelos stakeholders possuem as seguintes características:



## Metodologia
### <i>Projeto Conceitual</i>
O desafio propõe que seja feito as seguintes etapas:

1. Mapeando um esquema ER para relacional
* Crie o modelo conceitual do banco de dados
* Refine o modelo conceitual para melhora-lo
2. Definição do script SQL para criação do esquema de banco de dados
* Use Create DataBase
* Use Create Table
3. Persistência de dados para testes
* Use Insert into table
* Criar dados para futura análise

4. Recuperação de informações com queries
* Recuperações simples com SELECT Statement
* Filtros com WHERE Statement
* Crie expressoes para gerar atributos derivados
* Defina ordenação dos dados com order by
* Condiçoes de filtros aos grupos - having statment
* Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

Um modelo conceitual é um modelo abstrato que descreve a estrutura de um banco de dados de forma independente do SGBD. Dessa forma, será usado o workbanch do mysql, para criar um diagrama de relações de entidades. Nele será descritos as entidades e seus atributos previamente definidos pelas partes interessadas, incremento dos atributos requeridos de Fornecedores e estoque, assim como foi definido pelo participante alguns refinamentos. 



## Resultados
Foi proposto um modelo conceitual de Banco de Dados com os seguintes atributos e variaveis:

### 📂 <b>Atributo:</b> Produto
 * ProdutoId int unsigned NOT NULL AUTO_INCREMENT
 * Categoria mediumint default NULL
 * preco_producao varchar(100) default NULL
 * imposto varchar(100) default NULL
 * precototal varchar(100) default NULL
 * PRIMARY KEY(ProdutoId)
 * UNIQUE(ProdutoId)

### 📂 <b>Atributo:</b> Estoque
 * EstoqueId int unsigned AUTO_INCREMENT
 * ProdutoId int unsigned NOT NULL
 * localizacao varchar(50) default NULL
 * quatidade_disponivel int default NULL
 * disponibilidade varchar(2) default NULL
 * Descontinuado varchar(2) default NULL default NULL
 * UNIQUE(EstoqueId, ProdutoId)
 * PRIMARY KEY(EstoqueId)
 * FOREIGN KEY(ProdutoId)

### 📂 <b>Atributo:</b> Fornecedor
  * FornecedorId int unsigned AUTO_INCREMENT
  * EstoqueId int unsigned
  * ProdutoName TEXT NOT NULL
  * CNPJ varchar(17) NOT NULL
  * Razao_social TEXT NOT NULL
  * nome_fantasia varchar(255)
  * tipo_fornecedor int NOT NULL
  * localizacao varchar(255)
  * email varchar(255) default NULL
  * PRIMARY KEY(FornecedorId)
  * UNIQUE(EstoqueId, nome_fantasia)
  * FOREIGN KEY(EstoqueId)
   
### 📂 <b>Atributo:</b> Cliente
  * ClienteId int unsigned NOT NULL
  * EmailId varchar(255) default NULL
  * Telefone varchar(100) default NULL
  * Nome varchar(255) default NULL
  * Ultimo_sobrenome varchar(255) default NULL
  * CPF varchar(255) default NULL
  * cartao_credito varchar(255)
  * Idade mediumint default NULL
  * Genero varchar(255) default NULL
  * CEP varchar(10) default NULL
  * Numero mediumint default NULL
  * Complemento TEXT default NULL
  * PRIMARY KEY(ClienteId)
  * UNIQUE(ClienteId, EmailId, CPF)
   
### 📂 <b>Atributo:</b> Pedido
  * PedidoId int AUTO_INCREMENT
  * ClienteId int unsigned NOT NULL
  * ProdutoId int unsigned NOT NULL
  * Quantidade varchar(30) NOT NULL
  * Endereco_entrega varchar(30) NOT NULL
  * delivery varchar(30) NOT NULL
  * disponibilidade varchar(30)
  * PRIMARY KEY(PedidoId, ClienteId)
  * FOREIGN KEY(ClienteId)
  * FOREIGN KEY(ProdutoId)


O diagrama ficou da seguinte forma:

<img src='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/c242d91a8d454a9e3d0d62169cb8955e1fd6a81e/Desafio-RoutineNuvem/media/projeto_conceitual_db_RoutineNuvem.png'>

Após esta etapa foi criado a base de dados fisica a partir das clausulas <B>`CREATE DATABASE`</B> e <B>`CREATE TABLE`</B> e para criar os dados de simulação foi usado o site https://generatedata.com/, de modo, a facilitar a inserção de uma grande quantidade de dados.

Em seguida, foram realizadas as querys para responder as duvidas dos stakeholders de qual o perfil de seus clientes. As seguintes consultas foram realizadas:

* Verificando qual a localização mais frequente dos clientes com a query: `select estado, count(*) as clientes_per_estado FROM cliente GROUP BY estado`
* Verificando qual a faixa etaria dos clientes com a query: ` `
* Verificando se os estoques mais cheios são aqueles que tem mais clientes com a query: `select quatidade_disponivel, count(localizacao) as estoques_per_localizacao, localizacao FROM estoque GROUP BY localizacao`

Por fim, foi criado um dashboard no excel para demonstrar os resultados coletados:
<img src=''>

## Arquivos
* Modelo Conceitual <a href='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/c242d91a8d454a9e3d0d62169cb8955e1fd6a81e/Desafio-RoutineNuvem/media/projeto_conceitual_db_RoutineNuvem.png'>link</a>
* Script de Criação do Banco de dados <a href='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/5c65c06e5b45a4d656c67bd82cc68a87e0197649/Desafio-RoutineNuvem/db_RoutineNuvem.sql'>link</a>
* Script de Consultas por Querys <a href=''>link</a>

<hr>
Gostaria de ver outros desafios realizados nesse bootcamp? acesse o <a href='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO'>link</a>

