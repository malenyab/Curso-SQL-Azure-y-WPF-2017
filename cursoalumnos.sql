create table registroalumno(
numcontrol int not null identity(1,10),
nombre varchar(50) not null,
apellido1 varchar(50) not null,
apellido2 varchar(50) not null,
sexo char(1) not null,
edad int not null,
peso float not null,
estatura float not null
PRIMARY KEY NONCLUSTERED (numcontrol)
);

insert into registroalumno (nombre,apellido1,apellido2,sexo,edad,peso,estatura) values ('Maleny','Abrego','Sanchez','F',25,65,68);
insert into registroalumno (nombre,apellido1,apellido2,sexo,edad,peso,estatura) values ('Claudia','Perez','Sanchez','F',20,75,58);
insert into registroalumno (nombre,apellido1,apellido2,sexo,edad,peso,estatura) values ('Julian','Arratia','Dominguez','M',30,85,70);

SELECT * FROM registroalumno

update registroalumno set edad = 60 where nombre = 'Julian';

delete registroalumno where apellido1 = 'Perez';







Use tutorial2017
GO
create procedure registrousuariocurso
@nombre varchar(50),
@apellido1 varchar(50),
@apellido2 varchar(50),
@sexo char(1),
@edad int,
@peso float,
@estatura float
AS
BEGIN
insert into registroalumno (nombre,apellido1,apellido2,sexo,edad,peso,estatura) values (@nombre,@apellido1,@apellido2,@sexo,@edad,@peso,@estatura)
end
go

declare @respuesta int
exec @respuesta = [dbo].[registrousuariocurso]
@nombre = 'Junaita',
@apellido1='Lopez',
@apellido2='Rodriguez',
@sexo='F',
@edad=10,
@peso=40,
@estatura=50
select 'estatus' = @respuesta
go