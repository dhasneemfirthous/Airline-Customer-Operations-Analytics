SELECT Flight_Status, COUNT(*) AS passenger_records
FROM AirlineData GROUP BY Flight_Status ORDER BY passenger_records DESC;
