--Procedimiento 1
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
-- Procedimiento 2
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
-- Procedimiento 3
CREATE OR REPLACE PROCEDURE insertar_info_detallePedido(
    p_codigoPedido NUMBER,
    p_codigoProducto VARCHAR2,
    p_cantidad NUMBER,
    p_precioUnidad NUMBER,
    p_numeroLinea NUMBER
) AS
BEGIN
    INSERT INTO DETALLEPEDIDOS (CODIGOPEDIDO, CODIGOPRODUCTO, CANTIDAD, PRECIOUNIDAD, NUMEROLINEA)
    VALUES (p_codigoPedido , p_codigoProducto, p_cantidad, p_precioUnidad, p_numeroLinea);
    
    COMMIT;
END insertar_info_detallePedido;
/

BEGIN
    insertar_info_detallePedido(3,'OR-99', 5, 14,4);
END;
/

