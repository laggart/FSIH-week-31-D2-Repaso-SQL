select VEHICULOS.tipo, CONDUCTORES.nombre, CONDUCTORES.apellido from VEHICULOS 
inner join CONDUCTORES on VEHICULOS.id_conductor = CONDUCTORES.id;

select CONDUCTORES.nombre, CONDUCTORES.apellido, count(VEHICULOS.id_vehiculos) as total_vehiculos
from CONDUCTORES
left join VEHICULOS on CONDUCTORES.id = VEHICULOS.id_conductor
group by CONDUCTORES.nombre, CONDUCTORES.apellido;

select CONDUCTORES.nombre, CONDUCTORES.apellido, VEHICULOS.tipo from CONDUCTORES
inner join VEHICULOS on CONDUCTORES.id = VEHICULOS.id_conductor
where VEHICULOS.tipo = 'patinete';

select VEHICULOS.marca, CONDUCTORES.telefono from VEHICULOS
inner join CONDUCTORES on VEHICULOS.id_conductor = CONDUCTORES.id;

select distinct CONDUCTORES.nombre, CONDUCTORES.apellido from CONDUCTORES
inner join VEHICULOS on CONDUCTORES.id = VEHICULOS.id_conductor;

select count(distinct CONDUCTORES.id) as total_conductores from CONDUCTORES
inner join VEHICULOS on CONDUCTORES.id = VEHICULOS.id_conductor
where VEHICULOS.tipo = 'automovil';

