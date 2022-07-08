ALTER SESSION set NLS_DATE_FORMAT = 'DD-MM-YYYY'

CREATE TABLE tipo_beneficio (
    id_tipo_beneficio NUMBER NOT NULL,
    tipo_beneficio    NVARCHAR2(250) NOT NULL
);
CREATE TABLE tipo_numero (
    id_tipo_numero NUMBER NOT NULL,
    tipo_numero    VARCHAR2(250) NOT NULL
);
CREATE TABLE tipo_pago (
    id_tipo_pago NUMBER NOT NULL,
    tipo_pago    VARCHAR2(250) NOT NULL
);
CREATE TABLE tipo_parentesco (
    id_parentesco   NUMBER NOT NULL,
    tipo_parentesco VARCHAR2(250) NOT NULL
);
CREATE TABLE tipo_vehiculo (
    id_tipo_vehiculo NUMBER NOT NULL,
    tipo_vechiculo   VARCHAR2(250) NOT NULL
);
CREATE TABLE empresa (
    id_empresa     NUMBER NOT NULL,
    nombre_empresa NVARCHAR2(250) NOT NULL
);
CREATE TABLE banco (
    id_banco     NUMBER NOT NULL,
    nombre_banco NVARCHAR2(250) NOT NULL
);
CREATE TABLE estado_civil (
    id_estado_civil NUMBER NOT NULL,
    estado_civil    VARCHAR2(250) NOT NULL
);
CREATE TABLE telefono (
    id_telefono     NUMBER NOT NULL,
    numero_telefono NUMBER NOT NULL,
    tipo_numero_id  NUMBER NOT NULL,
    persona_id      NUMBER NOT NULL
);
CREATE TABLE cheque (
    id_cheque     NUMBER NOT NULL,
    numero_cheque NUMBER NOT NULL
);
CREATE TABLE nacionalidad (
    id_nacionalidad NUMBER NOT NULL,
    nacionalidad    VARCHAR2(250) NOT NULL
);
CREATE TABLE formas_pago (
    id_forma_pago     NUMBER NOT NULL,
    nombre_forma_pago NVARCHAR2(250) NOT NULL
);
CREATE TABLE region (
    id_region     NUMBER NOT NULL,
    nombre_region VARCHAR2(250) NOT NULL
);
CREATE TABLE provincia (
    id_provincia     NUMBER NOT NULL,
    nombre_provincia VARCHAR2(250) NOT NULL,
    region_id        NUMBER NOT NULL
);
CREATE TABLE comuna (
    id_comuna     NUMBER NOT NULL,
    nombre_comuna VARCHAR2(250) NOT NULL,
    provincia_id  NUMBER NOT NULL
);
CREATE TABLE genero (
    id_genero   NUMBER NOT NULL,
    tipo_genero VARCHAR2(250) NOT NULL
);
CREATE TABLE sindicato (
    id_sindicato     NUMBER NOT NULL,
    nombre_sindicato VARCHAR2(250) NOT NULL,
    cuota_inicial    NUMBER NOT NULL,
    cuota_mensual    NUMBER NOT NULL,
    empresa_id       NUMBER NOT NULL
);
CREATE TABLE discapacidad (
    id_discapacidad     NUMBER NOT NULL,
    nombre_discapacidad NVARCHAR2(250) NOT NULL
);
CREATE TABLE beneficio (
    id_beneficio      NUMBER NOT NULL,
    nombre_beneficio  VARCHAR2(250) NOT NULL,
    descripcion       VARCHAR2(250) NOT NULL,
    porcentaje        NUMBER NOT NULL,
    tipo_beneficio_id NUMBER NOT NULL
);
CREATE TABLE pago (
    id_pago        NUMBER NOT NULL,
    fecha_pago     DATE NOT NULL,
    monto_pago     NUMBER NOT NULL,
    persona_id     NUMBER NOT NULL,
    tipo_pago_id   NUMBER NOT NULL,
    banco_id       NUMBER,
    cheque_id      NUMBER,
    formas_pago_id NUMBER NOT NULL
);
CREATE TABLE persona (
    id_persona             NUMBER NOT NULL,
    numero_pasaporte       VARCHAR2(250),
    rut                    NUMBER(11),
    dv                     CHAR(1),
    primer_nombre          VARCHAR2(250) NOT NULL,
    segundo_nombre         VARCHAR2(250),
    primer_apellido        VARCHAR2(250) NOT NULL,
    segundo_apellido       VARCHAR2(250),
    direccion              VARCHAR2(250) NOT NULL,
    fecha_nacimiento       DATE NOT NULL,
    email                  VARCHAR2(250) NOT NULL,
    pretencion_sueldo      NUMBER NOT NULL,
    curriculum_vitae       CHAR(1) NOT NULL,
    numero_socio           NUMBER NOT NULL,
    genero_id              NUMBER NOT NULL,
    comuna_id              NUMBER NOT NULL,
    estado_civil_id        NUMBER NOT NULL,
    nacionalidad_id        NUMBER NOT NULL,
    sindicato_id_sindicato NUMBER NOT NULL
);
CREATE TABLE vehiculo (
    id_vehiculo      NUMBER NOT NULL,
    marca            VARCHAR2(250) NOT NULL,
    modelo           VARCHAR2(250) NOT NULL,
    patente          VARCHAR2(6) NOT NULL,
    dv_patente       NUMBER(1) NOT NULL,
    color_vehiculo   VARCHAR2(250) NOT NULL,
    numero_chasis    VARCHAR2(17) NOT NULL,
    numero_motor     VARCHAR2(250) NOT NULL,
    tipo_vehiculo_id NUMBER NOT NULL,
    persona_id       NUMBER
);
CREATE TABLE carga (
    id_carga           NUMBER NOT NULL,
    primer_nombre      VARCHAR2(250) NOT NULL,
    segundo_nombre     VARCHAR2(250),
    primer_apellido    VARCHAR2(250) NOT NULL,
    segundo_apellido   VARCHAR2(250),
    rut                NUMBER(11) NOT NULL,
    dv                 CHAR(1) NOT NULL,
    tipo_parentesco_id NUMBER NOT NULL,
    persona_id         NUMBER NOT NULL,
    estado_civil_id    NUMBER NOT NULL,
    comuna_id          NUMBER NOT NULL
);
CREATE TABLE persona_beneficio (
    id_persona_beneficio      NUMBER NOT NULL,
    fecha_solicitud_beneficio DATE NOT NULL,
    beneficio_id              NUMBER NOT NULL,
    persona_id                NUMBER NOT NULL
);
CREATE TABLE beneficio_vehiculo (
    beneficio_id NUMBER NOT NULL,
    vehiculo_id  NUMBER NOT NULL
);
CREATE TABLE persona_discapacidad (
    discapacidad_id NUMBER NOT NULL,
    persona_id      NUMBER NOT NULL
);

