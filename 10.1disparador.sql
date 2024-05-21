CREATE OR REPLACE TRIGGER trg_notificacion
BEFORE INSERT OR UPDATE OR DELETE ON pagos
FOR EACH ROW
DECLARE
    limite_credito NUMBER(15,2);
    cantidad_pagos NUMBER (15,2);
BEGIN
    -- Obtener el límite de crédito del cliente
    SELECT LIMITECREDITO INTO limite_credito
    FROM clientes
    WHERE CODIGOCLIENTE = :NEW.codigocliente;

    -- Obtener la suma de los pagos del cliente
    SELECT SUM(cantidad) INTO cantidad_pagos
    FROM pagos
    WHERE CODIGOCLIENTE = :NEW.codigocliente;

    -- Verificar si la suma de los pagos supera el límite de crédito
    IF cantidad_pagos > limite_credito THEN
        -- Insertar notificación
        INSERT INTO notificaciones (fecha, destinatario, mensaje)
        VALUES (SYSDATE, :NEW.codigocliente, 'Ha superado el límite de crédito');
    END IF;
END;
/
