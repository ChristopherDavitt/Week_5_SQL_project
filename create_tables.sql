CREATE TABLE car (
  car_id SERIAL,
  make VARCHAR(100),
  model VARCHAR(100),
  year_ VARCHAR(100),
  miles VARCHAR(100),
  on_the_market VARCHAR(100),
  PRIMARY KEY (car_id)
);

CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  service_type VARCHAR(100),
  car_id INTEGER NOT NULL,
  FOREIGN KEY (car_id) REFERENCES car(car_id)
  
);

CREATE TABLE staff (
  staff_id SERIAL PRIMARY KEY,
  staff_type VARCHAR(100),
  first_name VARCHAR(100),
  last_name VARCHAR(100)
  
);

CREATE TABLE car_market (
  sold_id SERIAL PRIMARY KEY,
  amount INTEGER,
  used_or_new VARCHAR(100),
  staff_id INTEGER NOT NULL,
  customer_id INTEGER NOT NULL,
  car_id INTEGER NOT NULL,
  FOREIGN KEY (car_id) REFERENCES car(car_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id), 
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);


CREATE TABLE service_ticket (
  service_ticket_id SERIAL PRIMARY KEY,
  car_id INTEGER NOT NULL,
  customer_id INTEGER NOT NULL,
  FOREIGN KEY (car_id) REFERENCES car(car_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id) 
);

CREATE TABLE service (
  service_id SERIAL PRIMARY KEY,
  car_id INTEGER NOT NULL,
  miles NUMERIC(8,2),
  type_of_service VARCHAR(100),
  staff_id INTEGER NOT NULL,
  parts_added VARCHAR(100),
  service_ticket_id INTEGER NOT NULL,
  FOREIGN KEY (car_id) REFERENCES car(car_id),
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
  FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id)
);

ALTER TABLE car
DROP COLUMN year_;

ALTER TABLE car
ADD COLUMN year_ INTEGER;

ALTER TABLE car
DROP COLUMN miles;

ALTER TABLE car
ADD COLUMN miles NUMERIC(9,1);

ALTER TABLE service
ADD COLUMN service_date TIMESTAMP;