ALTER TABLE banco ADD CONSTRAINT banco_pk PRIMARY KEY ( id_banco );
ALTER TABLE beneficio ADD CONSTRAINT beneficio_pk PRIMARY KEY ( id_beneficio );
ALTER TABLE beneficio_vehiculo ADD CONSTRAINT beneficio_vehiculo_pk PRIMARY KEY ( beneficio_id,vehiculo_id );
ALTER TABLE carga ADD CONSTRAINT carga_pk PRIMARY KEY ( id_carga );
ALTER TABLE cheque ADD CONSTRAINT cheque_pk PRIMARY KEY ( id_cheque );
ALTER TABLE comuna ADD CONSTRAINT comuna_pk PRIMARY KEY ( id_comuna );
ALTER TABLE discapacidad ADD CONSTRAINT discapacidad_pk PRIMARY KEY ( id_discapacidad );
ALTER TABLE empresa ADD CONSTRAINT empresa_pk PRIMARY KEY ( id_empresa );
ALTER TABLE estado_civil ADD CONSTRAINT estado_civil_pk PRIMARY KEY ( id_estado_civil );
ALTER TABLE formas_pago ADD CONSTRAINT formas_pago_pk PRIMARY KEY ( id_forma_pago );
ALTER TABLE genero ADD CONSTRAINT genero_pk PRIMARY KEY ( id_genero );
ALTER TABLE nacionalidad ADD CONSTRAINT nacionalidad_pk PRIMARY KEY ( id_nacionalidad );
ALTER TABLE pago ADD CONSTRAINT pago_pk PRIMARY KEY ( id_pago );
ALTER TABLE persona ADD CONSTRAINT persona_pk PRIMARY KEY ( id_persona );
ALTER TABLE persona_beneficio ADD CONSTRAINT persona_beneficio_pk PRIMARY KEY ( id_persona_beneficio );
ALTER TABLE persona_discapacidad ADD CONSTRAINT persona_discapacidad_pk PRIMARY KEY ( discapacidad_id,persona_id );
ALTER TABLE provincia ADD CONSTRAINT provincia_pk PRIMARY KEY ( id_provincia );
ALTER TABLE region ADD CONSTRAINT region_pk PRIMARY KEY ( id_region );
ALTER TABLE sindicato ADD CONSTRAINT sindicato_pk PRIMARY KEY ( id_sindicato );
ALTER TABLE telefono ADD CONSTRAINT telefono_pk PRIMARY KEY ( id_telefono );
ALTER TABLE tipo_beneficio ADD CONSTRAINT tipo_beneficio_pk PRIMARY KEY ( id_tipo_beneficio );
ALTER TABLE tipo_numero ADD CONSTRAINT tipo_numero_pk PRIMARY KEY ( id_tipo_numero );
ALTER TABLE tipo_pago ADD CONSTRAINT tipo_pago_pk PRIMARY KEY ( id_tipo_pago );
ALTER TABLE tipo_parentesco ADD CONSTRAINT tipo_parentesco_pk PRIMARY KEY ( id_parentesco );
ALTER TABLE tipo_vehiculo ADD CONSTRAINT tipo_vehiculo_pk PRIMARY KEY ( id_tipo_vehiculo );
ALTER TABLE vehiculo ADD CONSTRAINT vehiculo_pk PRIMARY KEY ( id_vehiculo );

