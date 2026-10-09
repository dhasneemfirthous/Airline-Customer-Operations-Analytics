-- Core KPI queries for simulated airline data.
SELECT COUNT(DISTINCT Flight_ID) AS total_flights,
       COUNT(DISTINCT Passenger_ID) AS total_passengers,
       SUM(Revenue_USD) AS total_revenue,
       AVG(Delay_Minutes) AS average_delay,
       AVG(Customer_Satisfaction) AS average_satisfaction
FROM AirlineData;
