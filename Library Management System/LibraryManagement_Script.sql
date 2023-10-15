--Using created databse--
Use Library;

--to see how many table exist in the database--
Select * from sys.tables;

--to see data inside table--
Select * from Authors;
Select * from Patron;
Select * from Books;
Select * from Borrowed_Books;

--Borrowing a book--
INSERT INTO Borrowed_Books (Borrow_ID,Books_Id,Patron_ID,Borrow_Date)
VALUES
    ('B11',101, 1002, '2023-09-25');

--Returning a book--
Update Borrowed_Books
Set Return_Date = '2023-09-28'
where Borrow_ID = 'B11';

--Search for a books by title-
Select * from Books 
where Title = '1984';

Select * from Books 
where Title = 'The Lord of the Rings';

--Search for a book by ISBN--
Select * from Books
where ISBN = '978-0-06-112008-4';

Select * from Books
where ISBN = '978-0-06-085052-4';

--Search for a book by Author name--
Select b.Title, b.Author_ID, b.Publication_Year, b.ISBN, b.Books_Availability, a.Author_Name from Books as b
join Authors as a on a.Author_ID = b.Author_ID
where Author_Name = 'George Orwell'; 

Select b.Title, b.Author_ID, b.Publication_Year, b.ISBN, b.Books_Availability, a.Author_Name from Books as b
inner join Authors as a on a.Author_ID = b.Author_ID
where Author_Name = 'F. Scott Fitzgerald';

--to track book borrowing and return history--
SELECT b.Title, p.Patron_ID, bb.Borrow_Date, bb.Return_Date
FROM Borrowed_Books as bb
JOIN Books as b
ON bb.Books_ID = b.Books_ID
JOIN Patron as p
ON bb.Patron_ID = p.Patron_ID;


--Select Into statement--
Select * into Patron_New
From Patron 
Where Patron_ID >= 1005;

--Merge statement--
Merge Patron as p
Using Patron_New as Pt
On p.Patron_ID = pt.Patron_ID
when not matched by target then
insert (First_Name,Last_Name,Email,P_Address,Phone_Number)
values(pt.First_Name,pt.Last_Name,pt.Email,pt.P_Address,pt.Phone_Number)
when matched then update set
p.First_Name = pt.First_Name,
p.Last_Name = pt.Last_Name,
p.Email = pt.Email,
p.P_Address = pt.P_Address,
p.Phone_Number = pt.Phone_Number;


--Top rated books--
SELECT a.Author_ID,Author_Name,Title,                   --First created Row_number window function--
ROW_NUMBER() OVER (ORDER by a.Author_ID) AS Rank
From Authors as a join Books as b
on a.Author_ID=b.Author_ID;

with Top_Rated_Books as(                              --created cte using above query--
SELECT a.Author_ID,Author_Name,Title,
ROW_NUMBER() OVER (ORDER by a.Author_ID) AS Rank
From Authors as a join Books as b
on a.Author_ID=b.Author_ID)
SELECT Author_ID,Author_Name,Title as TopRatedBook
FROM Top_Rated_Books
Where Rank=1;



