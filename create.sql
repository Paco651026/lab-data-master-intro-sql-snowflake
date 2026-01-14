use database TRAINING_DATAMASTERS_DB;
use schema RL_STORR52_SCHEMA;
use role RL_STORR52;
use warehouse WH_CONSUMER;

CREATE OR REPLACE TABLE Clientes (
  ClienteID INT PRIMARY KEY,
  Nombre VARCHAR(100),
  Email VARCHAR(150),
  Pais VARCHAR(50)
);

CREATE OR REPLACE TABLE Productos (
  ProductoID INT PRIMARY KEY,
  Nombre VARCHAR(100),
  Categoria VARCHAR(50),
  Precio DECIMAL(10,2)
);

CREATE OR REPLACE TABLE Pedidos (
  PedidoID INT PRIMARY KEY,
  Fecha DATE,
  ClienteID INT,
  ProductoID INT,
  Cantidad INT
);

