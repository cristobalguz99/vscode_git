CREATE TABLE banco (
    id_banco     NUMBER NOT NULL,
    nombre_banco NVARCHAR2(250) NOT NULL
);

CREATE TABLE beneficio (
    id_beneficio      NUMBER NOT NULL,
    nombre_beneficio  VARCHAR2(250) NOT NULL,
    descripcion       VARCHAR2(250) NOT NULL,
    tipo_beneficio_id NUMBER NOT NULL
);
CREATE TABLE beneficio_vehiculo (
    beneficio_id NUMBER NOT NULL,
    vehiculos_id NUMBER NOT NULL
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
    personas_id        NUMBER NOT NULL,
    estado_civil_id    NUMBER NOT NULL,
    comunas_id         NUMBER NOT NULL
);

CREATE TABLE cheque (
    id_cheque     NUMBER NOT NULL,
    numero_cheque NUMBER NOT NULL
);
CREATE TABLE comunas (
    id_comuna     NUMBER NOT NULL,
    nombre_comuna VARCHAR2(250) NOT NULL,
    provincias_id NUMBER NOT NULL
);
CREATE TABLE discapacidades (
    id_discapacidad     NUMBER NOT NULL,
    nombre_discapacidad NVARCHAR2(250) NOT NULL
);
CREATE TABLE empresa (
    id_empresa     NUMBER NOT NULL,
    nombre_empresa NVARCHAR2(250) NOT NULL
);
CREATE TABLE estado_civil (
    id_estado_civil NUMBER NOT NULL,
    estado_civil    VARCHAR2(250) NOT NULL
);
CREATE TABLE formas_pago (
    id_forma_pago     NUMBER NOT NULL,
    nombre_forma_pago NVARCHAR2(250) NOT NULL
);
CREATE TABLE generos (
    id_genero   NUMBER NOT NULL,
    tipo_genero VARCHAR2(250) NOT NULL
);
CREATE TABLE nacionalidades (
    id_nacionalidades NUMBER NOT NULL,
    nacionalidad      VARCHAR2(250) NOT NULL
);
CREATE TABLE pago (
    id_pago             NUMBER NOT NULL,
    fecha_pago          DATE NOT NULL,
    monto_pago          NUMBER NOT NULL,
    personas_id_persona NUMBER NOT NULL,
    tipo_pago_id        NUMBER NOT NULL,
    banco_id            NUMBER NOT NULL,
    cheque_id           NUMBER NOT NULL,
    formas_pago_id      NUMBER NOT NULL
);
CREATE TABLE persona_beneficio (
    id_persona_beneficio      NUMBER NOT NULL,
    fecha_solicitud_beneficio DATE NOT NULL,
    beneficio_id              NUMBER NOT NULL,
    personas_id               NUMBER NOT NULL
);
CREATE TABLE persona_discapacidad (
    discapacidades_id_discapacidad NUMBER NOT NULL,
    personas_id_persona            NUMBER NOT NULL
);
CREATE TABLE personas (
    id_persona        NUMBER NOT NULL,
    numero_pasaporte  VARCHAR2(250),
    rut               NUMBER(11),
    dv                CHAR(1),
    primer_nombre     VARCHAR2(250) NOT NULL,
    segundo_nombre    VARCHAR2(250),
    primer_apellido   VARCHAR2(250) NOT NULL,
    segundo_apellido  VARCHAR2(250),
    direccion         VARCHAR2(250) NOT NULL,
    fecha_nacimiento  DATE NOT NULL,
    email             VARCHAR2(250) NOT NULL,
    pretencion_sueldo NUMBER NOT NULL,
    curriculum_vitae  CHAR(1) NOT NULL,
    numero_socio      NUMBER NOT NULL,
    generos_id        NUMBER NOT NULL,
    comunas_id        NUMBER NOT NULL,
    estado_civil_id   NUMBER NOT NULL,
    nacionalidades_id NUMBER NOT NULL
);
CREATE TABLE provincias (
    id_provincia     NUMBER NOT NULL,
    nombre_provincia VARCHAR2(250) NOT NULL,
    regiones_id      NUMBER NOT NULL
);
CREATE TABLE regiones (
    id_region     NUMBER NOT NULL,
    nombre_region VARCHAR2(250) NOT NULL
);
CREATE TABLE sindicatos (
    id_sindicato     NUMBER NOT NULL,
    nombre_sindicato VARCHAR2(250) NOT NULL,
    cuota_inicial    NUMBER NOT NULL,
    cuota_mensual    NUMBER NOT NULL,
    "_Persona"       NUMBER NOT NULL,
    empresa_id       NUMBER NOT NULL
);
CREATE TABLE telefonos (
    id_telefono     NUMBER NOT NULL,
    numero_telefono NUMBER NOT NULL,
    tipo_numero_id  NUMBER NOT NULL,
    personas_id     NUMBER NOT NULL
);
CREATE TABLE tipo_beneficio (
    id_tipo_beneficio NUMBER NOT NULL,
    tipo_beneficio    NVARCHAR2(250) NOT NULL
);
CREATE TABLE tipo_numero (
    id_tipo_numero NUMBER NOT NULL,
    tipo_numero    VARCHAR2(250) NOT NULL
);
CREATE TABLE tipo_parentesco (
    id_parentesco   NUMBER NOT NULL,
    tipo_parentesco VARCHAR2(250) NOT NULL
);
CREATE TABLE tipo_pago (
    id_tipo_pago NUMBER NOT NULL,
    tipo_pago    VARCHAR2(250) NOT NULL
);

