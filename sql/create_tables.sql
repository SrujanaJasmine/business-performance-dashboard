CREATE TABLE customers(
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(50),
    country VARCHAR(50),
    sign_up_date DATE
);

CREATE TABLE products(
    product_id VARCHAR(50) PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price NUMERIC
);

CREATE TABLE transactions(
    transaction_id VARCHAR(50),
    customer_id VARCHAR(50),
    product_id VARCHAR(50),
    transaction_date DATE,
    quantity NUMERIC,
    total_price NUMERIC,
    price NUMERIC,
    
    CONSTRAINT fk_customer 
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),
    
    CONSTRAINT fk_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);

