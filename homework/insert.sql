-- adding customers (one)
INSERT INTO customers(first_name, last_name)
VALUES ('Jason', 'Giang');

--adding customers (multiple)
INSERT INTO customers(first_name, last_name)
VALUES ('Allan', 'Nguyen'),
			 ('Rebecca', 'Reyes'),
			 ('Jason', 'Park'),
			 ('Garrett', 'George');

--adding concessions snacks
INSERT INTO concessions(item_name, item_price, item_amount)
VALUES ('Sm Blue Rapsberry Icee', 6.00, 1);

--adding multiple concessions snacks
INSERT INTO concessions(item_name, item_price, item_amount)
VALUES ('Reg Blue Raspberry Icee', 7.00, 1),
				('Sm Fountain Drink', 5.00, 1),
				('Reg Fountain Drink', 6.00, 1),
				('Bottled Water', 4.50, 1),
				('Bottled Gatorade', 5.50, 1),
				('Sm Popcorn', 6.00, 1),
				('Med Popcorn', 7.00, 1),
				('Lg Popcorn', 8.00, 1),
				('Gourmet Pretzel', 4.00, 1),
				('Pretzel Bites', 7.00, 1),
				('Cheese Sticks', 8.00, 1),
				('Ice Cream', 4.79, 1),
				('Nachos', 6.50, 1),
				('Souvenir Popcorn Bucket', 15.00, 1);

--adding tickets
INSERT INTO tickets (ticket_type, ticket_price, ticket_amount)	
VALUES ('Children', 10.00, 1),
				('Adults', 13.00, 1),
				('Seniors', 10.00, 1);

--adding mulitple movies
INSERT INTO movies (movie_name, release_date, movie_duration, movie_showtimes)
VALUES ('The Last Samurai', 'December 5, 2003', '154 minutes', '11:30AM	12:10PM	2:10PM	4:10PM	6:50PM'),
				('Elemental', 'May 27, 2023', '109 minutes', '12:30AM	1:10PM	3:10PM	6:10PM	7:50PM'),
				('BlackBerry', 'May 12, 2023', '121 minutes', '1:30PM	2:20PM	4:30PM	5:10PM	8:50PM'),
				('Mulan', 'June 19, 1998', '87 minutes', '11:00AM	12:00PM	1:30PM	8:10PM	9:30PM');
				
--adding made up purchases w/ concessions
-- customer_id (1-5), ticket_id (1-3), concession_id(1-15), movie_id (1-4)
INSERT INTO purchases(customer_id, ticket_id, concession_id, movie_id)
VALUES (1, 1, 3, 2),
				(1, 2, 3, 2),
				(5, 3, 8, 3),
				(5, 2, 15, 1),
				(2, 2, 6, 1);
			
--adding made up purchases w/o concessions
INSERT INTO purchases(customer_id, ticket_id, movie_id)
VALUES (3, 2, 4),
				(4, 2, 4),
				(3, 1, 4);

--adding rewards for customers
INSERT INTO rewards(membership, customer_id, address, billing_info)
VALUES (FALSE, 1, '12345 Fake St, Lake Forest, CA 12345', '1111-2222-3333-4444 567 10/2023'),
				(FALSE, 2, '67891 Fake Drive, Lake Forest, CA 12345', '2222-3333-4444-5555 678 11/2023'),
				(TRUE, 3, '13467 Filler St, Buena Park, CA 67891', '3333-4444-5555-6666 912 12/2023'),
				(FALSE, 4, '25836 Filler Drive, Buena Park, CA 67891', '4444-5555-6666-7777 345 01/2024'),
				(TRUE, 5, '14725 Imaginary St, Irvine, CA 81629', '5555-6666-7777-8888 678 02/2024');