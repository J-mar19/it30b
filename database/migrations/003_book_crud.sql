-- book SQL#1 : select all books
SELECT * FROM books;

-- book SQL32 - Select a book based on id
SELECT book_title,
        book_category
FROM books 
WHERE book_id = 1
LIMIT 1;

-- book SQL#3 - update book name a book based on id
UPDATE books 
SET book_title='Narnia',
    book_author='Clive Staples Lewis',
    book_category='Fantasy'
WHERE book_id = 1;