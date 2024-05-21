CREATE OR REPLACE TRIGGER trg_producto_sup_10
AFTER INSERT OR UPDATE ON PRODUCTOS
FOR EACH ROW
BEGIN
    DECLARE
        p_porcentaje NUMBER;
    BEGIN
        p_porcentaje := :NEW.PRECIOPROVEEDOR * 0.10;
        IF :NEW.PRECIOVENTA < p_porcentaje THEN
            RAISE_APPLICATION_ERROR(-20500, 'NO SE PUEDE INGRESAR EL PRODUCTO');
        END IF;
    END;
END;
/
