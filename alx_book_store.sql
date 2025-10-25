CREATE DATABASE IF NOT EXISTS alx_book_store;
   book_id serial primary key,
   title VARCHAR(130),
   author_id integer references authors(id),
   price DOUBLE,
   publication_date DATE
);

CREATE TABLE Books (
    book_id serial primary key,
    title VARCHAR(130),
    author_id integer references Authors(author_id),
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE Authors (
    author_id serial primary key,
    author_name VARCHAR(215)
);

CREATE TABLE Customers (
    customer_id serial primary key,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE Orders (
    order_id serial primary key,
    customer_id integer references Customers(customer_id),
    order_date DATE
);

CREATE TABLE Order_Details (
   orderdetailid serial primary key,
   order_id integer references Orders(order_id),
   book_id integer references Books(book_id),
   quantity double
);
