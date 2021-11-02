create database Loja_informatica

use Loja_Informatica

create table Funcionario(
CODI_FUNC int primary key,
NOME_FUNC varchar(50)
)

select * from Funcionario

create table Produto(
CODI_PROD int primary key,
NOME_PROD varchar(30),
QUANT_PROD int,
VALOR_PROD float
)

select * from Produto

create table Venda(
CODI_VENDA int primary key,
VALOR_VENDA float,
FKCODI_PROD int,
QUANT_PROD int,
FKCODI_FUNC int,
foreign key (FKCODI_PROD) references Produto(CODI_PROD),
foreign key (FKCODI_FUNC) references Funcionario(CODI_FUNC)
)

select * from Venda