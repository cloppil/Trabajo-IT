
-- Crear base de datos
CREATE DATABASE IF NOT EXISTS taller_mecanico;
USE taller_mecanico;

-- Tabla Cliente
CREATE TABLE Cliente (
    dniCliente VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    contrasenia VARCHAR(50) NOT NULL,
    telefono INT NOT NULL
);

-- Tabla Vehiculo
CREATE TABLE Vehiculo (
    matricula VARCHAR(9) PRIMARY KEY,
    marca VARCHAR(11),
    dniCliente VARCHAR(9) NOT NULL,
    FOREIGN KEY (dniCliente) REFERENCES Cliente(dniCliente)
);

-- Tabla Historial
CREATE TABLE Historial (
    idHistorial INT PRIMARY KEY,
    idVehiculo VARCHAR(9) NOT NULL,
    FOREIGN KEY (idVehiculo) REFERENCES Vehiculo(matricula)
);

-- Tabla Mecanico
CREATE TABLE Mecanico (
    dniMecanico VARCHAR(9) PRIMARY KEY,
    salario INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    contrasenia VARCHAR(50) NOT NULL,
    rama VARCHAR(50) NOT NULL
);

-- Tabla Cita
CREATE TABLE Cita (
    idCita INT PRIMARY KEY,
    fecha DATE NOT NULL,
    idVehiculo VARCHAR(9) NOT NULL,
    idMecanico VARCHAR(9) NOT NULL,
    FOREIGN KEY (idVehiculo) REFERENCES Vehiculo(matricula),
    FOREIGN KEY (idMecanico) REFERENCES Mecanico(dniMecanico)
);

-- Tabla Factura
CREATE TABLE Factura (
    idFactura INT PRIMARY KEY,
    importeTotal DOUBLE NOT NULL,
    fecha DATE NOT NULL,
    idCita INT NOT NULL,
    FOREIGN KEY (idCita) REFERENCES Cita(idCita)
);

-- Tabla Reparacion
CREATE TABLE Reparacion (
    idReparacion INT PRIMARY KEY,
    tipo VARCHAR(11) NOT NULL,
    precio DOUBLE NOT NULL,
    comentario VARCHAR(35) NOT NULL,
    idCita INT NOT NULL,
    FOREIGN KEY (idCita) REFERENCES Cita(idCita)
);

-- Tabla Piezas
CREATE TABLE Piezas (
    idPieza INT PRIMARY KEY,
    nombrePieza VARCHAR(50) NOT NULL,
    idReparacion INT NOT NULL,
    FOREIGN KEY (idReparacion) REFERENCES Reparacion(idReparacion)
);

-- Datos de prueba
INSERT INTO Cliente VALUES ('12345678A', 'Juan Pérez', 'juan@example.com', '1234', 600123456);
INSERT INTO Cliente VALUES ('98765432B', 'María López', 'maria@example.com', 'abcd', 611234567);

INSERT INTO Vehiculo VALUES ('MAT123', 'Toyota', '12345678A');
INSERT INTO Vehiculo VALUES ('MAT456', 'Honda', '98765432B');

INSERT INTO Historial VALUES (1, 'MAT123');
INSERT INTO Historial VALUES (2, 'MAT456');

INSERT INTO Mecanico VALUES ('11122233X', 1600, 'Carlos Ruiz', 'pass123', 'motor');
INSERT INTO Mecanico VALUES ('44455566Y', 1700, 'Ana Torres', 'pass456', 'electricidad');

INSERT INTO Cita VALUES (1, '2025-06-01', 'MAT123', '11122233X');
INSERT INTO Cita VALUES (2, '2025-06-02', 'MAT456', '44455566Y');

INSERT INTO Factura VALUES (1, 250.5, '2025-06-03', 1);
INSERT INTO Factura VALUES (2, 175.0, '2025-06-04', 2);

INSERT INTO Reparacion VALUES (1, 'Motor', 120.75, 'Cambio aceite', 1);
INSERT INTO Reparacion VALUES (2, 'Frenos', 200.00, 'Sustituir pastillas', 2);

INSERT INTO Piezas VALUES (1, 'Filtro de aceite', 1);
INSERT INTO Piezas VALUES (2, 'Pastillas de freno', 2);
