USE TaxiAnalytics;

SELECT
    Vehicle_Type,
    COUNT(*) AS Successful_Rides,
    SUM(Booking_Value) AS Total_Revenue,
    AVG(CAST(Ride_Distance AS DECIMAL(10,2))) AS Average_Ride_Distance,
    AVG(CAST(Driver_Ratings AS DECIMAL(10,2))) AS Average_Driver_Rating,
    AVG(CAST(Customer_Rating AS DECIMAL(10,2))) AS Average_Customer_Rating
FROM dbo.Bookings_Cleaned
WHERE Booking_Status = 'Success'
GROUP BY Vehicle_Type
ORDER BY Successful_Rides DESC;

SELECT
    AVG(CAST(Driver_Ratings AS DECIMAL(10,2))) AS Average_Driver_Rating,
    AVG(CAST(Customer_Rating AS DECIMAL(10,2))) AS Average_Customer_Rating
FROM dbo.Bookings_Cleaned;

SELECT
    Vehicle_Type,
    SUM(Booking_Value) AS Total_Revenue,
    SUM(CAST(Ride_Distance AS DECIMAL(12,2))) AS Total_Distance,
    CAST(
        SUM(Booking_Value) /
        NULLIF(SUM(CAST(Ride_Distance AS DECIMAL(12,2))), 0)
        AS DECIMAL(10,2)
    ) AS Revenue_Per_KM
FROM dbo.Bookings_Cleaned
WHERE Booking_Status = 'Success'
GROUP BY Vehicle_Type
ORDER BY Revenue_Per_KM DESC;
