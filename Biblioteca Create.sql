CREATE DATABASE `biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `alquiler` (
  `idalquiler` int NOT NULL AUTO_INCREMENT,
  `usuarios_idusuarios` int NOT NULL,
  `libros_idlibros` int NOT NULL,
  `fechaprestamo` datetime DEFAULT NULL,
  `fechadevolucion` datetime DEFAULT NULL,
  PRIMARY KEY (`idalquiler`),
  KEY `fk_prestamos_usuarios_idx` (`usuarios_idusuarios`),
  KEY `fk_prestamos_libros1_idx` (`libros_idlibros`),
  CONSTRAINT `fk_prestamos_libros1` FOREIGN KEY (`libros_idlibros`) REFERENCES `libros` (`idlibros`),
  CONSTRAINT `fk_prestamos_usuarios` FOREIGN KEY (`usuarios_idusuarios`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `libros` (
  `idlibros` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `autor` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`idlibros`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `usuarios` (
  `idusuarios` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
