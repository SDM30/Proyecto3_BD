CREATE OR REPLACE TRIGGER verificar_inventario
BEFORE INSERT ON detallepedidos
FOR EACH ROW
DECLARE
    cantidad_actual NUMBER;
BEGIN
    SELECT cantidadenstock INTO cantidad_actual
    FROM productos
    WHERE codigoproducto = :NEW.codigoproducto;

    IF cantidad_actual < :NEW.cantidad THEN
        RAISE_APPLICATION_ERROR(-20001, 'No hay suficiente inventario para este producto.');
    END IF;

    UPDATE productos
    SET cantidadenstock = cantidadenstock - :NEW.cantidad
    WHERE codigoproducto = :NEW.codigoproducto;
END;
/
