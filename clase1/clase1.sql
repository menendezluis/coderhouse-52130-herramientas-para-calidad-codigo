show databases;
drop database ecommerce;
create database ecommerce;
use ecommerce;
CREATE TABLE clientes (
  client_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100)
);

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


