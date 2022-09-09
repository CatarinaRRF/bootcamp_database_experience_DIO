<h1 align="center">
<h1 align="center">
  <br>
  <img src="https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/e5b0f498d8a7e3384bf2464cbfbc3c4d0bb917be/Desafio-ECOMMERCE/media/banner_ecommerce.png" alt="logo" >
</h1>

<h3 align="center"> Database Experience - 1° Desafio: E-COMMERCE</h3>

</p>

<p align="center">
  <a href="#sobre">Sobre</a> •
  <a href="#metodologia">Metodologia e Resultados</a>

## Sobre 
O desafio propõe a análise de um cenário em que uma empresa ECOMMERCE busca agragar as informações sobre sua venda de informações, que possui as entidades produto, estoque, fornecedor, pedido e cliente. Dessa maneira é desafiado ao participante a execução da criação de um projeto conceitual a partir de um modelo ER. As entidades requeridas pelos stakeholders possuem as seguintes características:

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
Um modelo conceitual é um modelo abstrato que descreve a estrutura de um banco de dados de forma independente do SGBD. Dessa forma, será usado o workbanch do mysql, para criar um diagrama de relações de entidades. Nele será descritos as entidades e seus atributos previamente definidos pelas partes interessadas, incremento dos atributos requeridos de Fornecedores e estoque, assim como foi definido pelo participante alguns refinamentos. Sendo eles:
* Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações, dessa forma, foi criado a entidade <i>informação</i> que relaciona o CPF/CNPJ com o email do cliente(id), assim como foi criado um atributo booleano que explicita o tipo de registro legal, caso seja um CPF será atribuído  0 e caso CNPJ será atribuído 1;
* Pagamento – Pode ter cadastrado mais de uma forma de pagamento, sendo definido a opção de registrar apenas 1 informação por método;
* Entrega – Possui status, código de rastreio e data máxima de entrega;

O resultado desse processo foi o seguinte:

<img src='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/b5006a3c74f4fb5faae59777f48e8e35a0c74220/Desafio-ECOMMERCE/media/projeto_conceitual_db_ecommerce_h.png'>

<hr>
Gostaria de ver outros desafios realizados nesse bootcamp? acesse o <a href='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO'>link</a>
