# Taxi Fare & Ride Analytics Dashboard

## Project Overview

This project analyzes taxi booking data to understand ride performance, customer behavior, cancellations, revenue, vehicle performance, and operational trends.

The project uses SQL Server for data analysis and Power BI for interactive dashboard development.

## Business Objectives

- Analyze overall booking performance
- Measure successful rides and cancellation rates
- Analyze revenue and average fare
- Compare vehicle types
- Identify major pickup and drop locations
- Analyze customer and driver cancellations
- Understand incomplete ride patterns
- Analyze payment methods
- Monitor driver and customer ratings
- Identify booking trends by date and hour

## Dataset

The dataset contains 103,024 taxi booking records covering July 2024.

Key fields include:

- Booking ID
- Booking Status
- Customer ID
- Vehicle Type
- Pickup Location
- Drop Location
- Booking Value
- Payment Method
- Ride Distance
- Driver Ratings
- Customer Rating
- Cancellation Reasons
- Incomplete Ride Information

## Tools & Technologies

- Python
- Pandas
- SQL Server
- SQL Server Management Studio
- Power BI
- Power Query
- DAX
- Git & GitHub

## Data Cleaning

The raw dataset was cleaned using Python and Pandas.

Major cleaning steps included:

- Removed unnecessary columns
- Removed invalid `Vehicle Images` data
- Removed empty `Unnamed: 20` column
- Converted date and time fields
- Created a `DateTime` column
- Validated duplicate booking IDs
- Validated missing and invalid datetime values
- Exported the cleaned dataset for SQL analysis

## SQL Analysis

SQL was used to perform:

- Booking status analysis
- Vehicle performance analysis
- Revenue analysis
- Payment method analysis
- Cancellation analysis
- Incomplete ride analysis
- Pickup and drop location analysis
- Time-based analysis
- Rating analysis
- Revenue per kilometer analysis

## Power BI Dashboard

The Power BI dashboard contains three analytical pages.

### 1. Overview Dashboard

Key KPIs and overall performance:

- Total Bookings
- Successful Rides
- Total Cancellations
- Total Revenue
- Average Fare
- Success Rate
- Booking Status Distribution
- Bookings by Vehicle Type
- Revenue by Vehicle Type

### 2. Ride & Payment Analysis

This page focuses on:

- Payment Method Distribution
- Driver Cancellation Reasons
- Customer Cancellation Reasons
- Average Ride Distance by Vehicle Type
- Top 10 Pickup Locations
- Top 10 Drop Locations
- Booking Trend Over Time

### 3. Time & Operations Analysis

This page includes:

- Bookings by Hour
- Revenue by Payment Method
- Incomplete Ride Distribution
- Incomplete Ride Reasons
- Average Driver Rating by Vehicle Type
- Average Customer Rating by Vehicle Type
- Date Range Filter
- Vehicle Type Filter

## Key Results

- Total bookings: 103,024
- Successful rides: 63,967
- Success rate: 62.09%
- Total booking value: ₹56.53M
- Average booking value: ₹548.75
- Average ride distance: 14.19 km
- Average driver rating: 4.00
- Average customer rating: 4.00

## Project Structure

```text
Taxi-Fare-Analytics/
│
├── data/
│   ├── raw/
│   │   └── Bookings.csv
│   └── cleaned/
│       └── Bookings_Cleaned.csv
│
├── sql/
│   ├── 01_data_validation.sql
│   ├── 02_booking_analysis.sql
│   ├── 03_cancellation_analysis.sql
│   ├── 04_location_analysis.sql
│   └── 05_performance_analysis.sql
│
├── powerbi/
│   └── Taxi_Fare_Ride_Analytics.pbix
│
├── screenshots/
│
├── check_dataset.py
│
└── README.md
