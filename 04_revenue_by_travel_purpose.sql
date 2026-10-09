SELECT Travel_Purpose, SUM(Revenue_USD) AS total_revenue
FROM AirlineData GROUP BY Travel_Purpose ORDER BY total_revenue DESC;
