ALTER TABLE gamasproductos
ADD descuento DECIMAL(10,2) DEFAULT 0;

UPDATE GAMASPRODUCTOS SET DESCUENTO = 10 WHERE GAMA = 'Aromáticas';
UPDATE GAMASPRODUCTOS SET DESCUENTO = 15 WHERE GAMA = 'Frutales';
UPDATE GAMASPRODUCTOS SET DESCUENTO = 5 WHERE GAMA = 'Herbaceas';
UPDATE GAMASPRODUCTOS SET DESCUENTO = 20 WHERE GAMA = 'Herramientas';
UPDATE GAMASPRODUCTOS SET DESCUENTO = 8 WHERE GAMA = 'Ornamentales';
