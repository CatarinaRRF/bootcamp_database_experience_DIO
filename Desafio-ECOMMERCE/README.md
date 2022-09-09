> <B>⚠️ Esse README ainda esta sob construção</B>

<h1 align="center">
<h1 align="center">
  <br>
  <img src="https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/e5b0f498d8a7e3384bf2464cbfbc3c4d0bb917be/Desafio-ECOMMERCE/media/banner_ecommerce.png" alt="logo" >
</h1>

<h3 align="center"> Database Experience - 1° Desafio: E-COMMERCE</h3>

</p>

<p align="center">
  <a href="#sobre">Sobre</a> •
  <a href="#metodologia">Metodologia e Resultados</a> •
  <a href="#changelog">Changelog</a> •
  <a href="#conclusão">Conclusão</a> 

## Sobre 
O desafio propõe a análise de um cenário em que uma empresa ECOMMERCE busca agragar as informações sobre sua venda de informações, que possui as entidades produto, estoque, fornecedor, pedido e cliente. Dessa maneira é desafiado ao participante a execução da criação de um projeto conceitual a partir de um modelo ER e criação de um projeto lógico utilizando de um modelo relacional. Quanto as entidade, as mesmas possuem as seguintes características:

<b><i>Com relação aos produtos</i></b> 
* São vendidos por uma unica plataforma online, contudo, estes podem ter vendedores distintos
* Cada produto possui apenas um fornecedor 
* Um pedido pode ser composto por um ou mais produtos.

<b><i>Com relação aos clientes</i></b> 
* o cliente pode se cadastrar no site com CPF ou CNPJ 
* O endereço irá determinar o valor do frete
* Um cliente pode comprar mais de um pedido. Este tem um período de arência para devolução do produto
  
<b><i>Com relação aos pedidos</i></b> 
* Os Pedidos são Criados por clientes e possuem informações de compra, endereço e status da entrega
* Um produto ou mais compoem o pedido
* O pedido pode ser cancelado

<b><i>Com relação aos Fornecedores e Estoque</i></b> 
* cabe ao participante modelar essas informações

## Metodologia
### <i>Projeto Conceitual</i>
Um modelo conceitual é um modelo abstrato que descreve a estrutura de um banco de dados de forma independente do SGBD. Dessa forma, será usado o workbanch do mysql, para criar um diagrama de relações de entidades. O resultado desse processo foi o seguinte:

<img src='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/3c156c5ccfcdcd1139fdb5345c43cd17a3c2e726/Desafio-ECOMMERCE/media/projeto_conceitual_db_ecommerce.png'>

### <i>Projeto Lógico</i>
O Projeto Lógico de um banco de dados tem por objetivo avaliar as necessidades de uso do banco de dados pelos usuários/aplicações, realizando possíveis refinamentos para alcançar maior desempenho das operações sobre o banco de dados. A tarefa final do projeto lógico é a geração do esquema lógico, que representa uma descrição da estrutura do banco de dados que pode ser processada por um Sistema Gerenciador de Banco de Dados (SGBD). Será usado para essa etapa o SGBD MySQL

## Changelog

## Conclusão

<hr>
Gostaria de ver outros desafios realizados nesse bootcamp? acesse o <a href='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO'>link</a>