ALTER TABLE beneficio
    ADD CONSTRAINT beneficio_tipo_beneficio_fk FOREIGN KEY ( tipo_beneficio_id )
        REFERENCES tipo_beneficio ( id_tipo_beneficio );

ALTER TABLE beneficio_vehiculo
    ADD CONSTRAINT beneficio_vehiculo_beneficio_fk FOREIGN KEY ( beneficio_id )
        REFERENCES beneficio ( id_beneficio );

ALTER TABLE beneficio_vehiculo
    ADD CONSTRAINT beneficio_vehiculo_vehiculo_fk FOREIGN KEY ( vehiculo_id )
        REFERENCES vehiculo ( id_vehiculo );

ALTER TABLE carga
    ADD CONSTRAINT carga_comuna_fk FOREIGN KEY ( comuna_id )
        REFERENCES comuna ( id_comuna );

ALTER TABLE carga
    ADD CONSTRAINT carga_estado_civil_fk FOREIGN KEY ( estado_civil_id )
        REFERENCES estado_civil ( id_estado_civil );

ALTER TABLE carga
    ADD CONSTRAINT carga_persona_fk FOREIGN KEY ( persona_id )
        REFERENCES persona ( id_persona );

ALTER TABLE carga
    ADD CONSTRAINT carga_tipo_parentesco_fk FOREIGN KEY ( tipo_parentesco_id )
        REFERENCES tipo_parentesco ( id_parentesco );

ALTER TABLE comuna
    ADD CONSTRAINT comuna_provincia_fk FOREIGN KEY ( provincia_id )
        REFERENCES provincia ( id_provincia );

ALTER TABLE pago
    ADD CONSTRAINT pago_banco_fk FOREIGN KEY ( banco_id )
        REFERENCES banco ( id_banco );

ALTER TABLE pago
    ADD CONSTRAINT pago_cheque_fk FOREIGN KEY ( cheque_id )
        REFERENCES cheque ( id_cheque );

ALTER TABLE pago
    ADD CONSTRAINT pago_formas_pago_fk FOREIGN KEY ( formas_pago_id )
        REFERENCES formas_pago ( id_forma_pago );

ALTER TABLE pago
    ADD CONSTRAINT pago_persona_fk FOREIGN KEY ( persona_id )
        REFERENCES persona ( id_persona );

