create database TA14_Ejercicio4;
use TA14_Ejercicio4;
create table Departamentos (
	Codigo INT AUTO_INCREMENT PRIMARY KEY,
	Nombre NVARCHAR(100),
    Presupuesto INT
);
create table Empleados (
	DNI VARCHAR(8) PRIMARY KEY,
	Nombre NVARCHAR(100),
    Apellidos NVARCHAR(255),
    Departamento INT,
    foreign key (Departamento) references Departamentos(Codigo)
);