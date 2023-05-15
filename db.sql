CREATE DATABASE IF NOT EXISTS `CS157A`;

USE `CS157A`;

CREATE TABLE IF NOT EXISTS `user` (
    user_id int(9) NOT NULL PRIMARY KEY,
    fname varchar(64) NOT NULL,
    lname varchar(64) NOT NULL,
    pwd varchar(64) NOT NULL,
    email varchar(64),
    street text NOT NULL,
    city varchar(64) NOT NULL,
    state varchar(16) NOT NULL DEFAULT 'CA',
    zipcode int NOT NULL,
    age int NOT NULL,
    isAdmin tinyint(1) NOT NULL DEFAULT '0',
    borrow_unit int DEFAULT '0',
    CHECK (borrow_unit BETWEEN 0 AND 5),
    CHECK (age >= 0),
    CHECK (user_id BETWEEN 100000000 AND 999999999),
    CHECK (state = 'CA')
);

CREATE TABLE IF NOT EXISTS `library` (
    library_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    library_name varchar(64) NOT NULL,
    street text NOT NULL,
    city varchar(64) NOT NULL,
    state varchar(16) NOT NULL DEFAULT 'CA',
    zipcode int NOT NULL
);

CREATE TABLE IF NOT EXISTS `book` (
    book_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    book_name varchar(64) NOT NULL,
    book_image text,
    book_description text,
    book_author varchar(64),
    book_age_restriction int DEFAULT 0,
    book_category varchar(64),
    CHECK (book_age_restriction >= 0)
);

CREATE TABLE IF NOT EXISTS `book_library` (
    book_id int,
    library_id int NOT NULL,
    book_unit int NOT NULL,
    CHECK (book_unit > 0),
    PRIMARY KEY(book_id, library_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    FOREIGN KEY (library_id) REFERENCES library(library_id)
);

CREATE TABLE IF NOT EXISTS `borrow` (
    borrow_id int AUTO_INCREMENT,
    user_id int(9) NOT NULL,
    borrow_date DATE NOT NULL,
    borrow_duedate DATE NOT NULL,
    book_id int,
    library_id int,
    PRIMARY KEY(borrow_id, user_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (book_id, library_id) REFERENCES book_library(book_id, library_id)
);