ALTER TABLE pago
    ADD CONSTRAINT pago_tipo_pago_fk FOREIGN KEY ( tipo_pago_id )
        REFERENCES tipo_pago ( id_tipo_pago );

ALTER TABLE persona_beneficio
    ADD CONSTRAINT persona_beneficio_beneficio_fk FOREIGN KEY ( beneficio_id )
        REFERENCES beneficio ( id_beneficio );

ALTER TABLE persona_beneficio
    ADD CONSTRAINT persona_beneficio_persona_fk FOREIGN KEY ( persona_id )
        REFERENCES persona ( id_persona );

ALTER TABLE persona
    ADD CONSTRAINT persona_comuna_fk FOREIGN KEY ( comuna_id )
        REFERENCES comuna ( id_comuna );
 
ALTER TABLE persona_discapacidad
    ADD CONSTRAINT persona_discapacidad_discapacidad_fk FOREIGN KEY ( discapacidad_id )
        REFERENCES discapacidad ( id_discapacidad );

ALTER TABLE persona_discapacidad
    ADD CONSTRAINT persona_discapacidad_persona_fk FOREIGN KEY ( persona_id )
        REFERENCES persona ( id_persona );

ALTER TABLE persona
    ADD CONSTRAINT persona_estado_civil_fk FOREIGN KEY ( estado_civil_id )
        REFERENCES estado_civil ( id_estado_civil );

ALTER TABLE persona
    ADD CONSTRAINT persona_genero_fk FOREIGN KEY ( genero_id )
        REFERENCES genero ( id_genero );

ALTER TABLE persona
    ADD CONSTRAINT persona_nacionalidad_fk FOREIGN KEY ( nacionalidad_id )
        REFERENCES nacionalidad ( id_nacionalidad );

ALTER TABLE persona
    ADD CONSTRAINT persona_sindicato_fk FOREIGN KEY ( sindicato_id_sindicato )
        REFERENCES sindicato ( id_sindicato );

ALTER TABLE provincia
    ADD CONSTRAINT provincia_region_fk FOREIGN KEY ( region_id )
        REFERENCES region ( id_region );

ALTER TABLE sindicato
    ADD CONSTRAINT sindicato_empresa_fk FOREIGN KEY ( empresa_id )
        REFERENCES empresa ( id_empresa );

ALTER TABLE telefono
    ADD CONSTRAINT telefono_persona_fk FOREIGN KEY ( persona_id )
        REFERENCES persona ( id_persona );

ALTER TABLE telefono
    ADD CONSTRAINT telefono_tipo_numero_fk FOREIGN KEY ( tipo_numero_id )
        REFERENCES tipo_numero ( id_tipo_numero );

ALTER TABLE vehiculo
    ADD CONSTRAINT vehiculo_persona_fk FOREIGN KEY ( persona_id )
        REFERENCES persona ( id_persona );

ALTER TABLE vehiculo
    ADD CONSTRAINT vehiculo_tipo_vehiculo_fk FOREIGN KEY ( tipo_vehiculo_id )
        REFERENCES tipo_vehiculo ( id_tipo_vehiculo );
        
        
INSERT INTO estado_civil VALUES (1, 'Casado/a');
INSERT INTO estado_civil VALUES (2, 'Soltero/a');
INSERT INTO estado_civil VALUES (3, 'Viudo/a');
INSERT INTO estado_civil VALUES (4, 'Divorciado/a');
INSERT INTO estado_civil VALUES (5, 'Separado/a');

INSERT INTO region VALUES (1,'Tarapacá');
INSERT INTO region VALUES (2,'Antofagasta');
INSERT INTO region VALUES (3,'Atacama');
INSERT INTO region VALUES (4,'Coquimbo');
INSERT INTO region VALUES (5,'Valparaíso');
INSERT INTO region VALUES (6,'OHiggins');
INSERT INTO region VALUES (7,'Maule');
INSERT INTO region VALUES (8,'BioBio');
INSERT INTO region VALUES (9,'Araucania');
INSERT INTO region VALUES (10,'Los Lagos');
INSERT INTO region VALUES (11,'Aysen');
INSERT INTO region VALUES (12,'Magallanes y antartica Chilena');
INSERT INTO region VALUES (13,'Metropolitana');
INSERT INTO region VALUES (14,'los Rios');
INSERT INTO region VALUES (15,'Arica y Parinacota');
INSERT INTO region VALUES (16,'Nuble');

