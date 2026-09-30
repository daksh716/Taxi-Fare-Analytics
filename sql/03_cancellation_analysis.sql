USE TaxiAnalytics;

SELECT
    Booking_Status,
    COUNT(*) AS Cancellation_Count,
    CAST(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER()
        AS DECIMAL(10,2)
    ) AS Percentage
FROM dbo.Bookings_Cleaned
WHERE Booking_Status IN (
    'Canceled by Driver',
    'Canceled by Customer'
)
GROUP BY Booking_Status
ORDER BY Cancellation_Count DESC;

SELECT
    Canceled_Rides_by_Driver AS Cancellation_Reason,
    COUNT(*) AS Cancellation_Count
FROM dbo.Bookings_Cleaned
WHERE Booking_Status = 'Canceled by Driver'
    AND Canceled_Rides_by_Driver IS NOT NULL
GROUP BY Canceled_Rides_by_Driver
ORDER BY Cancellation_Count DESC;

SELECT
    Canceled_Rides_by_Customer AS Cancellation_Reason,
    COUNT(*) AS Cancellation_Count
FROM dbo.Bookings_Cleaned
WHERE Booking_Status = 'Canceled by Customer'
    AND Canceled_Rides_by_Customer IS NOT NULL
GROUP BY Canceled_Rides_by_Customer
ORDER BY Cancellation_Count DESC;

SELECT
    Incomplete_Rides,
    COUNT(*) AS Ride_Count
FROM dbo.Bookings_Cleaned
GROUP BY Incomplete_Rides
ORDER BY Ride_Count DESC;

SELECT
    Incomplete_Rides_Reason,
    COUNT(*) AS Ride_Count
FROM dbo.Bookings_Cleaned
WHERE Incomplete_Rides = 'Yes'
    AND Incomplete_Rides_Reason IS NOT NULL
GROUP BY Incomplete_Rides_Reason
ORDER BY Ride_Count DESC;
