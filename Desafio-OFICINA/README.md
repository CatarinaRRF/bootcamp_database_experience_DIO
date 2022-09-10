<h1 align="center">
<h1 align="center">
  <br>
  <img src="https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/ac7385587b590488a94a9203ddf42483064c681d/Desafio-OFICINA/media/banner_oficina.png" alt="logo" >
</h1>

<h3 align="center"> Database Experience - 2° Desafio: Oficina</h3>

</p>

<p align="center">
  <a href="#sobre">Sobre</a> •
  <a href="#metodologia">Metodologia e Resultados</a>

## Sobre 
Administrar uma oficina mecânica tem especificidades que outro negócio não tem, como o conhecimento técnico, mas a base é a mesma de qualquer empreendimento. Além de prestar um bom serviço, o negócio de carros exige boa apresentação, bom atendimento e conhecimentos de gestão. É um desafio diário, que exige comprometimento do proprietário <sup><a href='https://chiptronic.com.br/blog/10-dicas-para-vencer-os-desafios-cotidianos-de-uma-oficina-mecanica'>[1]</a></sup>. Assim, a empresa CENTROCAR Oficina Mecânica percebeu a necessidade de criar e manter um banco de dados com o intuito de auxiliar uma tomada de decisão orientada por dados. Os dados particulares a empresa são:

* Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica.
* Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões periódicas.
* Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
* A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra
* O valor de cada peça também irá compor a OS
* O cliente autoriza a execução dos serviços
* A mesma equipe avalia e executa os serviços
* uma OS pode ter vários tipos de peça e uma peça pode estar presente em mais de uma OS

## Metodologia
Um modelo conceitual é um modelo abstrato que descreve a estrutura de um banco de dados de forma independente do SGBD. Dessa forma, será usado o workbench do mysql, para criar um diagrama de relações de entidades. As entidades definidas foram:

### 📂 Ficha do Veículo
Essa entidade tem como objetivo descrever todas as características do carro.
* <b>Placa <i>VARCHAR(7)</i></b>: É a chave primária dessa entidade;
* <b>Modelo <i>VARCHAR(45)</i></b>: Armazena o modelo do carro;
* <b>Ano <i>YEAR</i></b>: Armazena o ano de fabricação do carro;
* <b>Características gerais do veículo <i>VARCHAR(45)</i> (câmbio, combustível, pneus, etc)</b>: Armazena características das peças do carro.

### 📂 Clientes
Essa entidade tem como objetivo descrever todas as características do cliente.
* <b>CPF <i>VARCHAR(11)</i></b>: É a chave primária dessa entidade e tem o propósito da identificação do cliente;
* <b>Identidade<i>VARCHAR(12)</i></b>: identificação do cliente;
* <b>Pagamento<i>VARCHAR(16)</i></b>: Método de pagamento escolhido, possui quatro variáveis: cartão de débito, cartão crédito, dinheiro, pix;

### 📂 Serviço
Essa entidade tem como objetivo descrever todas as características do serviço.
* <b>Natureza do serviço <i>BIT(8)</i></b>: Descreve qual o tipo de serviço foi requerido pelo cliente, sendo as opções:Reparos automotivos (1), Troca de óleo (2),Alinhamento e, balanceamento (3), Manutenção de embreagem (4), Revisão dos componentes de freio (5), Checagem do nível de água no radiador (6), Revisão Geral (7), outro (8). Os dados serão armazenados de acordo com a numeração de cada tipo, sendo assim, 0 a 7;
* <b>Urgência <i>BIT(2)</i></b>: Descreva se o serviço precisa ser realizado com urgência. Tem como data type boolean, sendo 0 'sem urgência' e 1 'com urgência';
* <b>Descrição do serviço <i>VARCHAR(256)</i></b>: Descreve alguma especificação sobre o serviço (opcional).

### 📂 Orçamento
Essa entidade tem como objetivo descrever todas as características do orçamento.
* <b>Peças <i>BIT(2)</i> (câmbio, combustível, pneus, etc)</b>: Descreve se o foi comprado/consertado determinada peça do carro. Tem como data type boolean, sendo 0 'não trocou' e 1 'trocou', existe um atributo para cada peça;
* <b>Mão de obra <i>BIT(4)</i></b>: descreve o valor da mão de obra de acordo com tempo estimado que será necessário para o concerto. Desse modo, os dados serão armazenados de 0 a 3 e que indicam as seguintes informações 1-7 dias (1), 8-14 dias (2), 9-21 dias (3), > 1 mês (4);

### 📂 Equipe
Essa entidade tem como objetivo descrever todas as características da equipe.
* <b>Numero de Funcionarios <i>INT</i></b>: Descreve quantos funcionários tem na equipe;
* <b>Especialidade <i>VARCHAR(45)</i></b>: Descreve a especialidade da equipe;

### 📂 Relacionamento: Valor do Pagamento
Essa relacionamento tem como objetivo descrever a relação entre orçamento e serviço 
* <b>Preço <i>DOUBLE</i></b>: descreve o valor total a ser pago apartir das variaveis serviço e orçamento.

## Resultado
A seguir há se encontra o resultado do Modelo Conceitual: 

<img src='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/905fa0eda99642ff1f9e1896d2e76d068da59655/Desafio-OFICINA/media/projeto_conceitual_db_centro_car.png'>

## Conclusão
A fase conceitual da modelagem pode ajudar a organizações como a CentroCar no processo de criação de um sistema de banco de dados, de modo, que a permite conquistar uma Visão do negócio mais abrangente e abre uma ponte entre os usuários e desenvolvedores, durante a criação desse sistema.


<img src='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO/blob/1a15fe23a471f6ca75893692d3587e7e6d2276bd/Desafio-OFICINA/media/line.png'> 

Gostaria de ver outros desafios realizados neste bootcamp? acesse o <a href='https://github.com/CatarinaRRF/bootcamp_database_experience_DIO'>link</a>