INSERT INTO provincia  VALUES (1,'Arica',15);
INSERT INTO provincia  VALUES (2,'Parinacota',15);
INSERT INTO provincia  VALUES (3,'Iquique',1);
INSERT INTO provincia  VALUES (4,'Tamarugal',1);
INSERT INTO provincia  VALUES (5,'Antofagasta',2);
INSERT INTO provincia  VALUES (6,'El Loa',2);
INSERT INTO provincia  VALUES (7,'Tocopilla',2);
INSERT INTO provincia  VALUES (8,'Copiapó',3);
INSERT INTO provincia  VALUES (9,'Chañaral',3);
INSERT INTO provincia  VALUES (10,'Huasco',3);
INSERT INTO provincia  VALUES (11,'Elqui',4);
INSERT INTO provincia  VALUES (12,'Choapa',4);
INSERT INTO provincia  VALUES (13,'Limari',4);
INSERT INTO provincia  VALUES (14,'Valparaíso',5);
INSERT INTO provincia  VALUES (15,'Marga Marga',5);
INSERT INTO provincia  VALUES (16,'Isla de Pascua',5);
INSERT INTO provincia  VALUES (17,'Los Andes',5);
INSERT INTO provincia  VALUES (18,'Petorca',5);
INSERT INTO provincia  VALUES (19,'Quillota',5);
INSERT INTO provincia  VALUES (20,'San Antonio',5);
INSERT INTO provincia  VALUES (21,'San Felipe',5);
INSERT INTO provincia  VALUES (22,'Cachapoal',6);
INSERT INTO provincia  VALUES (23,'Cardenal Caro',6);
INSERT INTO provincia  VALUES (24,'Colchagua',6);
INSERT INTO provincia  VALUES (25,'Talca',7);
INSERT INTO provincia  VALUES (26,'Cauquenes',7);
INSERT INTO provincia  VALUES (27,'Curico',7);
INSERT INTO provincia  VALUES (28,'Linares',7);
INSERT INTO provincia  VALUES (29,'Concepción',8);
INSERT INTO provincia  VALUES (30,'Arauco',8);
INSERT INTO provincia  VALUES (31,'Bío- Bío',8);
INSERT INTO provincia  VALUES (32,'Diguillín',16);
INSERT INTO provincia  VALUES (33,'Itata',16);
INSERT INTO provincia  VALUES (34,'Punilla',16);
INSERT INTO provincia  VALUES (35,'Cautín',9);
INSERT INTO provincia  VALUES (36,'Malleco',9);
INSERT INTO provincia  VALUES (37,'Valdivia',14);
INSERT INTO provincia  VALUES (38,'Ranco',14);
INSERT INTO provincia  VALUES (39,'Llanquihue',10);
INSERT INTO provincia  VALUES (40,'Chiloe',10);
INSERT INTO provincia  VALUES (41,'Osorno',10);
INSERT INTO provincia  VALUES (42,'Palena',10);
INSERT INTO provincia  VALUES (43,'Coihaique',11);
INSERT INTO provincia  VALUES (44,'Aisén',11);
INSERT INTO provincia  VALUES (45,'Capitan Prat',11);
INSERT INTO provincia  VALUES (46,'General Carrera',11);
INSERT INTO provincia  VALUES (47,'Magallanes',12);
INSERT INTO provincia  VALUES (48,'Antártica Chilena',12);
INSERT INTO provincia  VALUES (49,'Tierra del Fuego',12);
INSERT INTO provincia  VALUES (50,'Ultima Esperanza',12);
INSERT INTO provincia  VALUES (51,'Santiago',13);
INSERT INTO provincia  VALUES (52,'Cordillera',13);
INSERT INTO provincia  VALUES (53,'Chacabuco',13);
INSERT INTO provincia  VALUES (54,'Maipo',13);
INSERT INTO provincia  VALUES (55,'Melipilla',13);
INSERT INTO provincia  VALUES (56,'Talagante',13);

