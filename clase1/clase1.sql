show databases;
create database ecommerce;
create database otrabasededatos;
use ecommerce;
drop database ecommerce;
show tables;
select curdate() from dual;
select 1 from dual;


select * from clientes

CREATE TABLE clientes (
  client_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100)
);
/*asignando llave primaria desde el create table */
DROP TABLE USER;
CREATE TABLE USER
(
    id_user    INT         PRIMARY KEY auto_increment,
    first_name VARCHAR(30) not null,
    last_name  VARCHAR(30) not null,
    birthday   DATE        not null,
    e_mail     varchar(30) not null,
    nick       varchar(50),
    password   varchar(50) not null
);
select * from USER;

/*asignando llave primaria desde el alter table */
DROP TABLE USER;
CREATE TABLE USER
(
            id_user    INT,
    first_name VARCHAR(30) not null,
    last_name  VARCHAR(30) not null,
    birthday   DATE        not null,
    e_mail     varchar(30) not null,
    nick       varchar(50),
    password   varchar(50) not null

);
select * from USER;
alter table USER
MODIFY id_user INT PRIMARY KEY  auto_increment;
select * from USER;

alter table USER
MODIFY e_mail VARCHAR(25) not null;

alter table USER
ADD dni VARCHAR(25) not null;




CREATE TABLE producto (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50)
);

CREATE TABLE venta (
  sale_id INT PRIMARY KEY,
  client_id INT,
  date DATE,
  FOREIGN KEY (client_id) REFERENCES clientes(client_id)
);

CREATE TABLE detalle_venta (
  detail_id INT PRIMARY KEY,
  sale_id INT,
  product_id INT,
  quantity INT,
  FOREIGN KEY (sale_id) REFERENCES venta(sale_id),
  FOREIGN KEY (product_id) REFERENCES producto(product_id)
);

INSERT INTO clientes (client_id, first_name, last_name, email)
VALUES
  (1, 'Juan', 'Pérez', 'juan@example.com'),
  (2, 'María', 'García', 'maria@example.com'),
  (3, 'Carlos', 'López', 'carlos@example.com'),
    (4, 'Ana', 'Martínez', 'ana@correo.com'),
    (5, 'Pedro', 'Gómez', 'pedro@correo.com'),
    (6, 'Lucía', 'Sánchez', 'lucia@correo.com'),
    (7, 'Francisco', 'González', 'francisco@correo.com'),
    (8, 'Paula', 'Romero', 'paula@correo.com'),
    (9, 'Antonio', 'Álvarez', 'antoio@correo.com'),
    (10, 'María', 'Torres', 'maria@correo.com'),
    (11, 'Daniel', 'Suárez', 'daniel@correo.com'),
    (12, 'Sara', 'Jiménez', 'sara@correo.com'),
    (13, 'Pablo', 'Pérez', 'pablo@correo.com'),
    (14, 'Alba', 'Díaz', 'alba@correo.com'),
    (15, 'Javier', 'Moreno', 'javier@correo.com'),
  (16, 'Laura', 'Torres', 'laura@example.com')

select * from clientes

/*update & delete son un select vitaminado */
update user set first_name ='Carlos'
where id_user >= 3
and  first_name = "Luis"
update  user set first_name = 'Juan'
where id_user >= 3
and  first_name = 'Luis'
select *from user
where id_user= 7

delete from USER
where id_user= 7

select  first_name, last_name, count(*) from user
group by first_name, last_name
order by 3
      /* ,1
ASC por Count
AsC first_name
*/



insert into user
value (null, 'Juan', 'Pérez','2001-03-07 00:00:00','juan@correo.com','juanito','123')
INSERT INTO producto (product_id, product_name)
VALUES
  (1, 'iPad'),
  (2, 'iPhone'),
  (3, 'Scooter'),
  (4, 'Kindle'),
  (5, 'Galaxy 9'),
  (6, 'Auriculares'),
  (7, 'Powerbank'),
  (8, 'Cargador tipo C'),
  (9, 'Apple Watch'),
  (10, 'Nintendo Switch')

/*INSERT INTO venta (sale_id, client_id, date)*/

