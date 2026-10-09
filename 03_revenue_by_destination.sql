SELECT Destination, SUM(Revenue_USD) AS total_revenue
FROM AirlineData GROUP BY Destination ORDER BY total_revenue DESC;
