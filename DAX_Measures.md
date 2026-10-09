# DAX Measures

Assumes the imported table is named `AirlineData`.

```DAX
Total Revenue = SUM(AirlineData[Revenue_USD])

Total Flights = DISTINCTCOUNT(AirlineData[Flight_ID])

Total Passengers = DISTINCTCOUNT(AirlineData[Passenger_ID])

Average Delay = AVERAGE(AirlineData[Delay_Minutes])

Average Satisfaction = AVERAGE(AirlineData[Customer_Satisfaction])

Average Ticket Fare = AVERAGE(AirlineData[Ticket_Fare_USD])

Revenue per Passenger = DIVIDE([Total Revenue], [Total Passengers], 0)

On Time Rate =
DIVIDE(
    CALCULATE(COUNTROWS(AirlineData), AirlineData[Flight_Status] = "On Time"),
    COUNTROWS(AirlineData),
    0
)

Cancellation Rate =
DIVIDE(
    CALCULATE(COUNTROWS(AirlineData), AirlineData[Flight_Status] = "Cancelled"),
    COUNTROWS(AirlineData),
    0
)

Baggage Issue Rate =
DIVIDE(
    CALCULATE(COUNTROWS(AirlineData), AirlineData[Baggage_Issue] = "Yes"),
    COUNTROWS(AirlineData),
    0
)
```

Format rate measures as Percentage. Format revenue and fare measures as Currency (USD). For the scatter plot, use Ticket_Fare_USD on X-axis and Customer_Satisfaction on Y-axis.

**Note:** The supplied dataset is synthetic. `Total Flights` counts unique flight IDs; the on-time, cancellation, and baggage rates above are calculated over passenger rows.
