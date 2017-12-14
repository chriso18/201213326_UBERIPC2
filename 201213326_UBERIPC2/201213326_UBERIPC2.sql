uber

CREATE TABLE `usuario` (
	`IdUsuario` INT(11) NOT NULL AUTO_INCREMENT,
	`Nombre` VARCHAR(50) NOT NULL DEFAULT '0',
	`Apellido` VARCHAR(50) NOT NULL DEFAULT '0',
	`Cantidad` INT(11) NULL DEFAULT '0',
	`Dpi` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`IdUsuario`)
)

ALTER TABLE `usuario`
	ADD UNIQUE INDEX `Dpi` (`Dpi`);
	
CREATE TABLE `Servicio` (
	`IdServicio` INT(11) NOT NULL AUTO_INCREMENT,
	`Tipo` VARCHAR(50) NOT NULL,
	`Descripcion` VARCHAR(50) NOT NULL,
	`Requisito` VARCHAR(50) NOT NULL,
	`Km` INT(11) NOT NULL,
	`Pago` DOUBLE NOT NULL,
	PRIMARY KEY (`IdServicio`),
	INDEX `Servicio` (`Km`)

ALTER TABLE `servicio`
	ADD COLUMN `Detalle` VARCHAR(50) NOT NULL DEFAULT '0' AFTER `Pago`;
	
	CREATE TABLE `Empleado` (
	`IdEmpleado` INT(11) NOT NULL AUTO_INCREMENT,
	`Nombre` VARCHAR(50) NOT NULL,
	`Apellido` VARCHAR(50) NOT NULL,
	`Dpi` VARCHAR(50) NOT NULL,
	`Servicio` INT(11) NOT NULL,
	`Vehiculo` INT(11) NOT NULL,
	PRIMARY KEY (`IdEmpleado`),
	INDEX `Servicio` (`Servicio`)