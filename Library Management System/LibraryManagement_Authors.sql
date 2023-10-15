--Using Created Database--
Use Library;


--Creating Author Table--
Create table Authors(
  Author_ID INT Primary Key Identity(1,1),
  Author_Name Varchar(100),
  BirthDate Date,
  Nationality Varchar(30)
);

--Inserting Data in created table--
INSERT INTO Authors(Author_Name, BirthDate, Nationality)
VALUES
    ('Harper Lee', '1926-04-28', 'United States'),
    ('George Orwell', '1903-06-25', 'United Kingdom'),
    ('F. Scott Fitzgerald', '1896-09-24', 'United States'),
    ('Jane Austen', '1775-12-16', 'United Kingdom'),
    ('J.D. Salinger', '1919-01-01', 'United States'),
    ('Aldous Huxley', '1894-07-26', 'United Kingdom'),
    ('J.R.R. Tolkien', '1892-01-03', 'United Kingdom'),
    ('Homer','1900-02-11', 'Greece'),
	('Virginia Woolf','2022-05-05','United States'),
    ('Agatha Christie', '1890-09-15', 'British');

--To show created Table--
Select * from Authors;
