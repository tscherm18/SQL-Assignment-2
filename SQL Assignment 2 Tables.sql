create table movie_customer1(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)

);

create table movie_ticket1(
	ticket_id SERIAL primary key,
	price NUMERIC(10,2),
	seat_number INTEGER not null,
	movie_id INTEGER not null,
	customer_id INTEGER not null,
	foreign key(movie_id) references movie1(movie_id),
	foreign key(customer_id) references movie_customer1(customer_id)
	
);

create table movie1(
	movie_id SERIAL primary key,
	title VARCHAR(100),
	director VARCHAR(100),
	duration INTEGER not null
);

create table concessions1(
	item_id SERIAL primary key,
	total_amount NUMERIC(8,2)

);