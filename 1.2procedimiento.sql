CREATE OR REPLACE PROCEDURE actualizar_inventario_producto(
    p_codigoProducto VARCHAR2,
    p_cantidadenstock NUMBER
) AS
BEGIN
    UPDATE PRODUCTOS
    SET CANTIDADENSTOCK =  p_cantidadenstock
    WHERE CODIGOPRODUCTO = p_codigoProducto;
    COMMIT;
END actualizar_inventario_producto;
/

BEGIN
    actualizar_inventario_producto('OR-251', 20);
END;
/