CREATE TABLE tipo_vehiculo (
    id_tipo_vehiculo NUMBER NOT NULL,
    tipo_vechiculo   VARCHAR2(250) NOT NULL
);
CREATE TABLE vehiculos (
    id_vehiculo      NUMBER NOT NULL,
    marca            VARCHAR2(250) NOT NULL,
    modelo           VARCHAR2(250) NOT NULL,
    patente          VARCHAR2(6) NOT NULL,
    dv_patente       NUMBER(1) NOT NULL,
    color_vehiculo   VARCHAR2(250) NOT NULL,
    numero_chasis    VARCHAR2(17) NOT NULL,
    numero_motor     VARCHAR2(250) NOT NULL,
    tipo_vehiculo_id NUMBER NOT NULL
);

ALTER TABLE banco ADD CONSTRAINT banco_pk PRIMARY KEY ( id_banco );
ALTER TABLE beneficio ADD CONSTRAINT beneficio_pk PRIMARY KEY ( id_beneficio );
ALTER TABLE beneficio_vehiculo ADD CONSTRAINT beneficio_vehiculo_pk PRIMARY KEY ( beneficio_id, vehiculos_id );
ALTER TABLE carga ADD CONSTRAINT carga_pk PRIMARY KEY ( id_carga );
ALTER TABLE cheque ADD CONSTRAINT cheque_pk PRIMARY KEY ( id_cheque );
ALTER TABLE comunas ADD CONSTRAINT comunas_pk PRIMARY KEY ( id_comuna );
ALTER TABLE discapacidades ADD CONSTRAINT discapacidades_pk PRIMARY KEY ( id_discapacidad );
ALTER TABLE empresa ADD CONSTRAINT empresa_pk PRIMARY KEY ( id_empresa );
ALTER TABLE estado_civil ADD CONSTRAINT estado_civil_pk PRIMARY KEY ( id_estado_civil );
ALTER TABLE formas_pago ADD CONSTRAINT formas_pago_pk PRIMARY KEY ( id_forma_pago );
ALTER TABLE generos ADD CONSTRAINT generos_pk PRIMARY KEY ( id_genero );
ALTER TABLE nacionalidades ADD CONSTRAINT nacionalidades_pk PRIMARY KEY ( id_nacionalidades );
ALTER TABLE pago ADD CONSTRAINT pago_pk PRIMARY KEY ( id_pago );
ALTER TABLE persona_beneficio ADD CONSTRAINT persona_beneficio_pk PRIMARY KEY ( id_persona_beneficio );
ALTER TABLE persona_discapacidad ADD CONSTRAINT persona_discapacidad_pk PRIMARY KEY ( discapacidades_id_discapacidad, personas_id_persona );
ALTER TABLE personas ADD CONSTRAINT personas_pk PRIMARY KEY ( id_persona );
ALTER TABLE provincias ADD CONSTRAINT provincias_pk PRIMARY KEY ( id_provincia );
ALTER TABLE regiones ADD CONSTRAINT regiones_pk PRIMARY KEY ( id_region );
ALTER TABLE sindicatos ADD CONSTRAINT sindicatos_pk PRIMARY KEY ( id_sindicato );
ALTER TABLE telefonos ADD CONSTRAINT telefonos_pk PRIMARY KEY ( id_telefono );
ALTER TABLE tipo_beneficio ADD CONSTRAINT tipo_beneficio_pk PRIMARY KEY ( id_tipo_beneficio );
ALTER TABLE tipo_numero ADD CONSTRAINT tipo_numero_pk PRIMARY KEY ( id_tipo_numero );
ALTER TABLE tipo_pago ADD CONSTRAINT tipo_pago_pk PRIMARY KEY ( id_tipo_pago );
ALTER TABLE tipo_parentesco ADD CONSTRAINT tipo_parentesco_pk PRIMARY KEY ( id_parentesco );
ALTER TABLE tipo_vehiculo ADD CONSTRAINT tipo_vehiculo_pk PRIMARY KEY ( id_tipo_vehiculo );
ALTER TABLE vehiculos ADD CONSTRAINT vehiculos_pk PRIMARY KEY ( id_vehiculo );

