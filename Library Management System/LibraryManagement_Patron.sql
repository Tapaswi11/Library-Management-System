--Using Created Database--
Use Library;

--Creating Patron Table--
CREATE TABLE Patron (
    Patron_ID INT PRIMARY KEY Identity(1001,1),
    First_Name VARCHAR(20) NOT NULL,
    Last_Name VARCHAR(20) NOT NULL,
    Email VARCHAR(50),
    P_Address VARCHAR(100),
	Phone_Number Varchar(100)
);

--Inserting data into Table--
INSERT INTO Patron (First_Name, Last_Name, Email, P_Address,Phone_Number)
VALUES
    ('John', 'Doe', 'john.doe@example.com','123 Main St,US','212-354-5500'),
    ('Alice', 'Smith', 'alice.smith@example.com','456 Elm St, US','212-420-5800'),
    ('Bob', 'Johnson', 'bob.johnson@example.com', '789 Oak St, UK','212-366-2000'),
    ('Emily', 'Davis', 'emily.davis@example.com','321 Maple St,US','646-307-5745'),
    ('Michael', 'Wilson', 'michael.wilson@example.com', '567 Pine St, UK','212-207-7000'),
    ('Sara', 'Anderson', 'sara.anderson@example.com', '890 Birch St, US','212-419-5300'),
    ('David', 'Brown', 'david.brown@example.com','234 Cedar St, UK','212-940-7390'),
    ('Lisa', 'Lee', 'lisa.lee@example.com', '432 Redwood St,Canada','212-366-2000'),
    ('Chris', 'Miller', 'chris.miller@example.com', '765 Willow St, Noida','212-366-2000'),
    ('Grace', 'Moore', 'grace.moore@example.com', '876 Oak St,Pune','646-307-5745');


--To show created table--
	Select * from Patron;