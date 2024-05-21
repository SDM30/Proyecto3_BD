ALTER TRIGGER productos_actualizar_stock COMPILE;
create or replace trigger productos_actualizar_stock
after insert on detallepedidos FOR EACH ROW
declare
begin
UPDATE productos
    SET cantidadenstock = cantidadenstock - :new.cantidad
    where codigoproducto = :new.codigoproducto;
end;
