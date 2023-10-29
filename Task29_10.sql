Create database AB104
USE AB104

create table students (
Name varchar (25) not null ,
Surname varchar (25) default 'XXX',
Age int check (age>16),
AvgPoint decimal (5,2) check (AvgPoint>=0 and AvgPoint<=100)
)
insert into students (name,surname,age,avgpoint) values
('Samama','Guliyeva',19,89),
('Sebuhi','Camalzade',20,78),
('Asiman','Qasimzade',21,44),
('Zulu', 'Qurbanova',19,91)
insert into students (name,age,avgpoint) values
('Nigar',19,80),
('Tofiq',25,32)
insert into students (name,age,avgpoint) values
('Ulviyya',35,23.56),
('Riad',23,34.89)
insert into students (name,surname,age,avgpoint) values
('Alien','Basqaolkeyova',90,100)


select *from students where AvgPoint>51

select *from students where AvgPoint>51 and AvgPoint<90

select CONCAT(Name, ' ', Surname) as "Full Name" from Students where Name  LIKE 'A%n'

select *from students where AvgPoint<51 and Age>20 

select *from students