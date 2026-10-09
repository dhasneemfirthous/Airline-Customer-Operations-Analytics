# Power BI Page Specification

## Page 1 — Executive Overview
**KPI cards:** Total Revenue, Total Flights, Total Passengers, On Time Rate, Average Delay, Average Satisfaction.
**Charts:** Monthly Revenue Trend (line); Flight Status Distribution (donut); Revenue by Cabin Class (column); Top 10 Destinations by Revenue (bar).
**Slicers:** Flight_Date, Origin, Cabin_Class, Travel_Purpose.

## Page 2 — Customer Insights
**KPI cards:** Total Passengers, Average Satisfaction, Average Ticket Fare, Revenue per Passenger.
**Charts:** Passengers by Loyalty Tier (donut); Passengers by Booking Channel (column); Average Satisfaction by Loyalty Tier (bar); Revenue by Travel Purpose (column); Ticket Fare vs Customer Satisfaction (scatter); Average Satisfaction by Cabin Class (bar).
**Slicers:** Flight_Date, Loyalty_Tier, Booking_Channel, Travel_Purpose.

## Page 3 — Operations
**KPI cards:** On Time Rate, Cancellation Rate, Average Delay, Baggage Issue Rate.
**Charts:** Average Delay by Aircraft Type; Average Delay by Origin; Average Delay by Destination; Flight Status Distribution; Baggage Issues; Monthly Average Delay.
**Slicers:** Flight_Date, Aircraft_Type, Origin, Destination.

## Page 4 — Business Insights
**KPI cards:** Total Revenue, Average Ticket Fare, Revenue per Passenger, Total Passengers.
**Charts:** Revenue by Destination, Revenue by Cabin Class, Revenue by Travel Purpose, Revenue by Loyalty Tier, Revenue by Route, Monthly Revenue Trend.
**Calculated column:**
```DAX
Route = AirlineData[Origin] & " → " & AirlineData[Destination]
```

## Formatting tips
- Keep page titles, fonts, KPI layout, and slicer positions consistent across pages.
- Use the provided theme as a starting point; apply distinct but coordinated palettes per page if preferred.
- Label units clearly (e.g. `17.2 min`, `4.03 / 5`).
- Test slicers and cross-filtering before publishing.
