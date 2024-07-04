DROP DATABASE dbventas;
CREATE DATABASE dbventas;
USE dbVentas;

CREATE TABLE client (
    id int auto_increment NOT NULL,
    dni char(8) NOT NULL,
    name varchar(50) NOT NULL,
    address varchar(70) NOT NULL,
    CONSTRAINT client_pk PRIMARY KEY (id)
);

-- Table: category
CREATE TABLE category (
    id int auto_increment NOT NULL,
    name varchar(50) NOT NULL,
    description varchar(70) NOT NULL,
    supplier_ruc char(11) NOT NULL,
    CONSTRAINT category_pk PRIMARY KEY (id)
);

-- Table: product
CREATE TABLE product (
    code int auto_increment NOT NULL,
    name varchar(50) NOT NULL,
    price decimal(10,2) NOT NULL,
    stock int NOT NULL,
    category_id int NOT NULL,
    CONSTRAINT product_pk PRIMARY KEY (code)
);

-- Table: sale_register
CREATE TABLE sale_register (
    id int auto_increment NOT NULL,
    date date NOT NULL,
    product_code int NOT NULL,
    client_id int NOT NULL,
    CONSTRAINT sale_register_pk PRIMARY KEY (id)
);

-- Table: supplier
CREATE TABLE supplier (
    ruc char(11) NOT NULL,
    name varchar(50) NOT NULL,
    address varchar(70) NOT NULL,
    phone char(9) NOT NULL,
    web_page varchar(70) NOT NULL,
    CONSTRAINT supplier_pk PRIMARY KEY (ruc)
);

-- foreign keys
-- Reference: category_supplier (table: category)
ALTER TABLE category ADD CONSTRAINT category_supplier FOREIGN KEY (supplier_ruc)
    REFERENCES supplier (ruc);

-- Reference: product_category (table: product)
ALTER TABLE product ADD CONSTRAINT product_category FOREIGN KEY (category_id)
    REFERENCES category (id);

-- Reference: sale_register_client (table: sale_register)
ALTER TABLE sale_register ADD CONSTRAINT sale_register_client FOREIGN KEY (client_id)
    REFERENCES client (id);

-- Reference: sale_register_product (table: sale_register)
ALTER TABLE sale_register ADD CONSTRAINT sale_register_product FOREIGN KEY (product_code)
    REFERENCES product (code);

