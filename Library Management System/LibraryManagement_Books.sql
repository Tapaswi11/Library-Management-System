--Creating of database and using it--
Create Database Library;
Use Library;


--Creating Books Table--
Create Table Books(
   Books_Id INT Primary Key Identity(101,1),
   Title Varchar(100),
   ISBN Varchar(40) Unique,
   Publication_Year INT,
   Books_Availability INT,
   Author_ID INT
   FOREIGN KEY (Author_ID) REFERENCES Authors(Author_ID),
);


--Inserting data into created table--
INSERT INTO books (Title, Author_ID, Publication_Year, ISBN, Books_Availability)
VALUES
    ('To Kill a Mockingbird',1, 1960, '978-0-06-112008-4', 5),
    ('1984', 2, 1949, '978-0-452-28423-4', 3),
    ('The Great Gatsby', 3, 1925, '978-0-7432-7356-5', 7),
    ('Pride and Prejudice',4, 1813, '978-0-19-953556-9', 2),
    ('The Catcher in the Rye',5, 1951, '978-0-316-76948-0', 4),
    ('Brave New World',6, 1932, '978-0-06-085052-4', 1),
    ('The Hobbit',7, 1937, '978-0-618-34641-9', 6),
    ('The Lord of the Rings', 8, 1954, '978-0-345-33968-3', 2),
    ('To the Lighthouse', 9, 1927, '978-0-15-690739-2', 5),
    ('The Odyssey', 10, 1999 , 'N/A', 3);


--to show created table--
Select * from Books;



