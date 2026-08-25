CREATE TABLE books(
  book_id int(11) NOT NULL AUTO_INCREMENT,
  book_title varchar(100) NOT NULL,
  book_author varchar(100) NOT NULL,
  book_category varchar(50) NOT NULL,
  book_created_at timestamp NOT NULL DEFAULT current_timestamp
);

CREATE TABLE borrow(
     borrow_id INT AUTO_INCREMENT PRIMARY KEY,
     student_id INT NOT NULL,
     book_id INT NOT NULL,
     borrow_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
     borrow_return_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
     CONSTRAINT fk_borrow_student FOREIGN KEY (student_id) REFERENCES students(student_id),
     CONSTRAINT fk_borrow_book FOREIGN KEY (book_id) REFERENCES books(book_id)
 );