DROP TABLE IF EXISTS customers;

DROP TABLE IF EXISTS address;

DROP TABLE IF EXISTS products_services;

DROP TABLE IF EXISTS orders;




-- create tables



CREATE TABLE customers
(

customer_id  INT,

customer_first_name VARCHAR(20),

customer_last_name  VARCHAR(20)  NOT NULL,

customer_email   VARCHAR(20) NOT NULL,

customer_phone_number   CHAR(10)  NOT NULL,


address_id INT NOT NULL,

PRIMARY KEY (customer_id),
FOREIGN KEY (address_id) REFERENCES address (address_id)

);



CREATE TABLE address

(

address_id           INT             NOT NULL,

shipped_date      DATE,

customer_id       INT         NOT NULL,

add_street       VARCHAR(50)     NOT NULL,
add_city         VARCHAR(20)     NOT NULL,
add_state        CHAR(2)         NOT NULL,

add_zip          CHAR(5)     NOT NULL,

CONSTRAINT address_pk

PRIMARY KEY (address_id),

FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);




CREATE TABLE products_services

(

product_service_id         INT               NOT NULL,

product_type           VARCHAR(20)       NOT NULL,

product_type_quantity   INT           NOT NULL,

service_type          INT,

cost                  INT,

CONSTRAINT products_services_pk

PRIMARY KEY (product_service_id)
);



CREATE TABLE orders

(

order_id          INT         NOT NULL,

customer_id       INT         NOT NULL,

order_date        DATE        NOT NULL,

product_service_id INT        NOT NULL,

address_id       INT,

cost             INT,

CONSTRAINT orders_pk
PRIMARY KEY (order_id),


CONSTRAINT orders_fk_customers

FOREIGN KEY (customer_id) REFERENCES customers (customer_id),

CONSTRAINT orders_fk_address
FOREIGN KEY (address_id) REFERENCES address (address_id)
);



INSERT INTO customers VALUES

(1,'Korah','Blanca','korahb@email.com','6145554435',10),

(2,'Yash','Randall','yashr@email.com','2095551205',11),

(3,'Johnathon','Millerton','johnathonm@email.com','2125554800',12),

(4,'Mikayla','Davis','mikaylad@email.com','2025555561',13),

(5,'Kendall','Mayte','kendallm@email.com','5135553043',14),

(6,'Kaitlin','Hostlery','kaitlinh@email.com','8005551957',15),

(7,'Derek','Chaddick','derekc@email.com','5155556130',16),

(8,'Deborah','Davis','deborahd@email.com','5595558060',17),

(9,'Karina','Lacy','karinal@email.com','8005557000',18),

(10,'Kurt','Nickalus','kurtn@email.com','8055550584',19);





INSERT INTO address VALUES

(1, '2016-11-11', 1,'1555 W Lane Ave','Columbus','OH','43221'),

(2,'2016-11-10', 2,'11 E Rancho Madera Rd','Madison','WI','53707'),

(3,'2016-11-30', 3,'60 Madison Ave','New York','NY','10010'),

(4,'2017-01-07', 4,'2021 K Street Nw','Washington','DC','20006'),

(5,'2017-01-22', 5, '4775 E Miami River Rd','Cleves','OH','45002'),

(6,'2017-02-02', 6,'3250 Spring Grove Ave','Cincinnati','OH','45225'),

(7,'2017-02-28', 7, '9022 E Merchant Wy','Fairfield','IA','52556'),

(8,'2017-03-29', 8,'415 E Olive Ave','Fresno','CA','93728'),

(9,'2017-04-20', 9,'882 W Easton Wy','Los Angeles','CA','90084'),

(10,'2017-04-13', 10,'28210 N Avenue Stanford','Valencia','CA','91355');

INSERT INTO products_services VALUES

(1,'Service',2,'Repair',50),
(2,'Memory',1,'Sale',200),
(3,'CPU',1,'Sale',500),
(4,'Service',1,'Virus Removal',50),
(5,'HDD',2,'Sale',400);


INSERT INTO orders VALUES

(1,1,'2016-11-11',1,1,100);




SELECT customer_email,customer_first_name
FROM customers