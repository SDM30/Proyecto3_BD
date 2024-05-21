CREATE OR REPLACE PROCEDURE actualizar_precio_producto(
    p_codigoProducto VARCHAR2,
    p_nuevoPrecioVenta NUMBER
) AS
BEGIN
    UPDATE PRODUCTOS
    SET PRECIOVENTA = p_nuevoPrecioVenta
    WHERE CODIGOPRODUCTO = p_codigoProducto;
    COMMIT;
END actualizar_precio_producto;
/

BEGIN
    actualizar_precio_producto('OR-251', 20);
END;
/
