-- #1 students table
CREATE TABLE students (
    --primary key for the students table
    student_id INT PRIMARY KEY AUTO_INCREMENT,

    --sTUDENT NAME
    student_first_name VARCHAR(50) NOT NULL,
    student_last_name VARCHAR(50) NOT NULL,

    --student course
    student_course VARCHAR(50) NOT NULL,

    --student created at timestamp
    student_created_at TIMESTAMP NOT NULL 
    DEFAULT CURRENT_TIMESTAMP

)ENGINE=InnoDB AUTO_INCREMENT=1 
DEFAULT CHARSET=utf8mb4 
COLLATE=utf8mb4_general_ci;


-- #2 books table
CREATE TABLE books (
    --Primary key for the books table
    book_id INT PRIMARY KEY AUTO_INCREAMENT,

    --book details
    book_title VARCHAR(100) NOT NULL,
    book_author VARCHAR(100) NOT NULL,
    book_category VARCHAR(50) NOT NULL,

    --book created at timestamp
    book_created_at TIMESTAMP NOT NULL
    DEFAULT CURRENT_TIMESTAMP

)ENGINE=InnoDB AUTO_INCREMENT=1 
DEFAULT CHARSET=utf8mb4 
COLLATE=utf8mb4_general_ci;

-- #3 borrow table
CREATE TABLE borrow (
    --primary key for the borrow table
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,

    --Foreign key reference
    student_id INT NOT NULL,
    book_id INT NOT NULL,


    --borrow timestamp not null by defualt 
    borrow_date TIMESTAMP NOT NULL
    DEFAULT CURRENT_TIMESTAMP,

    --Borrow return timestamp not null by default 
    borrow_return_date TIMESTAMP NOT NULL
        DEFAULT NULL,

    --Borrow table constraints and foreign key
    CONSTRAINT fk_borrow_student 
        FOREIGN KEY (student_id)
        REFERENCES students(student_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_borrow_book
        FOREIGN KEY (book_id)
        REFERENCES books(book_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT

)ENGINE=InnoDB AUTO_INCREMENT=1 
DEFAULT CHARSET=utf8mb4 
COLLATE=utf8mb4_general_ci;

--Insert statement #1: Insert Students
INSERT INTRO students (
    student_first_name,
    student_last_name,
    student_course
) VALUES
    ('JACOB MARI', 'BALENDEZ', 'BSIT'),
    ('MARIA CARMELA', 'BALENDEZ', 'BSIT'),
    ('MARIA GABRELA', 'BALENDEZ', 'BSIT')

    --Insert statement #2: Insert books
    INSERT INTO books (
        book_title,
        book_author,
        book_category
    ) VALUES
    ('Narnia','Clive Staples Lewis','Fantasy'),
    ('Harry Potter','J.K. Rowling','Fantasy'),
    ('The Doctor','Sydney Newman','Adventure')

    --Insert statement #3: Insert borrows
    INSERT INTO borrows (
        student_id,
        book_id
    ) VALUES 
        (1,2),
        (2,3),
        (3,3);
