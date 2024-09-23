-- Crear nuestra base de datos
CREATE DATABASE IF NOT EXISTS tb_Usuario;
-- Usar la base de datos ya creada
USE tb_Usuario;
-- Crear una tabla, que nos permitira
-- registrar usuarios
CREATE TABLE IF NOT EXISTS tb_Usuario (
   id_Usuario int auto_increment primary key,
   nombreUsuario varchar(15) NOT NULL,
   dpi varchar(16) NOT NULL,
   direccion varchar(30) NOT NULL,
   telefono varchar(8) NOT NULL,
   correo_electronico varchar(50) NOT NULL UNIQUE,
   usuario varchar(15) NOT NULL UNIQUE,
   pass varchar(20) NOT NULL,
   fecha_registro timestamp default current_timestamp
);
-- Seleccionar tosos los campos de la tabla
Select * From tb_Usuario;
-- registro de informacion
insert into tb_Usuario(nombreUsuario,dpi, direccion, telefono,correo_electronico,usuario,pass)
values("Margarita","12345678","Coban","12345678","MargaritaChoc77@gmail.com","ChocYalibat","1231234");
-- Tdos los campos que se van a insertar, tienen que ir dentro de apostrofes simples

select * from tb_Usuario;

-- Seleccionar solo el campo del id = 2
select usuario,pass from tb_Usuario where id_Usuario = 2;

-- consulta para validar un usuario
Select id_Usuario from tb_Usuario where usuario = "Margarita:D" AND pass = "4418";