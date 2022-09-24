CREATE DATABASE Course;

CREATE TABLE Teachers (
    Id int,
    [Name] nvarchar(50) not null,
    Surname nvarchar(50),
    Email nvarchar(150) unique,
    Age int,
	Salary decimal
);

SET IDENTITY_INSERT Teachers ON

INSERT INTO Teachers (Id, [Name], Surname, Email, Age, Salary)
VALUES ('5', 'Kimse', 'Nebilim', 'senan@gmail.com', '50', '7000');

SELECT * FROM Teachers;

--yashi butun muellimlerin yashinin ortalamasindan boyuk olan muellimin yashi
SELECT * FROM Teachers
WHERE Age > (SELECT AVG(Age) FROM Teachers)

--Maashi 1000  ve 3000 araliqinda olan muellimlerin siyahisi
SELECT * FROM Teachers 
WHERE Salary > 1000
AND Salary < 5000

--Emailin sonu mail.ru olan muellimlerin adi ve soyadi
SELECT * FROM Teachers
WHERE Email like '%mail.ru'

--Adi C herfi ile bashlayan muellimlerin siyahisi
SELECT * FROM Teachers
WHERE [Name] like 'C%'

SELECT * FROM Teachers;