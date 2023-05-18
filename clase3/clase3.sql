
//https://docs.datastax.com/en/cql-oss/3.1/index.html
CREATE KEYSPACE curso_coderhouse
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

use curso_coderhouse

CREATE TABLE IF NOT EXISTS clientes (
    id UUID PRIMARY KEY,
    nombre text,
    edad int,
    direccion text
);

//DROP TABLE clientes
SELECT * FROM clientes

//con cassandra 4.0 estas inserciones no estan soportadas
INSERT INTO clientes (id, nombre, edad, direccion)
VALUES [(uuid(), 'Juan', 25, 'Calle A, Ciudad'),
       (uuid(), 'María', 30, 'Calle B, Ciudad'),
       (uuid(), 'Pedro', 35, 'Calle C, Ciudad')]
//con cassandra 4.0

INSERT INTO clientes_por_edad (id, nombre, edad, direccion) VALUES (uuid(), 'Juan', 25, 'Calle A, Ciudad');
INSERT INTO clientes_por_edad (id, nombre, edad, direccion) VALUES (uuid(), 'María', 30, 'Calle B, Ciudad');
INSERT INTO clientes_por_edad (id, nombre, edad, direccion) VALUES (uuid(), 'Pedro', 35, 'Calle C, Ciudad');
INSERT INTO clientes_por_edad (id, nombre, edad, direccion) VALUES (uuid(), 'Carlos', 37, 'Calle A, Ciudad');
INSERT INTO clientes_por_edad (id, nombre, edad, direccion) VALUES (uuid(), 'Sara', 36, 'Calle B, Ciudad');
INSERT INTO clientes_por_edad (id, nombre, edad, direccion) VALUES (uuid(), 'Agustin', 38, 'Calle C, Ciudad');
INSERT INTO clientes_por_edad (id, nombre, edad, direccion) VALUES (uuid(), 'Marta', 34, 'Calle A, Ciudad');
INSERT INTO clientes_por_edad (id, nombre, edad, direccion) VALUES (uuid(), 'Vane', 32, 'Calle B, Ciudad');
INSERT INTO clientes_por_edad (id, nombre, edad, direccion) VALUES (uuid(), 'Julia', 32, 'Calle C, Ciudad');

INSERT INTO clientes JSON '{
  "id": ${uuid()},
  "nombre":"Luis",
  "edad": 33,
  "direccion": "Guatemala"
  }';

TRUNCATE TABLE clientes
DROP TABLE clientes
select * from clientes

//ejemplo de update
UPDATE clientes
    set edad=33
where id = ce6098c3-d47a-4bbe-9b38-a31d3a156d4e;
//ejemplo de delete multiples valores
DELETE from clientes
where id = 9aa8700a-5dbe-446e-b395-935e770f9e93,

//ejemplo de delete multiples valores
DELETE from clientes
where id in(
    9aa8700a-5dbe-446e-b395-935e770f9e93,
    b9785cc0-16d2-4922-a6e0-5d9e71a538f4
    )
SELECT * FROM clientes_por_edad
limit 5
select * from clientes_por_edad
order by edad ASC ALLOW FILTERING


// RENAME: solo permite hacer rename para llaves primarias
ALTER TABLE clientes
    RENAME id TO identificacion
// ADD: agregando columnas
ALTER TABLE clientes
    ADD nacionalidad text;

DROP TABLE clientes
select * from clientes
SELECT nombre, edad FROM clientes WHERE edad > 30;
SELECT * FROM clientes ORDER BY columna ASC/DESC;
SELECT * FROM clientes ORDER BY edad DESC;

drop table clientes_por_edad
CREATE TABLE IF NOT EXISTS clientes_por_edad (
  edad int,
  id UUID,
  nombre text,
  direccion text,
  PRIMARY KEY (edad)
)

SELECT  * FROM clientes_por_edad
INSERT INTO clientes_por_edad (edad, id, nombre, direccion) VALUES (42, uuid(), 'Juan', 'Calle A, Ciudad');
INSERT INTO clientes_por_edad (edad, id, nombre, direccion) VALUES (33, uuid(), 'María', 'Calle B, Ciudad');
INSERT INTO clientes_por_edad (edad, id, nombre, direccion) VALUES (35, uuid(), 'Pedro', 'Calle C, Ciudad');

SELECT nombre, edad FROM clientes_por_edad WHERE edad > 30 ALLOW FILTERING;

update clientes_por_edad
set nombre = 'Carlos'
WHERE edad = 33

select * from clientes_por_edad
         edad in(30,31,32,33,34,35,36,37,37)
         order by edad al
where id =9384f41a-6241-4d5d-b5bb-86ef9e4f425e ALLOW FILTERING
SELECT release_version FROM system.local;















CREATE KEYSPACE mascotas
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

ALTER KEYSPACE mascotas RENAME MASCOTAS
select * from mascotas
use mascotas
DROP KEYSPACE mascotas