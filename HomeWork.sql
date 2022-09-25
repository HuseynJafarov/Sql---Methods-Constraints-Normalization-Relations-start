create database Course
use Course


 create table Teachers(
Id int primary key identity(1,1),
[Name] nvarchar(50) not null,
Surname nvarchar(50) default 'XXX',
Age int,
Email nvarchar(150) unique,
Salary decimal
)

   select * from Teachers

   insert into Teachers([Name],Surname,Email,Age,Salary)
   values('Huseyn','Ceferov','huseynnj@code.edu.az',23,3500),('Eli','Eliyev','eli@code.edu.az',25,2500.50)
   ,('Azer','Nuraliyev','azer@mail.ru',20,2800.50),('Orxan','Ekberov','orxan@mail.ru',27,3000),('Seid','Veliyev','seid@mail.ru',35,3200)
   ,('Emil','Veliyev','emil@mail.ru',22,3800)

SELECT AVG(Age) AS AverageAge FROM Teachers;

SELECT * FROM Teachers
WHERE Age > (SELECT AVG(Age)FROM Teachers);

select * from Teachers
where Salary between 3000 and 4000

select [Name], Surname from Teachers
where Teachers.Email like '%mail.ru'

select * from Teachers
where Teachers.Name like 'E%'