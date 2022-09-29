create database TA14_Ejercicio8;
use TA14_Ejercicio8;
create table Piezas (
	Codigo INT AUTO_INCREMENT PRIMARY KEY,
	Nombre NVARCHAR(100)
);
create table Proveedores (
	Id CHAR(4) PRIMARY KEY,
	Nombre NVARCHAR(100)
);
create table Suministra (
	CodigoPieza INT,
	IdProveedor CHAR(4),
    Precio INT,
    PRIMARY KEY (CodigoPieza, IdProveedor),
    foreign key (CodigoPieza) references Piezas(Codigo),
    foreign key (IdProveedor) references Proveedores(Id)
);