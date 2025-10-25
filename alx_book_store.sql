CREATE DATABASE IF NOT EXISTS alx_book_store;
   book_id serial primary key,
   title VARCHAR(130),
   author_id integer references authors(id),
   price DOUBLE,
   publication_date DATE
);

CREATE TABLE Books (
    book_id PRIMARY KEY,
    title VARCHAR(130),
    author_id integer references Authors(author_id),
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE Authors (
    author_id PRIMARY KEY,
    author_name VARCHAR(215)
);

CREATE TABLE Customers (
    customer_id PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE Orders (
    order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details (
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, book_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
