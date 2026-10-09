SELECT Booking_Channel, COUNT(DISTINCT Passenger_ID) AS passengers
FROM AirlineData GROUP BY Booking_Channel ORDER BY passengers DESC;
