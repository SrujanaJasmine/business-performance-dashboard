import pandas as pd
from pathlib import Path

RAW_DATA_PATH = Path("data/raw")

customers = pd.read_csv(RAW_DATA_PATH / "Customers.csv")
products = pd.read_csv(RAW_DATA_PATH / "Products.csv")
transactions = pd.read_csv(RAW_DATA_PATH / "Transactions.csv")

def audit(df,name):
    print(f"\n===={name}====")
    print("Shape: ",df.shape)
    print("\nColumns:")
    print(df.columns.tolist())
    print("\nMissing values: ")
    print(df.isnull().sum())
    print("\nSample rows: ")
    print(df.head())


audit(customers,"Customers")
audit(products,"Products")
audit(transactions,"Transactions")