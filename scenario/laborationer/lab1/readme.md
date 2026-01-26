## Tables
The use case for this lab is that a car rental company has decided to digitalise their booking system for easier bookkeeping. The company wants to allow their customers to book cars on their own via their website. Currently, they have 3 folders which each have its own purpose. One contains information about the cars, one about the customer, and the third contains the bookings that the customers has made, and they can be viewed as follows:

## Cars
| Column        | Description |
| ------------- | ------------- |
| CarNumber     | The unique identifying number for the car  | 
| Brand         | The brand of the car |
| Model         | The model of the car  |
| Color         | The color of the car  |
| PricePerDay   | How much the car costs to rent for a whole day in whole SEK  |

## Customers
| column              | Description   |
| -------------       | ------------- |
| CustomerNumber	  | The unique identifying number the customer has  |
| Name                | The name of the customer  |
| BirthDate           | The date of birth for the customer |

## Bookings
| column | Description |
| ------------- | ------------- |
| CustomerNumber  |The customer that has booked the car |
| CarNumber  | The car that the customer has booked  |
| StartDate  | 	The day that the booking starts |
| EndDate  | The day that the booking ends |

	
### Investigate the tables above and answer the following questions:

Which of the variables are suitable as Primary Keys (PK) in the Cars and Customers tables? (Skip Bookings for now)
- answer the most suitable PK for Cars table is CarNumber, and för Customers table is the most suitable CustomerNumber, in the Booking table, there are two primary keys acting like foreign keys

How are the tables connected to each other? Create an Entity-Relationship (ER) diagram.

