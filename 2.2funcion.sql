SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION gama_mas_vendida RETURN VARCHAR2
IS
    gama_masVendida VARCHAR2(100); -- Ajusta la longitud según tus necesidades
BEGIN
    SELECT MAX(GAMA)
    INTO gama_masVendida
    FROM (
            SELECT CODIGOPRODUCTO, SUM(CANTIDAD) AS CANTIDAD
            FROM DETALLEPEDIDOS
            GROUP BY CODIGOPRODUCTO
         ) T1
    JOIN PRODUCTOS ON T1.CODIGOPRODUCTO = PRODUCTOS.CODIGOPRODUCTO
    ORDER BY t1.cantidad;

    RETURN gama_masVendida;
END gama_mas_vendida;
/
BEGIN
    DBMS_OUTPUT.PUT_LINE('Producto más vendido: ' || gama_mas_vendida());
END;
/

