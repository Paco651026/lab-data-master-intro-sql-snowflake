use database TRAINING_DATAMASTERS_DB;
use schema RL_STORR52_SCHEMA;
use role RL_STORR52;
use warehouse WH_CONSUMER;

-- Todos los clientes:
SELECT * FROM Clientes;

-----------------------------------------
-- RESULTADO:
-- 
-- CLIENTEID,NOMBRE,EMAIL,PAIS
-- 1,Ana Gómez,ana@example.com,España
-- 2,Carlos Pérez,carlos@example.com,México
-- 3,Lucía Díaz,lucia@example.com,Colombia
-----------------------------------------


-- Pedidos del 2 de junio:
SELECT * FROM Pedidos WHERE Fecha = '2024-06-02';

-----------------------------------------------
-- RESULTADO:
-- 
-- PEDIDOID,FECHA,CLIENTEID,PRODUCTOID,CANTIDAD
-- 5002,2024-06-02,2,101,2
-- 5003,2024-06-02,3,102,1
----------------------------------------------


-- Productos con precio > 500:
SELECT * FROM Productos WHERE Precio > 500;

-------------------------------------------------
-- RESULTADO:

-- PRODUCTOID,NOMBRE,CATEGORIA,PRECIO
-- 100,Portátil Dell XPS 13,Informática,1200.00
-- 101,iPhone 13,Electrónica,999.99
--------------------------------------------------

-- 3. Consultas con JOIN
SELECT
  p.PedidoID,
  c.Nombre AS Cliente,
  pr.Nombre AS Producto,
  p.Cantidad,
  pr.Precio,
  (p.Cantidad * pr.Precio) AS Total
FROM Pedidos p
JOIN Clientes c ON p.ClienteID = c.ClienteID
JOIN Productos pr ON p.ProductoID = pr.ProductoID;

---------------------------------------------------------------
-- RESULTADO:

-- PEDIDOID,CLIENTE,PRODUCTO,CANTIDAD,PRECIO,TOTAL
-- 5001,Ana Gómez,Portátil Dell XPS 13,1,1200.00,1200.00
-- 5002,Carlos Pérez,iPhone 13,2,999.99,1999.98
-- 5003,Lucía Díaz,Auriculares Sony WH-1000XM4,1,349.90,349.90
-- 5004,Ana Gómez,Auriculares Sony WH-1000XM4,2,349.90,699.80
--------------------------------------------------------------