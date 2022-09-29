create database TA14_Ejercicio11;
use TA14_Ejercicio11;
create table Facultad (
	Codigo INT AUTO_INCREMENT PRIMARY KEY,
	Nombre NVARCHAR(100)
);
create table Investigadores (
	DNI VARCHAR(8) PRIMARY KEY,
	NomApels NVARCHAR(255),
    Facultad INT,
	foreign key (Facultad) references Facultad(Codigo)
);
create table Equipos (
	NumSerie CHAR(4) PRIMARY KEY,
	Nombre NVARCHAR(100),
	Facultad INT,
    foreign key (Facultad) references Facultad(Codigo)
);
create table Reserva (
	DNI VARCHAR(8),
	NumSerie CHAR(4),
    Comienzo DATETIME,
    Fin DATETIME,
    PRIMARY KEY (DNI, NumSerie),
    foreign key (DNI) references Investigadores(DNI),
    foreign key (NumSerie) references Equipos(NumSerie)
);