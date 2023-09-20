INSERT INTO customer(first_name, last_name, address, billing_info)
VALUES ('Joel', 'Carter', '555 Circle Dr Chicago, IL 60614', '4242-4242-4242-4242 623 05/20');

INSERT INTO brand(brand_name, contact_number, address)
VALUES ('Coding Temple LLC', '773-55-4490', '222 W Ontario'); -- St Chicago, IL took this part out because it wouldn't fit

INSERT INTO inventory(product_amount)
VALUES (20);

INSERT INTO product (amount, product_name, seller_id, upc)
VALUES (20.00, 'Python 101', 1, 1);

INSERT INTO order_(sub_total, total_cost, upc)
VALUES (40.00, 43.50, 1)

-- inserting multiples
INSERT INTO customer (first_name, last_name, address, billing_info)
values ('Alice', 'Williams', '789 Oak St, LA', '5555-6666-7777-8888 123 09/23'),
				('Bob', 'Johnson', '111 Pine St, SF', '9999-8888-7777-6666 456 12/23');
				

			
			
ALTER TABLE customer ADD COLUMN email VARCHAR(100);

ALTER TABLE brand ALTER COLUMN address TYPE VARCHAR(150) USING address::VARCHAR(150);

UPDATE customer SET address = '123 New St, Chicago, IL' WHERE customer_id = 1;

UPDATE customer SET email = 'newemail@gmail.com' WHERE customer_id = 1;

UPDATE brand SET address = '222 W Ontario St Chicago, IL' WHERE seller_id = 1;