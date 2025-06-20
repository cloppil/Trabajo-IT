CREATE DATABASE IF NOT EXISTS taller_mecanico;
USE taller_mecanico;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Tabla Cliente
CREATE TABLE Cliente (
    dniCliente VARCHAR(9) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    contrasenia VARCHAR(50) NOT NULL,
    telefono INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO Cliente VALUES ('12345678A', 'Juan Perez', 'jua123@autofast.com', '123456aA', 600123456);
INSERT INTO Cliente VALUES ('98765432B', 'Maria Lopez', 'mar987@autofast.com', '123456Bb', 611234567);
INSERT INTO Cliente VALUES ('12365432H', 'Pepe Sanz', 'pep123@autofast.com', '123456Cc', 611233567);
INSERT INTO Cliente VALUES ('32165432C', 'Antonio Carrasco', 'ant321@autofast.com', '123456Dd', 821234567);

-- Tabla Vehiculo
CREATE TABLE Vehiculo (
    matricula VARCHAR(9) NOT NULL,
    marca VARCHAR(11),
    dniCliente VARCHAR(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO Vehiculo VALUES ('1234HZL', 'Toyota', '12345678A');
INSERT INTO Vehiculo VALUES ('9876JRD', 'Honda', '98765432B');
INSERT INTO Vehiculo VALUES ('8756WRZ', 'Opel', '12365432H');
INSERT INTO Vehiculo VALUES ('6158LPN', 'Cupra', '32165432C');

-- Tabla Historial
CREATE TABLE Proveedor (
    idProveedor INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    telefono INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO Proveedor VALUES (1, 'Bosh','bosh@company.com','Barcelona',606789423);
INSERT INTO Proveedor VALUES (2, 'Denso','denso@company.com','Sevilla',606637373);
INSERT INTO Proveedor VALUES (3, 'Hyundai Mobis','hyundai@company.com','Madrid',638384944);
INSERT INTO Proveedor VALUES (4, 'Continental','continental@company.com','Zamora',606789423);

-- Tabla Mecanico
CREATE TABLE Mecanico (
    dniMecanico VARCHAR(9) NOT NULL,
    salario INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    contrasenia VARCHAR(50) NOT NULL,
    rama VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO Mecanico VALUES ('11122233X', 1600, 'Carlos Ruiz', '123456Aa', 'motor');
INSERT INTO Mecanico VALUES ('44455566Y', 1700, 'Ana Torres', '123456Bb', 'electricidad');

-- Tabla Cita
CREATE TABLE Cita (
    idCita INT NOT NULL,
    fecha DATE NOT NULL,
    idVehiculo VARCHAR(9) NOT NULL,
    idMecanico VARCHAR(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO Cita VALUES (1, '2025-06-01', '1234HZL', '11122233X');
INSERT INTO Cita VALUES (2, '2025-06-02', '8756WRZ', '44455566Y');
INSERT INTO Cita VALUES (3, '2025-08-11', '6158LPN', '11122233X');
INSERT INTO Cita VALUES (4, '2025-10-22', '9876JRD', '44455566Y');

-- Tabla Factura
CREATE TABLE Factura (
    idFactura INT NOT NULL,
    importeTotal DOUBLE NOT NULL,
    fecha DATE NOT NULL,
    idReparacion INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO Factura (idFactura, importeTotal, fecha, idReparacion) VALUES 
(1, 250.5, '2025-06-03', 1),
(2, 20.5, '2025-06-01', 2),
(3, 57.25, '2025-06-01', 3),
(4, 175.0, '2025-06-04', 4);

-- Tabla Reparacion
CREATE TABLE Reparacion (
    idReparacion INT NOT NULL,
    tipo VARCHAR(11) NOT NULL,
    precio DOUBLE NOT NULL,
    comentario VARCHAR(35) NOT NULL,
    idCita INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO Reparacion VALUES 
(1, 'Motor', 250.5, 'Cambio aceite', 1),
(2, 'Frenos', 20.5, 'Cambio frenos', 2),
(3, 'Pintura', 57.25, 'Pintar coche', 3),
(4, 'Frenos', 175.0, 'Sustituir pastillas', 4);

-- Tabla Piezas
CREATE TABLE Piezas (
    idPieza INT NOT NULL,
    nombrePieza VARCHAR(50) NOT NULL,
    idReparacion INT NOT NULL,
    idProveedor INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO Piezas VALUES 
(1, 'Filtro de aceite', 1,1),
(2, 'Pastillas de freno', 2,3);

-- Claves primarias
ALTER TABLE Cliente ADD PRIMARY KEY (dniCliente);
ALTER TABLE Vehiculo ADD PRIMARY KEY (matricula);
ALTER TABLE Proveedor ADD PRIMARY KEY (idProveedor);
ALTER TABLE Mecanico ADD PRIMARY KEY (dniMecanico);
ALTER TABLE Cita ADD PRIMARY KEY (idCita);
ALTER TABLE Factura ADD PRIMARY KEY (idFactura);
ALTER TABLE Reparacion ADD PRIMARY KEY (idReparacion);
ALTER TABLE Piezas ADD PRIMARY KEY (idPieza);

ALTER TABLE `Cita` 
  MODIFY `idCita` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `Proveedor` 
  MODIFY `idProveedor` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `Factura` 
  MODIFY `idFactura` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `Reparacion` 
  MODIFY `idReparacion` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `Piezas` 
  MODIFY `idPieza` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

-- Claves foráneas
ALTER TABLE Vehiculo
  ADD KEY fk_vehiculo_cliente (dniCliente),
  ADD CONSTRAINT fk_vehiculo_cliente FOREIGN KEY (dniCliente) REFERENCES Cliente(dniCliente) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE Cita
  ADD KEY fk_cita_vehiculo (idVehiculo),
  ADD KEY fk_cita_mecanico (idMecanico),
  ADD CONSTRAINT fk_cita_vehiculo FOREIGN KEY (idVehiculo) REFERENCES Vehiculo(matricula) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT fk_cita_mecanico FOREIGN KEY (idMecanico) REFERENCES Mecanico(dniMecanico) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Factura
  ADD KEY fk_factura_reparacion (idReparacion),
  ADD CONSTRAINT fk_factura_reparacion FOREIGN KEY (idReparacion) REFERENCES Reparacion(idReparacion) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Reparacion
  ADD KEY fk_reparacion_cita (idCita),
  ADD CONSTRAINT fk_reparacion_cita FOREIGN KEY (idCita) REFERENCES Cita(idCita) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Piezas
  ADD KEY fk_piezas_reparacion (idReparacion),
  ADD KEY fk_piezas_proveedor (idProveedor),
  ADD CONSTRAINT fk_piezas_proveedor FOREIGN KEY (idProveedor) REFERENCES Proveedor(idProveedor) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT fk_piezas_reparacion FOREIGN KEY (idReparacion) REFERENCES Reparacion(idReparacion) ON DELETE CASCADE ON UPDATE CASCADE;

COMMIT;
