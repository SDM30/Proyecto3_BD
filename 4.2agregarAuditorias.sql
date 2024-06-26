CREATE TABLE audita_clientes(
    user_name VARCHAR2(15 BYTE),
	CODIGO_CLIENTE_OLD NUMBER(*,0), 
	NOMBRE_CLIENTE_OLD VARCHAR2(50 BYTE), 
	NOMBRE_CONTACTO_OLD VARCHAR2(30 BYTE) DEFAULT NULL, 
	APELLIDO_CONTACTO_OLD VARCHAR2(30 BYTE) DEFAULT NULL, 
	TELEFONO_OLD VARCHAR2(15 BYTE), 
	FAX_OLD VARCHAR2(15 BYTE), 
	LINEA_DIRECCION1_OLD VARCHAR2(50 BYTE), 
	LINEA_DIRECCION2_OLD VARCHAR2(50 BYTE) DEFAULT NULL, 
	CIUDAD_OLD VARCHAR2(50 BYTE), 
	REGION_OLD VARCHAR2(50 BYTE) DEFAULT NULL, 
	PAIS_OLD VARCHAR2(50 BYTE) DEFAULT NULL, 
	CODIGOPOSTAL_OLD VARCHAR2(10 BYTE) DEFAULT NULL, 
	CODIGO_EMPLEADO_REP_VENTAS_OLD NUMBER(*,0) DEFAULT NULL, 
	LIMITECREDITO_OLD NUMBER(15,2) DEFAULT NULL,
--NUEVO
    CODIGO_CLIENTE_NEW NUMBER(*,0), 
	NOMBRE_CLIENTE_NEW VARCHAR2(50 BYTE), 
	NOMBRE_CONTACTO_NEW VARCHAR2(30 BYTE) DEFAULT NULL, 
	APELLIDO_CONTACTO_NEW VARCHAR2(30 BYTE) DEFAULT NULL, 
	TELEFONO_NEW VARCHAR2(15 BYTE), 
	FAX_NEW VARCHAR2(15 BYTE), 
	LINEA_DIRECCION1_NEW VARCHAR2(50 BYTE), 
	LINEA_DIRECCION2_NEW VARCHAR2(50 BYTE) DEFAULT NULL, 
	CIUDAD_NEW VARCHAR2(50 BYTE), 
	REGION_NEW VARCHAR2(50 BYTE) DEFAULT NULL, 
	PAIS_NEW VARCHAR2(50 BYTE) DEFAULT NULL, 
	CODIGOPOSTAL_NEW VARCHAR2(10 BYTE) DEFAULT NULL, 
	CODIGO_EMPLEADO_REP_VENTAS_NEW NUMBER(*,0) DEFAULT NULL, 
	LIMITECREDITO_NEW NUMBER(15,2) DEFAULT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE audita_pedidos(
    user_name VARCHAR2(15 BYTE),
    
    CODIGOPEDIDO_OLD NUMBER(*,0), 
	FECHAPEDIDO_OLD DATE, 
	FECHAESPERADA_OLD DATE, 
	FECHAENTREGA_OLD DATE DEFAULT NULL, 
	ESTADO_OLD VARCHAR2(15 BYTE), 
	COMENTARIOS_OLD CLOB, 
	CODIGOCLIENTE_OLD NUMBER(*,0),
--NUEVO    
    CODIGOPEDIDO_NEW NUMBER(*,0), 
	FECHAPEDIDO_NEW DATE, 
	FECHAESPERADA_NEW DATE, 
	FECHAENTREGA_NEW DATE DEFAULT NULL, 
	ESTADO_NEW VARCHAR2(15 BYTE), 
	COMENTARIOS_NEW CLOB, 
	CODIGOCLIENTE_NEW NUMBER(*,0),
    
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

