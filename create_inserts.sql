INSERT INTO
	car (car_id, make, model, on_the_market, year_, miles)
VALUES 
	(2, 'Ford', 'Fiesta', 'False', 2010, 20000),
	(3, 'Ford', 'Mustang', 'True', 2016, 0),
	(4, 'Ford', 'Explorer', 'False', 2020, 0),
	(5, 'Ford', 'Transit', 'True', 2019, 0),
    (6, 'Ford', 'Escape', 'True', 2014, 60000),
	(7, 'Ford', 'Flex', 'False', 2013, 90000);
	
SELECT *
FROM car;

INSERT INTO
	customer (customer_id, first_name, last_name, service_type, car_id)
VALUES 
	(1, 'Bacon', 'Eggs', 'oil change', 7),
	(2, 'Tom', 'Morris', 'transmission fluid replacement', 2),
	(3, 'Henry', 'Ford', 'brake pad replacement', 4);

ALTER TABLE customer
DROP service_type;

INSERT INTO
	service_ticket (service_ticket_id, customer_id, car_id)
VALUES 
	(1, 1, 7),
	(2, 2, 2),
	(3, 3, 4);
	
INSERT INTO
	staff (staff_id, staff_type, first_name, last_name)
VALUES 
	(1, 'Mechanic', 'John', 'Deere'),
	(2, 'Salesmen', 'Alex', 'Fogal');
	
INSERT INTO
	staff (staff_id, staff_type, first_name, last_name)
VALUES
	(3, 'Boss', 'Bowser', 'No need for a last name');
	
INSERT INTO 
	service (service_id, car_id, miles, type_of_service, staff_id, parts_added, service_ticket_id)
VALUES 
	(1, 7, 100000, 'oil change', 1, 'none', 1),
	(2, 2, 900000, 'transmission fluid change', 1, 'none', 2),
	(3, 4, 227000, 'brake-pad change', 1, 'brakes', 3);
	
SELECT *
FROM service;

ALTER TABLE service
ADD COLUMN service_cost NUMERIC(8,2);

INSERT INTO 
	service (service_id, car_id, miles, type_of_service, staff_id, parts_added, service_ticket_id, service_cost)
VALUES 
	(1, 7, 100000, 'oil change', 1, 'none', 1, 50.00),
	(2, 2, 900000, 'transmission fluid change', 1, 'none', 2, 100.00),
	(3, 4, 227000, 'brake-pad change', 1, 'brakes', 3, 200.00);
	

	
