CREATE TABLE customer(id INT PRIMARY KEY, name TEXT NOT NULL, email TEXT ); 

CREATE TABLE books(id INT PRIMARY KEY, title TEXT, author TEXT, price REAL);

CREATE TABLE sales(id INT PRIMARY KEY, customer_id INT, book_id INT, quantity INT, sales_date TEXT, FOREIGN KEY(customer_id) REFERENCES customer(id), FOREIGN KEY(book_id) REFERENCES books(id) ); 

