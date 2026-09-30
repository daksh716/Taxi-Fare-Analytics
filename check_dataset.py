import pandas as pd

input_file = r"data/raw/Bookings.csv"
output_file = r"data/cleaned/Bookings_Cleaned.csv"

df = pd.read_csv(input_file)

df = df.drop(columns=["Vehicle Images", "Unnamed: 20"])

df["DateTime"] = pd.to_datetime(df["Date"], errors="coerce")

df["Date"] = df["DateTime"].dt.date

df["Time"] = pd.to_datetime(
    df["Time"],
    format="%H:%M:%S",
    errors="coerce"
).dt.time

df.to_csv(output_file, index=False)

print("CLEANING COMPLETED")
print("Rows:", df.shape[0])
print("Columns:", df.shape[1])

print("\nDATE RANGE")
print("Minimum:", df["DateTime"].min())
print("Maximum:", df["DateTime"].max())

print("\nINVALID DATETIME")
print(df["DateTime"].isna().sum())

print("\nDUPLICATE ROWS")
print(df.duplicated().sum())

print("\nSAVED TO")
print(output_file)