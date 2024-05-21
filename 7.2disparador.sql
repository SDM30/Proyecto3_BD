CREATE OR REPLACE TRIGGER aplicar_descuento
BEFORE INSERT OR UPDATE ON detallepedidos
FOR EACH ROW
DECLARE
    descuento NUMBER(5,2);
BEGIN
    SELECT g.descuento
    INTO descuento
    FROM productos p
    JOIN gamasproductos g ON p.gama = g.gama
    WHERE p.codigoproducto = :NEW.codigoproducto;

    IF descuento IS NOT NULL THEN
        :NEW.preciounidad := :NEW.preciounidad * (descuento / 100);
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        NULL;
END;
/




