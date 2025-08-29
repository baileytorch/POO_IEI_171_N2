CREATE TABLE IF NOT EXISTS nacionalidad(
    id_nacionalidad INT AUTO_INCREMENT,
    pais VARCHAR(60) NOT NULL UNIQUE, 
    nacionalidad VARCHAR(60) NOT NULL,

    CONSTRAINT pk_nacionalidad PRIMARY KEY (id_nacionalidad)
);

CREATE TABLE IF NOT EXISTS autor(
    id_autor INT AUTO_INCREMENT,
    nombre_autor VARCHAR(255) NOT NULL,
    pseudonimo VARCHAR(150) NULL,
    id_nacionalidad INT NULL,
    biografia TEXT NULL,

    CONSTRAINT pk_autor PRIMARY KEY (id_autor),
    CONSTRAINT fk_autor_nacionalidad FOREIGN KEY (id_nacionalidad) REFERENCES nacionalidad(id_nacionalidad)
);

CREATE TABLE IF NOT EXISTS comuna(
    codigo_comuna CHAR(5) NOT NULL UNIQUE,
    nombre_comuna VARCHAR(50) NOT NULL UNIQUE,

    CONSTRAINT pk_comuna PRIMARY KEY (codigo_comuna)
);

CREATE TABLE IF NOT EXISTS direccion(
    id_direccion INT AUTO_INCREMENT,
    codigo_comuna CHAR(5) NOT NULL,
    calle VARCHAR(255) NOT NULL,
    numero VARCHAR(15) NOT NULL,
    departamento VARCHAR(10) NULL,

    CONSTRAINT pk_direccion PRIMARY KEY (id_direccion),
    CONSTRAINT fk_direccion_comuna FOREIGN KEY (codigo_comuna) REFERENCES comuna(codigo_comuna)
);

CREATE TABLE IF NOT EXISTS categoria(
    id_categoria INT AUTO_INCREMENT,
    categoria VARCHAR(50) NOT NULL,
    descripcion_categoria VARCHAR(255) NULL,

    CONSTRAINT pk_categoria PRIMARY KEY (id_categoria)
);

CREATE TABLE IF NOT EXISTS biblioteca(
    id_biblioteca INT AUTO_INCREMENT,
    nombre_biblioteca VARCHAR(255) NOT NULL,
    web VARCHAR(255) NULL,
    habilitado TINYINT NOT NULL DEFAULT=1,
    id_direccion INT NULL,

    CONSTRAINT pk_biblioteca PRIMARY KEY (id_biblioteca),
    CONSTRAINT fk_biblioteca_direccion FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)
);

CREATE TABLE IF NOT EXISTS libro(
    id_libro INT AUTO_INCREMENT,
    id_biblioteca INT NOT NULL,
    id_autor INT NOT NULL,
    id_categoria INT NULL,
    titulo VARCHAR(255) NOT NULL,
    paginas INT NOT NULL,
    copias INT NOT NULL,
    fisico TINYINT NOT NULL DEFAULT=1,
    ubicacion VARCHAR(255) NULL,
    habilitado TINYINT NOT NULL DEFAULT=1,

    CONSTRAINT pk_libro PRIMARY KEY (id_libro),
    CONSTRAINT fk_libro_biblioteca FOREIGN KEY (id_biblioteca) REFERENCES biblioteca(id_biblioteca),
    CONSTRAINT fk_libro_autor FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
    CONSTRAINT fk_libro_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE IF NOT EXISTS lector(
    rut_lector INT NOT NULL UNIQUE,
    digito_verificador CHAR(1) NOT NULL,
    nombre_lector VARCHAR(255) NOT NULL,
    correo_lector VARCHAR(255) NULL,
    telefono_lector VARCHAR(12) NULL,
    id_direccion INT NOT NULL,
    id_biblioteca INT NOT NULL,

    CONSTRAINT pk_lector PRIMARY KEY (rut_lector),
    CONSTRAINT fk_lector_direccion FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion),
    CONSTRAINT fk_lector_biblioteca FOREIGN KEY (id_biblioteca) REFERENCES biblioteca(id_biblioteca)
);

CREATE TABLE IF NOT EXISTS prestamo(
    id_prestamo INT NOT NULL UNIQUE,
    rut_lector INT NOT NULL,
    id_libro INT NOT NULL,
    fecha_prestamo ,
    fecha_devolucion,
    fecha_retorno
);