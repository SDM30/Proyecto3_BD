--Disparador 1
create or replace trigger productos_actualizar_stock
after insert on detallepedidos FOR EACH ROW
declare
begin
UPDATE productos
    SET cantidadenstock = cantidadenstock - :new.cantidad
    where codigoproducto = :new.codigoproducto;
end;
-- Prueba de disparador (Hacer en archivo aparte)
Insert into PEDIDOS (CODIGOPEDIDO,FECHAPEDIDO,FECHAESPERADA,FECHAENTREGA,ESTADO,CODIGOCLIENTE) values (129,to_date('10/11/08','DD/MM/RR'),to_date('10/12/08','DD/MM/RR'),to_date('29/12/08','DD/MM/RR'),'Rechazado',38);
Insert into PEDIDOS (CODIGOPEDIDO,FECHAPEDIDO,FECHAESPERADA,FECHAENTREGA,ESTADO,CODIGOCLIENTE) values (130,to_date('10/11/08','DD/MM/RR'),to_date('10/12/08','DD/MM/RR'),to_date('29/12/08','DD/MM/RR'),'Rechazado',38);
Insert into DETALLEPEDIDOS (CODIGOPEDIDO,CODIGOPRODUCTO,CANTIDAD,PRECIOUNIDAD,NUMEROLINEA) values (130,'FR-67',6,70,3);
Insert into DETALLEPEDIDOS (CODIGOPEDIDO,CODIGOPRODUCTO,CANTIDAD,PRECIOUNIDAD,NUMEROLINEA) values (130,'FR-67',20,70,3);