ALTER TABLE beneficio
    ADD CONSTRAINT beneficio_tipo_beneficio_fk FOREIGN KEY ( tipo_beneficio_id )
        REFERENCES tipo_beneficio ( id_tipo_beneficio );

ALTER TABLE beneficio_vehiculo
    ADD CONSTRAINT beneficio_vehiculo_beneficio_fk FOREIGN KEY ( beneficio_id )
        REFERENCES beneficio ( id_beneficio );

ALTER TABLE beneficio_vehiculo
    ADD CONSTRAINT beneficio_vehiculo_vehiculos_fk FOREIGN KEY ( vehiculos_id )
        REFERENCES vehiculos ( id_vehiculo );

ALTER TABLE carga
    ADD CONSTRAINT carga_comunas_fk FOREIGN KEY ( comunas_id )
        REFERENCES comunas ( id_comuna );

ALTER TABLE carga
    ADD CONSTRAINT carga_estado_civil_fk FOREIGN KEY ( estado_civil_id )
        REFERENCES estado_civil ( id_estado_civil );

ALTER TABLE carga
    ADD CONSTRAINT carga_personas_fk FOREIGN KEY ( personas_id )
        REFERENCES personas ( id_persona );

ALTER TABLE carga
    ADD CONSTRAINT carga_tipo_parentesco_fk FOREIGN KEY ( tipo_parentesco_id )
        REFERENCES tipo_parentesco ( id_parentesco );

ALTER TABLE comunas
    ADD CONSTRAINT comunas_provincias_fk FOREIGN KEY ( provincias_id )
        REFERENCES provincias ( id_provincia );

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
    ADD CONSTRAINT pago_personas_fk FOREIGN KEY ( personas_id_persona )
        REFERENCES personas ( id_persona );

ALTER TABLE pago
    ADD CONSTRAINT pago_tipo_pago_fk FOREIGN KEY ( tipo_pago_id )
        REFERENCES tipo_pago ( id_tipo_pago );

ALTER TABLE persona_beneficio
    ADD CONSTRAINT persona_beneficio_beneficio_fk FOREIGN KEY ( beneficio_id )
        REFERENCES beneficio ( id_beneficio );

ALTER TABLE persona_beneficio
    ADD CONSTRAINT persona_beneficio_personas_fk FOREIGN KEY ( personas_id )
        REFERENCES personas ( id_persona );

ALTER TABLE persona_discapacidad
    ADD CONSTRAINT persona_discapacidad_discapacidades_fk FOREIGN KEY ( discapacidades_id_discapacidad )
        REFERENCES discapacidades ( id_discapacidad );

ALTER TABLE persona_discapacidad
    ADD CONSTRAINT persona_discapacidad_personas_fk FOREIGN KEY ( personas_id_persona )
        REFERENCES personas ( id_persona );

ALTER TABLE personas
    ADD CONSTRAINT personas_comunas_fk FOREIGN KEY ( comunas_id )
        REFERENCES comunas ( id_comuna );

ALTER TABLE personas
    ADD CONSTRAINT personas_estado_civil_fk FOREIGN KEY ( estado_civil_id )
        REFERENCES estado_civil ( id_estado_civil );

ALTER TABLE personas
    ADD CONSTRAINT personas_generos_fk FOREIGN KEY ( generos_id )
        REFERENCES generos ( id_genero );

ALTER TABLE personas
    ADD CONSTRAINT personas_nacionalidades_fk FOREIGN KEY ( nacionalidades_id )
        REFERENCES nacionalidades ( id_nacionalidades );

ALTER TABLE provincias
    ADD CONSTRAINT provincias_regiones_fk FOREIGN KEY ( regiones_id )
        REFERENCES regiones ( id_region );

ALTER TABLE sindicatos
    ADD CONSTRAINT sindicatos_empresa_fk FOREIGN KEY ( empresa_id )
        REFERENCES empresa ( id_empresa );

ALTER TABLE sindicatos
    ADD CONSTRAINT sindicatos_personas_fk FOREIGN KEY ( "_Persona" )
        REFERENCES personas ( id_persona );

ALTER TABLE telefonos
    ADD CONSTRAINT telefonos_personas_fk FOREIGN KEY ( personas_id )
        REFERENCES personas ( id_persona );

ALTER TABLE telefonos
    ADD CONSTRAINT telefonos_tipo_numero_fk FOREIGN KEY ( tipo_numero_id )
        REFERENCES tipo_numero ( id_tipo_numero );

ALTER TABLE vehiculos
    ADD CONSTRAINT vehiculos_tipo_vehiculo_fk FOREIGN KEY ( tipo_vehiculo_id )
        REFERENCES tipo_vehiculo ( id_tipo_vehiculo );