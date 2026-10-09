SELECT Origin, AVG(Delay_Minutes) AS average_delay_minutes
FROM AirlineData GROUP BY Origin ORDER BY average_delay_minutes DESC;
