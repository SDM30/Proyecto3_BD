CREATE OR REPLACE PROCEDURE actualizar_precio_productos
AS
BEGIN
    FOR detalle IN (
        SELECT DISTINCT codigopedido
        FROM detallepedidos
    )LOOP

    actualizar_precio_productototal(detalle.codigopedido);

    END LOOP;

END actualizar_precio_productos;
/