INSERT INTO comuna VALUES (1, 'Peñalolen',51);
INSERT INTO comuna VALUES (2, 'Peralillo',24);
INSERT INTO comuna VALUES (3, 'Penco',29);
INSERT INTO comuna VALUES (4, 'Perquero',35);
INSERT INTO comuna VALUES (5, 'Peñaflor',56);

INSERT INTO nacionalidad VALUES (1,'Chileno');
INSERT INTO nacionalidad VALUES (2,'Peruano');
INSERT INTO nacionalidad VALUES (3,'Boliviano');
INSERT INTO nacionalidad VALUES (4,'Argentino');
INSERT INTO nacionalidad VALUES (5,'Brazileño');
INSERT INTO nacionalidad VALUES (6,'Venezolano');

INSERT INTO genero VALUES (1, 'Masculino');
INSERT INTO genero VALUES (2, 'Femenino');
INSERT INTO genero VALUES (3, 'Otro');
INSERT INTO genero VALUES (4, 'No me identifico');
INSERT INTO genero VALUES (5, 'Helicoptero Apache');

INSERT INTO tipo_parentesco VALUES (1,'Padre');
INSERT INTO tipo_parentesco VALUES (2,'Madre');
INSERT INTO tipo_parentesco VALUES (3,'Hijo/a');
INSERT INTO tipo_parentesco VALUES (4,'Hermano/a');
INSERT INTO tipo_parentesco VALUES (5,'Abuelo/a');
INSERT INTO tipo_parentesco VALUES (6,'Nieto/a');

INSERT INTO tipo_beneficio VALUES (1,'Salud');
INSERT INTO tipo_beneficio VALUES (2,'Educacion');
INSERT INTO tipo_beneficio VALUES (3,'Transporte');

INSERT INTO discapacidad VALUES (1,'Intelectual');
INSERT INTO discapacidad VALUES (2,'Visual');
INSERT INTO discapacidad VALUES (3,'Auditiva');
INSERT INTO discapacidad VALUES (4,'Visceral');
INSERT INTO discapacidad VALUES (5,'Fisica');
INSERT INTO discapacidad VALUES (6,'Psiquica');

INSERT INTO tipo_numero VALUES (1,'Celular');
INSERT INTO tipo_numero VALUES (2,'Casa');

INSERT INTO tipo_pago VALUES (1,'Efectivo');
INSERT INTO tipo_pago VALUES (2,'Transferencia');
INSERT INTO tipo_pago VALUES (3,'Deposito');
INSERT INTO tipo_pago VALUES (4,'Cheque');

INSERT INTO banco VALUES (1,'Banco Estado');
INSERT INTO banco VALUES (2,'Banco de Chile');
INSERT INTO banco VALUES (3,'Banco Santander');
INSERT INTO banco VALUES (4,'Banco Itau');
INSERT INTO banco VALUES (5,'Banco Falabella');

INSERT INTO empresa VALUES (1,'Duoc');
INSERT INTO empresa VALUES (2,'CCU');
INSERT INTO empresa VALUES (3,'Coca Cola');

INSERT INTO tipo_vehiculo VALUES (1,'Sedan');
INSERT INTO tipo_vehiculo VALUES (2,'Coupe');
INSERT INTO tipo_vehiculo VALUES (3,'Hatchback');
INSERT INTO tipo_vehiculo VALUES (4,'SUV');
INSERT INTO tipo_vehiculo VALUES (5,'Camioneta');

INSERT INTO sindicato VALUES (1,'Sindicato de actores y teatro',6000, 2500,1);
INSERT INTO sindicato VALUES (2,'Sindicato de folclorista',7500, 3000,1);

INSERT INTO beneficio VALUES (1,'Tener un ojo malo','Beneficio para todas las personas con un ojo malo',15,1);
INSERT INTO beneficio VALUES (2,'Estar estudiando','Beneficio para todas las personas que se encuentren cursando alguna carrera',20,2);
INSERT INTO beneficio VALUES (3,'Tener un ñuñuki', 'Beneficio que se le otorga a las persona por tener auto feo',50,3);

INSERT INTO persona VALUES (1,'','18829876','1','Cristian', '','Mardones','','xxxxx','22-05-2022','cr.mardones@duocuc.cl',1000000, 1,123,1,1,2,1,1);