SELECT YEAR(Flight_Date) AS flight_year, MONTH(Flight_Date) AS flight_month,
       SUM(Revenue_USD) AS monthly_revenue
FROM AirlineData GROUP BY YEAR(Flight_Date), MONTH(Flight_Date)
ORDER BY flight_year, flight_month;
