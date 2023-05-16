-- -- User Borrow Book
-- INSERT INTO borrow (user_id, book_id, library_id, borrow_date, borrow_duedate)
-- VALUES
-- ('121212121', '2', '1', '2023-05-15', '2023-06-15'),
-- ('121212121', '1', '1', '2023-07-15', '2023-08-15'),
-- ('121212121', '3', '3', '2023-09-15', '2023-10-15');
-- UPDATE user SET borrow_unit = borrow_unit + 3 WHERE user_id = 121212121;
-- UPDATE book_library SET book_unit = book_unit - 1 WHERE book_id = 1 AND library_id = 1;
-- UPDATE book_library SET book_unit = book_unit - 1 WHERE book_id = 2 AND library_id = 1;
-- UPDATE book_library SET book_unit = book_unit - 1 WHERE book_id = 3 AND library_id = 3;

-- -- User borrow list
-- SELECT fname, lname, book_name, library_name, borrow_date, borrow_duedate, borrow_unit
-- FROM user, book, library, borrow
-- WHERE user.user_id = borrow.user_id
-- AND borrow.book_id = book.book_id
-- AND borrow.library_id = library.library_id
-- AND user.user_id = '121212121';

-- -- Check book unit
-- SELECT book.book_name, library.library_name, book_library.book_unit
-- FROM book, library, book_library
-- WHERE book_library.book_id = book.book_id
-- AND book_library.library_id = library.library_id;

-- -- User Return Book
-- DELETE FROM borrow WHERE user_id = '121212121' AND book_id = '1' AND library_id = '1';
-- UPDATE book_library SET book_unit = book_unit + 1 WHERE book_id = 1 AND library_id = 1;
-- UPDATE user SET borrow_unit = borrow_unit - 1 WHERE user_id = '121212121';

-- -- Library List of Books Report
-- SELECT library.library_name, book.book_name, book.book_author, book.book_description, book.book_category, book_library.book_unit
-- FROM book, library, book_library
-- WHERE book.book_id = book_library.book_id
-- AND library.library_id = book_library.library_id;
