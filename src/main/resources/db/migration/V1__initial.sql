-- Creación de la tabla "person"
CREATE TABLE person (
	id INT IDENTITY PRIMARY KEY,
	identification VARCHAR(10) NOT NULL UNIQUE,
	name VARCHAR(255) NULL,
	gender VARCHAR(10) NULL,
	age INT NULL,
	address VARCHAR(255) NULL,
	phone VARCHAR(15) NULL
);

-- Creación de la tabla "customer"
CREATE TABLE customer (
	id INT IDENTITY PRIMARY KEY,
	password VARCHAR(255) NULL,
	status BIT NULL,
	person_id INT NULL,
	CONSTRAINT customer_person_fk FOREIGN KEY (person_id) REFERENCES person(id)
);
