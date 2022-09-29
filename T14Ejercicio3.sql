create database TA14_Ejercicio3;
use TA14_Ejercicio3;
create table Fabricantes (
	Codigo INT AUTO_INCREMENT PRIMARY KEY,
	Nombre NVARCHAR(100)
);
create table Articulos (
	Codigo INT AUTO_INCREMENT PRIMARY KEY,
	Nombre NVARCHAR(100),
    Precio INT,
    Fabricante INT,
    foreign key (Fabricante) references Fabricantes(Codigo)
);