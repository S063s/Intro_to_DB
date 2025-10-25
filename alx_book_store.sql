CREATE DATABASE IF NOT EXISTS alx_book_store;
   book_id serial primary key,
   title VARCHAR(130),
   author_id integer references authors(id),
   price DOUBLE,
   publication_date DATE
);

CREATE TABLE authors (
    author_id serial primary key,
    author_name VARCHAR(215)
);

CREATE TABLE customers (
    customer_id serial primary key,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE orders (
    order_id serial primary key,
    customer_id integer references customers(customer_id),
    order_date DATE
);

CREATE TABLE order_details (
   orderdetailid serial primary key,
   order_id integer references orders(order_id),
   book_id integer references books(book_id),
   quantity double
);
