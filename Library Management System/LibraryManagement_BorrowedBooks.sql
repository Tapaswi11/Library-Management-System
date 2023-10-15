--Using created Database--
Use Library;


--Creating Borrowed Books Table--
CREATE TABLE Borrowed_Books (
    Borrow_ID Varchar(50) PRIMARY KEY,
    Books_Id INT,
    Patron_ID INT,
    Borrow_Date DATE NOT NULL,
    Return_Date DATE,
    FOREIGN KEY (Books_Id) REFERENCES Books(Books_Id),
    FOREIGN KEY (Patron_ID) REFERENCES Patron(Patron_ID)
);


--Inserting Data into created table--
INSERT INTO Borrowed_Books (Borrow_ID,Books_Id,Patron_ID,Borrow_Date, Return_Date)
VALUES
    ('B1',101, 1001, '2023-09-01', '2023-09-15'),
    ('B2',102, 1002, '2023-09-02', '2023-09-16'),
    ('B3',103, 1003, '2023-09-03', '2023-09-17'),
    ('B4',104, 1004, '2023-09-04', '2023-09-18'),
    ('B5',105, 1005, '2023-09-05', '2023-09-19'),
    ('B6',106, 1006, '2023-09-06', '2023-09-20'),
    ('B7',107, 1007, '2023-09-07', '2023-09-21'),
    ('B8',108, 1008, '2023-09-08', '2023-09-22'),
    ('B9',109, 1009, '2023-09-09', '2023-09-23'),
    ('B10',110,1010, '2023-09-10', '2023-09-24');

--To show created Table--
Select * from Borrowed_Books;