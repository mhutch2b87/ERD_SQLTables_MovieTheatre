CREATE TABLE Movies(
	Movie_ID SERIAL PRIMARY KEY,
	Title VARCHAR(100),
	Lenth Numeric(3,0)
);

CREATE TABLE Customers(
	Customer_ID SERIAL PRIMARY KEY,
	First_Name VARCHAR(100),
	Last_Name VARCHAR(100),
	Address VARCHAR(200),
	Billing_Info VARCHAR(300) UNIQUE
	
);

CREATE TABLE Tickets(
	Ticket_ID SERIAL PRIMARY KEY,
	Show_Time TIME,
	Amount Numeric(8,2),
	Total_Cost Numeric(8,2),
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES Customers(Customer_ID),
	FOREIGN KEY(movie_id) REFERENCES Movies(Movie_ID)

);

CREATE TABLE Concessions(
	Bar_Code SERIAL PRIMARY KEY,
	Title VARCHAR(30),
	Price Numeric(8,2),
	billing_info VARCHAR(300) NOT NULL,
	FOREIGN KEY(billing_info) REFERENCES Customers(Billing_Info)
);