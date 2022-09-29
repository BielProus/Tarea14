create database TA14_Ejercicio2;
use TA14_Ejercicio2;
create table Libro (
	ClaveLibro INT AUTO_INCREMENT PRIMARY KEY,
	Titulo VARCHAR(60),
    Idioma VARCHAR(15),
    Formato VARCHAR(15),
    ClaveEditorial SMALLINT
);
create table Tema (
	ClaveTema SMALLINT AUTO_INCREMENT PRIMARY KEY,
	Nombre VARCHAR(40)
);
create table Autor (
	ClaveAutor INT AUTO_INCREMENT PRIMARY KEY,
	Nombre VARCHAR(60)
);
create table Editorial (
	ClaveEditorial SMALLINT AUTO_INCREMENT PRIMARY KEY,
	Nombre VARCHAR(60),
    Direccion VARCHAR(60),
    Telefono VARCHAR(15)
);
create table Ejemplar (
	ClaveEjemplar INT AUTO_INCREMENT PRIMARY KEY,
	ClaveLibro INT,
    NumeroOrden SMALLINT,
    Edicion SMALLINT,
    Ubicacion VARCHAR(15),
    Categoria CHAR,
    foreign key (ClaveLibro) references Libro(ClaveLibro)
);
create table Socio (
	ClaveSocio INT AUTO_INCREMENT PRIMARY KEY,
	Nombre VARCHAR(60),
    Direccion VARCHAR(60),
    Telefono VARCHAR(15),
    Categoria CHAR
);
create table Prestamo (
	ClaveSocio INT,
	ClaveEjemplar INT,
	NumeroOrden SMALLINT,
    Fecha_prestamo DATE,
    Fecha_devolucion DATE,
    Notas BLOB,
    foreign key (ClaveSocio) references Socio(ClaveSocio),
    foreign key (ClaveEjemplar) references Ejemplar(ClaveEjemplar)
);
create table Trata_sobre (
	ClaveLibro INT,
	ClaveTema SMALLINT,
    foreign key (ClaveLibro) references Libro(Clavelibro),
    foreign key (ClaveTema) references Tema(ClaveTema)
);
create table Escrito_por (
	ClaveLibro INT,
	ClaveAutor INT,
    foreign key (ClaveLibro) references Libro(Clavelibro),
    foreign key (ClaveAutor) references Autor(ClaveAutor)
);