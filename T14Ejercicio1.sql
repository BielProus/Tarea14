create database TA14_Ejercicio1;
use TA14_Ejercicio1;
create table Estacion (
	Identificador INT AUTO_INCREMENT PRIMARY KEY,
	Latitud DOUBLE,
    Longitud DOUBLE,
    Altitud DOUBLE
);
create table Muestra (
	IdentificadorEstacion INT,
	Fecha DATE,
    TemperaturaMinima DOUBLE,
    TemperaturaMaxima DOUBLE,
    Precipitaciones DOUBLE,
    HumedadMinima DOUBLE,
    HumedadMaxima DOUBLE,
    VelocidadVientoMinima DOUBLE,
    VelocidadVientoMaxima DOUBLE,
    foreign key (IdentificadorEstacion) references estacion(Identificador)
);