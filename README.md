> <B>⚠️ Esse README ainda esta sob construção</B>

<h1 align="center">
<h1 align="center">
  <br>
  <img src="https://hermes.digitalinnovation.one/tracks/7df7e300-b035-4b09-a7ad-34d1cb18f9a6.png" alt="logo" height="200">
</h1>

<h3 align="center"> Database Experience - Bootcamp DIO</h3>

<p align="center">
    <a href="">
    <img src="https://img.shields.io/github/last-commit/CatarinaRRF/Challenge-Alura-Cash-19-08-22?color=informational&style=flat-square"
         alt="GitHub last commit">
    <a href="https://github.com/CatarinaRRF/Challenge-Alura-Cash-19-08-22">
    <img src= http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=green&style=flat-square >

</p>

<p align="center">
  <a href="#sobre">Sobre</a> •
  <a href="#🥊-primeiro-desafio---loja-wizard">1° Desafio</a> •
  <a href="#🥊-segundo-desafio---oficina-mecânica-centrocar">2° Desafio</a> •
  <a href="#3°-desafio:-loja-de-departamentos---routine-nuvem">3° desafio</a> •
  <a href="#">-🥊4° Desafio</a> •
  <a href="#arquivos">Arquivos</a> •
  <a href="#creditos">Creditos</a>
  
</p>

## Sobre 

O DIO Database Experience é um Bootcamp de banco de dados para profissionais que desejam aprimorar os principais conceitos de banco de dados SQL e NoSQL. No programa de 54 horas, os participantes têm acesso a conteúdos educacionais e mentorias exclusivas sobre modelagem de dados, SGBD, EER, arquitetura, consultas, entre outros assuntos. O bootcamp possui 6 desafios de projeto, que contemplaram varias fases da modelagem e manipulação de banco de dados. As plataformas abordadas são: MySQL e MongoDB.

## 🥊 Primeiro Desafio - Loja Wizard
Um modelo conceitual é um modelo abstrato de um banco de dados que não considera o sistema de gerenciamento de banco de dados (SGBD) específico que será usado para implementá-lo. Ele serve como uma descrição do banco de dados independente de qual SGBD será usado para implementação. Desta forma, o mesmo modelo conceitual pode ser utilizado para implementação com qualquer SGBD. Um modelo conceitual indica quais dados podem aparecer no banco de dados e por essa razão é uma etapa importante durante a criação de um banco de dados.<br>
Nesse sentido a organização fictícia em ascensão, Loja Wizard, busca estruturar os dados de seu processo produtivo. Desse modo, se faz necessario a criação de um banco de dados que contempla todas as entidades em seu processo. Assim, foi desafiado ao participante a execução da criação de um projeto conceitual a partir de um modelo ER.

Esse modelo apresenta as seguintes características:

<b><i>Atributo produtos</i></b> 
* São vendidos por uma unica plataforma online, contudo, estes podem ter vendedores distintos
* Cada produto possui apenas um fornecedor 
* Um pedido pode ser composto por um ou mais produtos.

<b><i>Atributo clientes</i></b> 
* o cliente pode se cadastrar no site com CPF ou CNPJ 
* O endereço irá determinar o valor do frete
* Um cliente pode comprar mais de um pedido. Este tem um período de arência para devolução do produto
* Cliente PJ e PF
* Pagamento
  
<b><i>Atributo pedidos</i></b> 
* Os Pedidos são Criados por clientes e possuem informações de compra, endereço e status da entrega
* Um produto ou mais compoem o pedido
* O pedido pode ser cancelado

<b><i>Atributo Fornecedores</i></b> 
* Razão Social
* CNPJ
* Vendedores Tercerizados

<b><i>Atributo Estoque e entrega</i></b> 
* Status
* Código de rastreio 
* Data máxima de entrega;
* Local

### Resultado
A seguir se encontra o resultado do Modelo Conceitual: 
<img src='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/b5006a3c74f4fb5faae59777f48e8e35a0c74220/Desafio-ECOMMERCE/media/projeto_conceitual_db_ecommerce_h.png'>

## 🥊 Segundo Desafio - Oficina Mecânica CENTROCAR 
Administrar uma oficina mecânica tem especificidades que outro negócio não tem, como o conhecimento técnico, mas a base é a mesma de qualquer empreendimento. Além de prestar um bom serviço, o negócio de carros exige boa apresentação, bom atendimento e conhecimentos de gestão. É um desafio diário, que exige comprometimento do proprietário. Assim, a empresa CENTROCAR percebeu a necessidade de criar e manter um banco de dados com o intuito de auxiliar uma tomada de decisão orientada por dados. 
Desse modo, foi contruido de acordo com as necessidades da empresa o seguinte modelo conceitual:

<b><i>Ficha do Veículo</i></b> 
* <b>Placa <i>VARCHAR(7)</i></b>: É a chave primária dessa entidade;
* <b>Modelo <i>VARCHAR(45)</i></b>: Armazena o modelo do carro;
* <b>Ano <i>YEAR</i></b>: Armazena o ano de fabricação do carro;
* <b>Características gerais do veículo <i>VARCHAR(45)</i> (câmbio, combustível, pneus, etc)</b>: Armazena características das peças do carro.

