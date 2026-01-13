COPY customers FROM 'C:/Users/Asus/OneDrive/Desktop/business-performance-dashboard/data/raw/Customers.csv
' DELIMITER ',' CSV HEADER;

COPY products FROM 'C:/Users/Asus/OneDrive/Desktop/business-performance-dashboard/data/raw/Products.csv
' DELIMITER ',' CSV HEADER;

COPY transactions FROM 'C:/Users/Asus/OneDrive/Desktop/business-performance-dashboard/data/raw/Transactions.csv
' DELIMITER ',' CSV HEADER;