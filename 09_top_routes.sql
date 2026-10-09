SELECT CONCAT(Origin, ' - ', Destination) AS route, SUM(Revenue_USD) AS total_revenue
FROM AirlineData GROUP BY Origin, Destination ORDER BY total_revenue DESC
LIMIT 10;
