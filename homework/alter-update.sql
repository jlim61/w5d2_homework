--adding purchase_Date column to purchases table because I thought about it later
ALTER TABLE purchases ADD COLUMN purchase_date DATE DEFAULT CURRENT_DATE;

--decided would put movie id under tickets so dropping the ticket_id from movies
ALTER TABLE movies DROP COLUMN ticket_id;

--adding movie_id to tickets
ALTER TABLE tickets ADD COLUMN movie_id INTEGER NOT NULL;

--Making movie_id Foreign Key
ALTER TABLE tickets ADD FOREIGN KEY (movie_id) REFERENCES movies(movie_id);

--dropping the movie_id from tickets
ALTER TABLE tickets DROP COLUMN movie_id;

--adding movie_id to tickets
ALTER TABLE purchases ADD COLUMN movie_id INTEGER NOT NULL;

--Making movie_id Foreign Key in purchases
ALTER TABLE purchases ADD FOREIGN KEY (movie_id) REFERENCES movies(movie_id);

--accidentally ran my movies line again so I duplicated it. now i have to remove the rows
DELETE FROM movies
WHERE movie_id IN (5, 6, 7 ,8); 

--don't want my concessions to always be mandatory because someone might not get a snack/drink. rmeoving the not null
ALTER TABLE purchases ALTER COLUMN concession_id DROP NOT NULL;

--adding foreign key customer_id to purchases
ALTER TABLE purchases ADD COLUMN customer_id INTEGER NOT NULL;

--Making customer_id Foreign Key in purchases
ALTER TABLE purchases ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

--removing purchase_id from rewards
ALTER TABLE rewards DROP COLUMN purchase_id;