<b><i>Clientes</i></b> 
* <b>CPF <i>VARCHAR(11)</i></b>: É a chave primária dessa entidade e tem o propósito da identificação do cliente;
* <b>Identidade<i>VARCHAR(12)</i></b>: identificação do cliente;
* <b>Pagamento<i>VARCHAR(16)</i></b>: Método de pagamento escolhido, possui quatro variáveis: cartão de débito, cartão crédito, dinheiro, pix;

<b><i>Serviço</i></b>
* <b>Natureza do serviço <i>BIT(8)</i></b>: Descreve qual o tipo de serviço foi requerido pelo cliente, sendo as opções:Reparos automotivos (1), Troca de óleo (2),Alinhamento e, balanceamento (3), Manutenção de embreagem (4), Revisão dos componentes de freio (5), Checagem do nível de água no radiador (6), Revisão Geral (7), outro (8). Os dados serão armazenados de acordo com a numeração de cada tipo, sendo assim, 0 a 7;
* <b>Urgência <i>BIT(2)</i></b>: Descreva se o serviço precisa ser realizado com urgência. Tem como data type boolean, sendo 0 'sem urgência' e 1 'com urgência';
* <b>Descrição do serviço <i>VARCHAR(256)</i></b>: Descreve alguma especificação sobre o serviço (opcional).
<b><i>Orçamento</i></b>
* <b>Peças <i>BIT(2)</i> (câmbio, combustível, pneus, etc)</b>: Descreve se o foi comprado/consertado determinada peça do carro. Tem como data type boolean, sendo 0 'não trocou' e 1 'trocou', existe um atributo para cada peça;
* <b>Mão de obra <i>BIT(4)</i></b>: descreve o valor da mão de obra de acordo com tempo estimado que será necessário para o concerto. Desse modo, os dados serão armazenados de 0 a 3 e que indicam as seguintes informações 1-7 dias (1), 8-14 dias (2), 9-21 dias (3), > 1 mês (4);

<b><i>Equipe</i></b>
* <b>Numero de Funcionarios <i>INT</i></b>: Descreve quantos funcionários tem na equipe;
* <b>Especialidade <i>VARCHAR(45)</i></b>: Descreve a especialidade da equipe;

<b><i>Relacionamento: Valor do Pagamento</i></b>
* <b>Preço <i>DOUBLE</i></b>: descreve o valor total a ser pago apartir das variaveis serviço e orçamento.

### Resultado
A seguir se encontra o resultado do Modelo Conceitual: 

<img src='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/905fa0eda99642ff1f9e1896d2e76d068da59655/Desafio-OFICINA/media/projeto_conceitual_db_centro_car.png'>

## 🥊 3° Desafio: Loja de departamentos - Routine Nuvem
Foi requisitado a criação de um projeto lógico de banco de dados para o cenário de e-commerce. Dentro desta modelagem haverá relacionamentos presentes no modelo EER. Além disso, aplicou-se o mapeamento de modelos aos refinamentos propostos no módulo de modelagem conceitual. Assim, realizou=se a criação do Script SQL para criação do esquema do banco de dados. Posteriormente, realizou-se a persistência de dados para realização de testes. FFoi especificado ainda queries mais complexas dos que apresentadas durante a explicação do desafio. Sendo assim, foi criado queries SQL com as cláusulas abaixo:

* Recuperações simples com SELECT Statement
* Filtros com WHERE Statement
* Criou-se expressões para gerar atributos derivados
* Foi Ddefinido ordenações dos dados com ORDER BY
* Condições de filtros aos grupos – HAVING Statement
* Junções entre tabelas para fornecer uma perspectiva mais complexa dos dados


<b><sup>O script completo detalhado pode ser acessado em: <a href=''>link</a></sup></b>

## 🥊 4° Desafio: Projeto Lógico de Banco de Dados

## Arquivos

<img align="right" height="150" src="https://cdn-icons-png.flaticon.com/512/977/977506.png">

* 1° Desafio - Loja Wizard <a href='bootcamp_database_experience_DIO/Desafio-ECOMMERCE'>Link</a>
* 2° Desafio - Oficina Mecânica CENTROCAR <a href='bootcamp_database_experience_DIO/Desafio-OFICINA'>Link</a>
* 3° Desafio: Projeto Lógico de Banco de Dados <a href=''>Link</a>
* 4° Desafio: <a href=''>Link</a>

## Creditos
* Challenge desenvolvido pelos profissionais da <a href='https://www.dio.me/'> DIO</a> <sup><img src='https://user-images.githubusercontent.com/105402331/187300705-229c3543-398f-41b5-9e23-44bbf5796f21.png' height=10px></sup>

<hr size=7>

<p align="center">
 <a href='https://www.linkedin.com/public-profile'><img src='https://cdn-icons-png.flaticon.com/512/174/174857.png' height=20px></a> <a href='https://www.kaggle.com/ccfreitas'><img src='https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/189_Kaggle_logo_logos-512.png' height=20px></a>
</p>
