CREATE OR REPLACE PROCEDURE registrar_pago (
    p_codigo_cliente IN NUMBER,
    p_forma_pago IN VARCHAR2,
    p_id_transaccion IN VARCHAR2,
    p_fecha_pago IN DATE,
    p_cantidad IN NUMBER
) AS
    v_cliente_existente NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_cliente_existente
    FROM CLIENTES
    WHERE CODIGOCLIENTE = p_codigo_cliente;

    IF v_cliente_existente > 0 THEN
        INSERT INTO PAGOS (CODIGOCLIENTE, FORMAPAGO, IDTRANSACCION, FECHAPAGO, CANTIDAD)
        VALUES (p_codigo_cliente, p_forma_pago, p_id_transaccion, p_fecha_pago, p_cantidad);
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('El pago ha sido registrado exitosamente.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('El código de cliente no existe. No se puede registrar el pago.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al intentar registrar el pago: ' || SQLERRM);
        ROLLBACK;
END registrar_pago;
/
BEGIN
    registrar_pago(p_codigo_cliente => 3, p_forma_pago => 'Tarjeta de crédito', p_id_transaccion => '1234567890', p_fecha_pago => SYSDATE, p_cantidad => 100.00);
END;
/
