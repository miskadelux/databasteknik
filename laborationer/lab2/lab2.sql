create database lab2;

use lab2;

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

create table Bookings (
    CustomerNumber int,
    CarNumber int,
    Startdate date,
    EndDate date,
    PRIMARY key (CustomerNumber,CarNumber, Startdate),
    foreign key (CustomerNumber) REFERENCES Customers(CustomerNumber),
    foreign key (CarNumber) REFERENCES Cars(CarNumber)
);

use lab2;

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



use lab2;


select *
from Bookings
where CarNumber = 1


use lab2;
-- - Create a function that checks if a car is available for renting between two dates. 
-- The input to the function should be the starting and ending dates of the rental, the cars number,
-- and it should return 0 if it is not available and 1 if it is available between the two dates.

SELECT COUNT(*) as bookings
FROM Bookings
where CarNUmber = 1
    AND StartDate < '2018-12-31'
    AND EndDate > '2018-01-01'

use lab2;

DELIMITER //

create function is_car_available(p_start DATE, p_end DATE, p_car_ID INT)
RETURNS INT
DETERMINSTIC
BEGIN
    Declare v_count INT;
    
    SELECT COUNT(*) as bookings
    FROM Bookings
    where CarNUmber = 1
        AND p_start < EndDate 
        AND p_end > StartDate;

    IF v_count > 0
        RETURN 0;
    ELSE
        RETURN 1;
    END IF;
END //

DELIMITER ;


use lab2;
-- Create a function that sums the total amount of days cars have been booked and returns the sum.

select SUM(DATEDIFF(EndDate, StartDate)) INTO booked_days
from Bookings


USE lab2;
DELIMITER //

CREATE FUNCTION amount_cars_booked()
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total_days INT;

    SELECT SUM(DATEDIFF(EndDate, StartDate)) INTO total_days
    FROM Bookings;

    RETURN IFNULL(total_days, 0);
END//

DELIMITER ;