<h1 align="center">
<h1 align="center">
  <br>
  <img src="https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/5e757398a5d35fc8cdb9c8f3c1c34f75ee8eecf0/Desafio-OFICINA/media/banner_oficina.png" alt="logo" >
</h1>

<h3 align="center"> Database Experience - 2° Desafio: Oficina</h3>

</p>

<p align="center">
  <a href="#sobre">Sobre</a> •
  <a href="#metodologia">Metodologia e Resultados</a>

## Sobre 
Administrar uma oficina mecânica tem especificidades que outro negócio não tem, como o conhecimento técnico, mas a base é a mesma de qualquer empreendimento. Além de prestar um bom serviço, o negócio de carros exige boa apresentação, bom atendimento e conhecimentos de gestão. É um desafio diário, que exige comprometimento do proprietário <sup><a href='https://chiptronic.com.br/blog/10-dicas-para-vencer-os-desafios-cotidianos-de-uma-oficina-mecanica'>[1]</a></sup>. Assim, a empresa CENTROCAR Oficina Mecânica percebeu a necessidade de criar e manter um banco de dados com o intuido de auxiliar uma tomada de decisão orientada por dados. Os dados particulares a empresa são:

* Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica.
* Clientes levam veículos á oficina mêcania para serem consertados ou para passarem por revisões periódicas.
* Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
* A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra
* O valor de cada preça também irá compor a OS
* O cliente autorixa a execução dos serviços
* A mesma equpe avalia e executa os serviços
* uma OS pode ter varios tipos de peça e uma peça pode estar presente em mais de uma OS

## Metodologia
### <i>Projeto Conceitual</i>
Um modelo conceitual é um modelo abstrato que descreve a estrutura de um banco de dados de forma independente do SGBD. Dessa forma, será usado o workbanch do mysql, para criar um diagrama de relações de entidades. As entidades definidas foram:

<b><i>Ficha do Veículo</i></b>
Essa entidade tem como objetivo descrever todas as caracteristicas do carro que o 
* Placa
* Modelo
* Ano
* Caracteristicas gerais do veiculo (cambio, combustivel, pneus, etc)

<b><i>Cientes</i></b>
* CPF
* Identidade
* pagamento
* veiculo

<b><i>Serviço</i></b>
* natureza do serviço
* urgência
* Descrição do serviço

<b><i>Orçamento</i></b>
* Peças
* Mão de obra

<b><i>Equipe</i></b>
* numero de Funcionarios
* Especialidade

<b><i>Valor Pagamento</i></b>
* Preço

<img src='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/5e757398a5d35fc8cdb9c8f3c1c34f75ee8eecf0/Desafio-OFICINA/media/projeto_conceitual_db_centro_car.png'>

<hr>
Gostaria de ver outros desafios realizados nesse bootcamp? acesse o <a href='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO'>link</a>
