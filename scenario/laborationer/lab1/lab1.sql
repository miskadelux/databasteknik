create database lab1;
use lab1;

create table Customers (
    CustomerNumber int auto_increment,
    name varchar (100) not null,
    BirthDate date,
    primary key (CustomerNumber)
);

create table Cars (
    CarNumber int AUTO_INCREMENT,
    brand varchar (100),
    Model varchar (100),
    Color varchar (100),
    PricePerDay int,
    primary key (CarNumber)
);
use lab1;
create table Bookings (
    CustomerNumber int,
    CarNumber int,
    Startdate date,
    EndDate date,
    PRIMARY key (CustomerNumber,CarNumber, Startdate),
    foreign key (CustomerNumber) REFERENCES Customers(CustomerNumber),
    foreign key (CarNumber) REFERENCES Cars(CarNumber)
);

use lab1;

insert into Cars (brand, model, color, PricePerDay) VALUES ('Peugeot', '208', 'Blue', 800);
insert into Cars (brand, model, color, PricePerDay) VALUES ('Peugeot', '3008', 'Green', 700);
insert into Cars (brand, model, color, PricePerDay) VALUES ('Volkswagen', 'Polo', 'Red', 600);
insert into Cars (brand, model, color, PricePerDay) VALUES ('Volvo', 'V70', 'Silver', 1200);
insert into Cars (brand, model, color, PricePerDay) VALUES ('Tesla', 'X', 'Black', 2000);
insert into Cars (brand, model, color, PricePerDay) VALUES ('SAAB', '9-5', 'Green', 850);
insert into Cars (brand, model, color, PricePerDay) VALUES ('Volvo', 'V40', 'Red', 900);
insert into Cars (brand, model, color, PricePerDay) VALUES ('Fiat', '500', 'Black', 1050);
insert into Cars (brand, model, color, PricePerDay) VALUES ('Volvo', 'V40', 'Green', 850);
insert into Cars (brand, model, color, PricePerDay) VALUES ('Fiat', '500', 'Red', 950);
insert into Cars (brand, model, color, PricePerDay) VALUES ( 'Volkswagen', 'Polo', 'Blue', 700);
insert into Cars (brand, model, color, PricePerDay) VALUES ('BMW', 'M3', 'Black', 1599);
insert into Cars (brand, model, color, PricePerDay) VALUES ('Volkswagen', 'Golf', 'Red', 1500);

insert into Customers (name, BirthDate) Values ('Alice Andersson', '1990-05-05');
insert into Customers (name, BirthDate) Values ('Oscar Johansson', '1975-08-10');
insert into Customers (name, BirthDate) Values ('Nora Hansen', '1981-10-27');
insert into Customers (name, BirthDate) Values ('William Johansen', '2000-01-17');
insert into Customers (name, BirthDate) Values ('Lucía García', '1987-12-13');
insert into Customers (name, BirthDate) Values ('Hugo Fernández', '1950-03-16');
insert into Customers (name, BirthDate) Values ('Sofia Rossi', '1995-08-04');
insert into Customers (name, BirthDate) Values ('Francesco Russo', '2000-02-26');
insert into Customers (name, BirthDate) Values ('Olivia Smith', '1972-05-23');
insert into Customers (name, BirthDate) Values ('Oliver Jones', '1964-05-08');
insert into Customers (name, BirthDate) Values ('Shaimaa Elhawary', '1999-12-23');
insert into Customers (name, BirthDate) Values ('Mohamed Elshabrawy', '1997-11-07');
insert into Customers (name, BirthDate) Values ('Jing Wong', '1947-07-15');
insert into Customers (name, BirthDate) Values ('Wei Lee', '1962-09-29');
insert into Customers (name, BirthDate) Values ('Aadya Singh', '1973-01-01');
insert into Customers (name, BirthDate) Values ('Aarav Kumar', '1986-06-28');
insert into Customers (name, BirthDate) Values ('Louise Martin', '1994-04-22');
insert into Customers (name, BirthDate) Values ('Gabriel Bernard', '1969-12-01');
insert into Customers (name, BirthDate) Values ('Emma Smith', '1971-03-18');
insert into Customers (name, BirthDate) Values ('Noah Johnson', '1800-12-16');
insert into Customers (name, BirthDate) Values ('Alice Silva', '1988-12-04');
insert into Customers (name, BirthDate) Values ('Miguel Santos', '1939-12-29');

insert into Bookings Values (1, 6, '2018-01-02', '2018-01-15');
insert into Bookings Values (2, 1, '2018-01-03', '2018-01-05');
insert into Bookings Values (4, 3, '2018-01-03', '2018-01-04');
insert into Bookings Values (5, 8, '2018-01-04', '2018-01-30');
insert into Bookings Values (6, 10, '2018-01-10', '2018-01-13');
insert into Bookings Values (1, 1, '2018-01-20', '2018-01-25');
insert into Bookings Values (2, 13, '2018-01-21', '2018-01-30');
insert into Bookings Values (3, 6, '2018-01-22', '2018-01-30');
insert into Bookings Values (1, 2, '2018-01-29', '2018-02-01');
insert into Bookings Values (2, 5, '2018-02-02', '2018-02-06');
insert into Bookings Values (6, 1, '2018-02-20', '2018-02-25');
insert into Bookings Values (7, 6, '2018-02-21', '2018-02-24');
insert into Bookings Values (8, 3, '2018-02-21', '2018-02-28');
insert into Bookings Values (10, 3, '2018-02-22', '2018-02-26');
insert into Bookings Values (9, 12, '2018-02-22', '2018-02-28');
insert into Bookings Values (10, 13, '2018-03-01', '2018-03-10');
insert into Bookings Values (11, 1, '2018-03-04', '2018-03-09');
insert into Bookings Values (10, 3, '2018-03-11', '2018-03-14');
insert into Bookings Values (8, 6, '2018-03-14', '2018-03-17');
insert into Bookings Values (9, 5, '2018-03-14', '2018-03-30');
insert into Bookings Values (7, 12, '2018-03-18', '2018-03-20');
insert into Bookings Values (6, 8, '2018-03-18', '2018-04-02');


-- Show all customers with all their information.
select * from Customers;

-- Show all customers, but only with their name and birthdate.
select birthdate from Customers;

-- Show all cars that cost more than 1000:- per day.
select * from Cars 
where PricePerDay > 1000;

-- Show all Volvo cars, only with their brand name and their model.
select brand, model 
from Cars
where brand = 'Volvo';

-- Show all customers, only with their names, in a sorted fashion based on their name. Both in ascending and descending order.
select name 
from Customers
order by name ASC;

select name
from Customers
order by name Desc;

-- Show all customers, only with their names, that were born in 1990 or later in a sorted fashion based on their birthdate.
select name, BirthDate
from Customers
where BirthDate >= '1990-01-01';
order by BirthDate ASC;

-- Show all cars that are red and cost less than 1500.
select color, PricePerDay
from Cars
where color = 'red'
    and  PricePerDay < '1500';

-- Show all customers, only with their names, that were born between 1970-1990.
select name, birthdate
from Customers
where year(BirthDate) between 1970 and 1990;

-- Show all bookings that are longer than 6 days.
select *, datediff(EndDate, Startdate) as duration
from Bookings
where datediff(EndDate, Startdate) > 6;


use lab1;
-- Show all bookings that overlap with the interval 2018-02-01 - 2018-02-25.
select *
from Bookings
where Startdate <= '2018-02-25'
    and EndDate >= '2018-02-01';

