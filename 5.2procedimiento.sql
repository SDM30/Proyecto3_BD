CREATE OR REPLACE PROCEDURE actualizar_precio_productoTotal(
    p_CodigoPedido  VARCHAR2
) AS
    precio NUMBER;
BEGIN
    SELECT SUM (CANTIDAD*PRECIOUNIDAD)
    INTO PRECIO
    FROM DETALLEPEDIDOS
    WHERE CODIGOPEDIDO = P_CODIGOPEDIDO;
    
    UPDATE PEDIDOS
    SET VALORTOTAL = PRECIO
    WHERE CODIGOPEDIDO = p_codigoPedido;
END actualizar_precio_productoTotal;
/

BEGIN
    actualizar_precio_productoTotal(1);
END;
/
