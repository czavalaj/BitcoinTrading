---------------------------------Cree una base de datos------------------
CREATE DATABASE tradingCrypto  
ON   
( NAME = tradingCrypto_dat,  
    FILENAME = 'C:\Users\katze\OneDrive\SQLServer\Data\ListaData.mdf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 )  
LOG ON  
( NAME = tradingCrypto_log,  
    FILENAME = 'C:\Users\katze\OneDrive\SQLServer\Data\Listalog.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB );  
GO  
---------------------------------Cree un login---------------------------
use master
go 
create login UserBTC with password = '@bitcoin.' 
---------------------------------cree un user para el login---------------
use tradingCrypto
create user UserBTC for login UserBTC
with default_schema = dbo 
go

---------------------------------Cree el esquema asociado al user-----------------
USE tradingCrypto GO
CREATE SCHEMA Cryto UserBTC ; GO

 
---------------------------------Cree el esquema asociado al user-----------------
create schema Crypto authorization UserBTC 
Go
---------------------Dar permisos de creacion de tabla al usuario---------------------
grant create table to UserBTC 
go 
--revisar el usuario actual
Select user
execute as user = 'UserBTC' 
go 

---------------------Dar permisos de creacion de tabla al usuario---------------------
Use tradingCrypto

create table cryptoPrices_raw
(
timestampp varchar(15) NOT NULL,
id_coin varchar(10) NOT NULL,
priceUSD varchar(30) NOT NULL
) 
go 

---------------------Stagin Area---------------------

create table cryptoPrices_stg
(
id int NOT NULL, 
timestampp datetime NOT NULL,
id_coin varchar(10) NOT NULL,
priceUSD float NOT NULL
PRIMARY KEY (id)
) 
go
