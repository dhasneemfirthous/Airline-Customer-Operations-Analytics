SELECT Cabin_Class, SUM(Revenue_USD) AS total_revenue
FROM AirlineData GROUP BY Cabin_Class ORDER BY total_revenue DESC;
