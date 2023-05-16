USE CS157A;

INSERT INTO user (user_id, fname, lname, pwd, email, street, city, zipcode, age, isAdmin)
VALUES 
('123456789', 'Yanping', 'Li', '123', 'yl@gmail.com', '1 Main St', 'San Jose', '95116', '18', '1'),
('121212121', 'Kid', 'Li', '123', 'kid@gmail.com', '2 Main St', 'San Jose', '95111', '5', '0');

INSERT INTO library (library_name, street, city, zipcode)
VALUES
('Dr. Martin Luther King, Jr. Library', '150 E San Fernando St', 'San Jose', '95112'),
('East San Jose Carnegie Library', '1102 E Santa Clara St', 'San Jose', '95116'),
('Educational Park Branch Library', '1772 Educational Park Dr', 'San Jose', '95133'),
('Village Square Branch Library', '4001 Evergreen Village Square', 'San Jose', '95135');

INSERT INTO book (book_name, book_image, book_description, book_author, book_age_restriction, book_category)
VALUES
('Book A', 'a.png', 'Volumn 1', 'YP', '0', 'Mystery'),
('Book B', 'b.png', 'Volumn 1', 'ZP', '18', 'Non-fiction'),
('Book A', 'aa.png', 'Volumn 2', 'YP', '0', 'Mystery'),
('Book C',  NULL, NULL, NULL, NULL, NULL);

INSERT INTO book_library (book_id, library_id, book_unit)
VALUES
('1', '1', '2'),
('2', '1', '7'),
('1', '4', '99'),
('3', '3', '22'),
('3', '2', '21');


