CREATE OR REPLACE PROCEDURE add_to_market( 

)
LANGUAGE plpgsql
AS $$  
BEGIN
	UPDATE car_market 
	SET car_market.car_id = car.car_id
 	SELECT car_market.car_id
	FROM car_market
	INNER JOIN car
	ON car_market.car_id = car.car_id
	WHERE car.on_the_market = 'True'
		);
	COMMIT; 
END; 
$$

-- seem to have some trouble here.

CALL add_to_market();

SELECT *
FROM car_market;



