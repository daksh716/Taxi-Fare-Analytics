USE TaxiAnalytics;

SELECT TOP 10
    Pickup_Location,
    COUNT(*) AS Total_Bookings,
    SUM(Booking_Value) AS Total_Revenue
FROM dbo.Bookings_Cleaned
GROUP BY Pickup_Location
ORDER BY Total_Bookings DESC;

SELECT TOP 10
    Drop_Location,
    COUNT(*) AS Total_Bookings,
    SUM(Booking_Value) AS Total_Revenue
FROM dbo.Bookings_Cleaned
GROUP BY Drop_Location
ORDER BY Total_Bookings DESC;

SELECT TOP 10
    Pickup_Location,
    Drop_Location,
    COUNT(*) AS Total_Rides,
    SUM(Booking_Value) AS Total_Revenue,
    AVG(CAST(Ride_Distance AS DECIMAL(10,2))) AS Average_Ride_Distance
FROM dbo.Bookings_Cleaned
GROUP BY Pickup_Location, Drop_Location
ORDER BY Total_Rides DESC;
