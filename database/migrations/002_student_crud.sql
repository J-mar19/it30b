-- student SQL#1: select all students
SELECT * FROM students;

--student   SQL#2: select students in asc order by id;
SELECT * FROM students
    ORDER BY student_id ASC;

--student SQL#3: select students in asc order by id;
SELECT * FROM students
    ORDER BY student_id DESC;

--student SQL#4: SELECT students in asc order by students_last_name
SELECT * FROM students
    ORDER BY student_last_name ASC;

--student SQL#5: select students in desc student_last_name
SELECT * FROM students 
    ORDER BY student_last_name DESC;

--student SQL#6: select books in asc book_author

SELECT * FROM books 
ORDER BY book_author DESC;

--you can modify displayed columns by selecting 
--specific columns after SELECT command
--student SQL#8 display all students: first_name and last_name

SELECT student_first_name,
        student_last_name

FROM students
ORDER BY student_first_name ASC;

--student SQL#9 LIMIT 1
SELECT student_first_name,
        student_last_name

FROM students
ORDER BY student_first_name ASC
LIMIT 1;

--student SQL#10 - select a student based on id

SELECT student_first_name,
        student_last_name

FROM Students
WHERE student_id = 1
LIMIT 1;

--student SQL#10 - update a student name based on id

UPDATE students
SET student_first_name='jacob',
    student_last_name='balendez'
    WHERE student_id = 20241502;

UPDATE books 
SET book_author='That Time I Got Reincarnated as a Slime',
    boo_category='Satoru Mikami'
WHERE book_id =1;