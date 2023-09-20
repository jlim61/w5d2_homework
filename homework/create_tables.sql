--customer table
CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
	);

--tickets table
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	ticket_price NUMERIC(8, 2),
	ticket_type VARCHAR(20),
	ticket_amount INTEGER
);

--concessions table
CREATE TABLE concessions(
	concession_id SERIAL PRIMARY KEY,
	item_name VARCHAR(50),
	item_price NUMERIC(8, 2),
	item_amount INTEGER
);

--movies table
CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100),
	release_date DATE,
	movie_duration VARCHAR(30),
	movie_showtimes VARCHAR(200),
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id)
);

--purchases table
CREATE TABLE purchases(
	purchase_id SERIAL PRIMARY KEY,
	ticket_id INTEGER NOT NULL,
	concession_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id),
	FOREIGN KEY(concession_id) REFERENCES concessions(concession_id)
);

--rewards table
CREATE TABLE rewards(
	rewards_id SERIAL PRIMARY KEY,
	membership BOOLEAN,
	customer_id INTEGER NOT NULL,
	purchase_id INTEGER NOT NULL,
	address VARCHAR(150),
	billing_info VARCHAR(150),
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY(purchase_id) REFERENCES purchases(purchase_id)
);

--purchase history table
CREATE TABLE purchase_history(
	purchase_history_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	purchase_id
)