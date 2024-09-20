/*1*/select lugar, cant_dias, cant_noches, costo, cant_excursiones, viaje from paquete_viaje 
where paquete_viaje.codigo 
in (select paquete_viaje_codigo from reserva where fecha_reserva = Current_date());
/*2*/select avg(cant_reservas) from 
(select count(*) as cant_reservas from reservas join paquete_viaje on paquete_viaje_codigo = paquete_viaje.codigo 
group by alojamiento_codigo);
/*3*/select costo, cant_dias, lugar from paquete_viaje where costo = (select min(costo) from paquete_viaje);
/*4*/select max(cant_reservas) from (select count(*) as cant_reservas from reservas group by cliente_codigo) as tabla_aux;
/*5*/select alojamiento.* from alojamiento where (select count(*) from paquete_viaje where alojamiento_codigo = alojamiento.codigo) > 5;
/*6a*/delete from clientes where cliente.codigo not in (select cliente_codigo from reserva);
/*6b*/delete from clientes where not exists (select reserva.* from reserva where cliente_codigo = cliente.codigo);
/*7*/select paquete_viaje.* from paquete_viaje where exists (select reserva.* from reserva where paquete_viaje_codigo = paquete_viaje.codigo);
/*8*/select nombre, categoria, direccion from alojamiento where cant_personas > (select avg(cant_personas) from alojamiento);