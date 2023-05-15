USE CS157A;

Testing constraints in the user table (user_id, borrow_unit, age, state):
INSERT INTO user (user_id, fname, lname, pwd, email, street, city, zipcode, age, isAdmin, borrow_unit, state)
VALUES 
('999999999', 'Test', 'l', '123', 'yl@gmail.com', '1 Main St', 'San Jose', '95116', '18', '0', '6', 'CA');
('123456788', 'Test', 'l', '123', 'yl@gmail.com', '1 Main St', 'San Jose', '95116', '-1', '0', '5', 'CA');
('1234567881', 'Test', 'l', '123', 'yl@gmail.com', '1 Main St', 'San Jose', '95116', '18', '0', '5', 'CA');
('123456788', 'Test', 'l', '123', 'yl@gmail.com', '1 Main St', 'San Jose', '95116', '18', '0', '5', 'NY');

Testing constraint in the book table (book_age_restriction):
INSERT INTO book (book_name, book_image, book_description, book_author, book_age_restriction, book_category)
VALUES
('Book A', 'a.png', 'Volumn 1', 'YP', '-1', 'Mystery');


INSERT INTO borrow (user_id, book_id, library_id, borrow_date, borrow_duedate)
VALUES
('121212121', '2', '1', '2023-05-15', '2023-06-15'),
('121212121', '1', '1', '2023-07-15', '2023-08-15'),
('121212121', '3', '3', '2023-09-15', '2023-10-15');


