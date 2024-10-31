INSERT INTO Publisher (id, name) VALUES (1, 'Penguin Random House');
INSERT INTO Publisher (id, name) VALUES (2, 'HarperCollins');
INSERT INTO Publisher (id, name) VALUES (3, 'Simon & Schuster');

INSERT INTO Author (ssn, name, address) VALUES ('123-45-6789', 'John Doe', '123 Main St');
INSERT INTO Author (ssn, name, address) VALUES ('987-65-4321', 'Jane Smith', '456 Elm St');
INSERT INTO Author (ssn, name, address) VALUES ('555-55-5555', 'Alice Johnson', '789 Oak St');

INSERT INTO Book (isbn, title, publicationDate, text, type, publisher_id, pages, price, quantitySold) VALUES ('978-3-16-148410-0', 'Book One', '2022-01-01', 'Text of Book One', 'Book', 1, 300, 19.99, 1000);
INSERT INTO Book (isbn, title, publicationDate, text, type, publisher_id, pages, price, quantitySold) VALUES ('978-1-23-456789-7', 'Book Two', '2022-02-01', 'Text of Book Two', 'Book', 2, 250, 15.99, 500);
INSERT INTO Book (isbn, title, publicationDate, text, type, publisher_id, pages, price, quantitySold) VALUES ('978-0-12-345678-9', 'Book Three', '2022-03-01', 'Text of Book Three', 'Book', 3, 400, 25.99, 1500);

INSERT INTO Author_Book (Author_ssn, books_isbn) VALUES ('123-45-6789', '978-3-16-148410-0');
INSERT INTO Author_Book (Author_ssn, books_isbn) VALUES ('987-65-4321', '978-1-23-456789-7');
INSERT INTO Author_Book (Author_ssn, books_isbn) VALUES ('555-55-5555', '978-0-12-345678-9');
INSERT INTO Author_Book (Author_ssn, books_isbn) VALUES ('123-45-6789', '978-1-23-456789-7');
INSERT INTO Author_Book (Author_ssn, books_isbn) VALUES ('987-65-4321', '978-0-12-345678-9');