erDiagram
    CUSTOMERS ||--o{ BOOKINGS : makes
    CARS ||--o{ BOOKINGS : recives

    CUSTOMERS  {
        int customerNumber PK
        string name
        data BirthDate
    }

    CARS {
        int CarNumber PK
        string Brand
        string Model
        string Color
        int PricePerDay
    }

    BOOKINGS {
        int CustomerNumber FK
        int CarNumber FK
        date StartDate
        date EndDate
    }

Think about how we can uniquely identify bookings made by customers without adding another column, we will revisit this later.
- answer: if we create a new table that handels all of the bookings

Create the tables in your MySQL with their suitable variable types. Then continue on by inserting the following data into the tables (a txt file with the data can be found here Download here):
- answer: The MySQL code is written in the lab1.sql file.


### Cars
1, 'Peugeot', '208', 'Blue', 800
2, 'Peugeot', '3008', 'Green', 700
3, 'Volkswagen', 'Polo', 'Red', 600
4, 'Volvo', 'V70', 'Silver', 1200
5, 'Tesla', 'X', 'Black', 2000
6, 'SAAB', '9-5', 'Green', 850
7, 'Volvo', 'V40', 'Red', 900
8, 'Fiat', '500', 'Black', 1050
9, 'Volvo', 'V40', 'Green', 850
10, 'Fiat', '500', 'Red', 950
11, 'Volkswagen', 'Polo', 'Blue', 700
12, 'BMW', 'M3', 'Black', 1599
13, 'Volkswagen', 'Golf', 'Red', 1500



### Customers
1, 'Alice Andersson', '1990-05-05'
2, 'Oscar Johansson', '1975-08-10'
3, 'Nora Hansen', '1981-10-27'
4, 'William Johansen', '2000-01-17'
5, 'Lucía García', '1987-12-13'
6, 'Hugo Fernández', '1950-03-16'
7, 'Sofia Rossi', '1995-08-04'
8, 'Francesco Russo', '2000-02-26'
9, 'Olivia Smith', '1972-05-23'
10, 'Oliver Jones', '1964-05-08'
11, 'Shaimaa Elhawary', '1999-12-23'
12, 'Mohamed Elshabrawy', '1997-11-07'
13, 'Jing Wong', '1947-07-15'
14, 'Wei Lee', '1962-09-29'
15, 'Aadya Singh', '1973-01-01'
16, 'Aarav Kumar', '1986-06-28'
17, 'Louise Martin', '1994-04-22'
18, 'Gabriel Bernard', '1969-12-01'
19, 'Emma Smith', '1971-03-18'
20, 'Noah Johnson', '1800-12-16'
21, 'Alice Silva', '1988-12-04'
22, 'Miguel Santos', '1939-12-29'




### Bookings
1, 6, '2018-01-02', '2018-01-15'
2, 1, '2018-01-03', '2018-01-05'
4, 3, '2018-01-03', '2018-01-04'
5, 8, '2018-01-04', '2018-01-30'
6, 10, '2018-01-10', '2018-01-13'
1, 1, '2018-01-20', '2018-01-25'
2, 13, '2018-01-21', '2018-01-30'
3, 6, '2018-01-22', '2018-01-30'
1, 2, '2018-01-29', '2018-02-01'
2, 5, '2018-02-02', '2018-02-06'
6, 1, '2018-02-20', '2018-02-25'
7, 6, '2018-02-21', '2018-02-24'
8, 3, '2018-02-21', '2018-02-28'
10, 3, '2018-02-22', '2018-02-26'
9, 12, '2018-02-22', '2018-02-28'
10, 13, '2018-03-01', '2018-03-10
11, 1, '2018-03-04', '2018-03-09'
10, 3, '2018-03-11', '2018-03-14'
8, 6, '2018-03-14', '2018-03-17'
9, 5, '2018-03-14', '2018-03-30'
7, 12, '2018-03-18', '2018-03-20'
6, 8, '2018-03-18', '2018-04-02'
 

### Selection, Projection, and Restriction
Show all customers with all their information.
Show all customers, but only with their name and birthdate.
Show all cars that cost more than 1000:- per day.
Show all Volvo cars, only with their brand name and their model.
Show all customers, only with their names, in a sorted fashion based on their name. Both in ascending and descending order.
Show all customers, only with their names, that were born in 1990 or later in a sorted fashion based on their birthdate.
Show all cars that are red and cost less than 1500.
Show all customers, only with their names, that were born between 1970-1990.
Show all bookings that are longer than 6 days.
Show all bookings that overlap with the interval 2018-02-01 - 2018-02-25.
Show all customers whose first name starts with an O.


### Aggregated Functions
Show the average price per day for the cars.
Show the total price per day for the cars.
Show the average price for red cars.
Show the total price for all cars grouped by the different colors.
Show how many cars are of red color.
Show how many cars exists of each color.
Show the car that is the most expensive to rent. (Do not hard code this with the most expensive price, instead use ORDER and LIMIT.)

### Joins
Show the Cartesian product between Cars and Bookings.
Show the Cartesian product between Customers and Bookings.
Show the results of converting the previous two joins to inner joins.
Show the names of all the customers that has made a booking.
Same as the previous but without all the duplicates.
Show all the Volkswagen cars that has been booked at least once.
Show all the customers that has rented a Volkswagen.
Show all cars that has been booked at least once.
Show all cars that has never been booked.
Show all the black cars that has been booked at least once.

### Nested Queries
Show all the cars that cost more than the average.
Show the car with the lowest cost with black color.
Show the car which has the lowest cost.
Show all the black cars that has been booked at least once by using a sub query.

### IN
Show all cars that has the cost 700, 800, and 850.
Show all the customers that born in 1990, 1995, and 2000. (Hint: YEAR function).
Show all the bookings that start on 2018-01-03, 2018-02-22, or 2018-03-18.

### BETWEEN
Show all cars whose price is in the range 600 - 1000.
Show all the customers who are born between 1960 - 1980.
Show all bookings that last between 2 - 4 days.
A mix of everything
Show all the cars that are eligible for booking between 2018-01-10 - 2018-01-20.
Show the car that has been booked the most.
Show all the customers who are born in January or February and has booked at least one car.

### DELETE, UPDATE, ALTER, & INSERT
There is a customer born in 1800 according to the records, this is obviously not possible so delete that customer.
The Tesla X car that is available for renting needs to have its price increased by 200:-.
All the Peugeot cars also needs to be increased in price, in this case by 20%.
Now we fast forward into the future and Sweden has changed its currency to Euros (€). Fix both the data itself (assume the conversion rate is 10SEK == 1 EUR) and the table so it can handle the new prices.
Can we construct a PK in the Bookings table without adding a new column? If yes, do that. If not, add another column that allows you to uniquely identify each booking.

### VIEW
Create a view, that shows all the information about black cars.
Create a view that shows all information about black cars and the addition of the weekly price as a column.
Try and insert a car into both views created. What happens? Why? What's the difference between the views?
Create a view that shows all the cars available for booking at this current time.
Alter the previous view, with the condition that the cars have to be available for at least 3 days of renting.

### DROP
Drop the table Cars.
Why didn't it work? Fix so that you can drop the table.
Delete all the rows of table Customers.
What's the difference between DROP TABLE and DELETE?