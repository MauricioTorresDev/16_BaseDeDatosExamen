USE dbVentas;

-- Insert data into client table
INSERT INTO client (id, dni, name, address) VALUES
(1, '12345678', 'Juan Perez', 'Los claves, San vicente, Cañete'),
(2, '23456789', 'Ana Gomez', 'Av. Arequipa, Miraflores, Lima'),
(3, '34567890', 'Luis Martinez', 'Jr. Puno, Cercado de Lima, Lima'),
(4, '45678901', 'Maria Rodriguez', 'Av. Arequipa, Miraflores, Lima'),
(5, '56789012', 'Carlos Lopez', 'Av. Arequipa, Miraflores, Lima');

-- Insert data into category table
INSERT INTO category (id, name, description, supplier_ruc) VALUES
(1, 'Electrónica', 'Dispositivos y gadgets', '12345678901'),
(2, 'Mobiliario', 'Mobiliario de hogar y oficina', '23456789012'),
(3, 'Ropa', 'Ropa de hombre y mujer', '34567890123'),
(4, 'Juguetes', 'Juegos y juguetes infantiles', '45678901234'),
(5, 'Libros', 'Libros educativos y recreativos', '56789012345');

-- Insert data into product table
INSERT INTO product (code, name, price, stock, category_id) VALUES
(101, 'Teléfono', 499.99, 50, 1),
(102, 'Portátil', 1899.99, 30, 1),
(103, 'Silla de oficina', 449.99, 20, 2),
(104, 'Camiseta', 59.99, 100, 3),
(105, 'Figura de acción', 49.99, 75, 4);

-- Insert data into sale_register table
INSERT INTO sale_register (id, date, product_code, client_id) VALUES
(1, '2023-07-01', 101, 1),
(2, '2023-07-02', 102, 2),
(3, '2023-07-03', 103, 3),
(4, '2023-07-04', 104, 4),
(5, '2023-07-05', 105, 5);

-- Insert data into supplier table
INSERT INTO supplier (ruc, name, address, phone, web_page) VALUES
('12345678901', 'Tech Telef', 'Av. Arequipa, Miraflores, Lima', '987654321', 'www.techtelef.com'),
('23456789012', 'PortaTech.', 'Av. Arequipa, Miraflores, Lima', '876543210', 'www.PortaTech.com'),
('34567890123', 'OficinaTech', 'Av. Arequipa, Miraflores, Lima', '765432109', 'www.OficinaTech.com'),
('45678901234', 'CamisetasWO', 'Av. Arequipa, Miraflores, Lima', 'www.CamisetasWO.com'),
('56789012345', 'FigurasTech', 'Av. Arequipa, Miraflores, Lima', '543210987', 'www.FigurasTech.com');