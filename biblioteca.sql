CREATE DATABASE biblioteca;
CREATE TABLE lectores (rut VARCHAR(10) PRIMARY KEY, nombre VARCHAR(25), apellido_p VARCHAR(25), apellido_m VARCHAR(25));
CREATE TABLE editoriales (id SERIAL PRIMARY KEY, nombre VARCHAR(75));
CREATE TABLE libros (id SERIAL PRIMARY KEY, titulo VARCHAR(150));
CREATE TABLE autores (id SERIAL PRIMARY KEY, nombre VARCHAR(25), apellido VARCHAR(25));
CREATE TABLE autor_libro(id_libro INT, id_autor INT, FOREIGN KEY (id_libro) REFERENCES libros(id), FOREIGN KEY (id_autor) REFERENCES autores(id));
CREATE TABLE editorial_libro(id_editorial INT, id_libro INT, FOREIGN KEY (id_editorial) REFERENCES editoriales(id), FOREIGN KEY (id_libro) REFERENCES libros(id));
CREATE TABLE prestamo(id SERIAL PRIMARY KEY, id_libro INT, id_lector VARCHAR(10), fecha_inicio DATE, fecha_termino DATE, FOREIGN KEY (id_libro) REFERENCES libros(id), FOREIGN KEY (id_lector) REFERENCES lectores(rut));
