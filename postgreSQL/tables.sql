CREATE TABLE IF NOT EXISTS customers (
	customer_id SERIAL PRIMARY KEY,
	customer_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	city VARCHAR(100)
	);
	
CREATE TABLE IF NOT EXISTS product (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100) NOT NULL,
	price NUMERIC(10,2) NOT NULL CHECK(price > 0)
	);

CREATE TABLE IF NOT EXISTS orders (
	order_id SERIAL PRIMARY KEY,
	customer_id INT REFERENCES customer(customer_id),
	product_id INT REFERENCES product(product_id),
	order_date DATE DEFAULT CURRENT_DATE
	);

-- test run
