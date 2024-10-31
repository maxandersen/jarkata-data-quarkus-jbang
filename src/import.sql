INSERT INTO Author (ssn, name, street, city, postcode) VALUES ('123-45-6789', 'John Doe', '123 Main St', 'Springfield', '12345');
INSERT INTO Author (ssn, name, street, city, postcode) VALUES ('987-65-4321', 'Jane Smith', '456 Elm St', 'Shelbyville', '67890');

INSERT INTO Publisher (id, name) VALUES (1, 'Penguin Random House');
INSERT INTO Publisher (id, name) VALUES (2, 'HarperCollins');
INSERT INTO Publisher (id, name) VALUES (3, 'Simon & Schuster');
INSERT INTO Publisher (id, name) VALUES (4, 'Hachette Book Group');
INSERT INTO Publisher (id, name) VALUES (5, 'Macmillan Publishers');
INSERT INTO Publisher (id, name) VALUES (6, 'Scholastic Corporation');
INSERT INTO Publisher (id, name) VALUES (7, 'Wizards of the Coast');
INSERT INTO Publisher (id, name) VALUES (8, 'Tor Books');
INSERT INTO Publisher (id, name) VALUES (9, 'Baen Books');
INSERT INTO Publisher (id, name) VALUES (10, 'Chronicle Books');

INSERT INTO Book (isbn, title, pages, publisher_id, type, price, publicationdata, quantitysold) VALUES ('978-3-16-148410-0', 'The Great Adventure', 300, 1, 'magazine', 10.99, '2024-01-01', 100);


INSERT INTO Author_Book (authors_ssn, books_isbn) VALUES ('123-45-6789', '978-3-16-148410-0');
INSERT INTO Author_Book (authors_ssn, books_isbn) VALUES ('987-65-4321', '978-1-4028-9462-6');

