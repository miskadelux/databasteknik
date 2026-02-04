### User-Defined Functions
- Create a function that checks if a car is available for renting between two dates. The input to the function should be the starting and ending dates of the rental, the cars number, and it should return 0 if it is not available and 1 if it is available between the two dates.
- Create a function that sums the total amount of days cars have been booked and returns the sum.
- Extend the previous function so that if there is an input parameter that matches a cars unique number, then it should only return the sum of that car. If the number doesn't match or it is -1, it returns the total sum as before.

### Stored Procedures
- Create a stored procedure that collects all the cars that are available between two dates. The inputs to the procedure is starting and ending dates, and prints all the car numbers that are available to be booked between the two dates.
- Create a stored procedure that handles the booking of renting a car. The input to the procedure is the starting and ending dates, the cars number,  and the customer number. If it is successful it should return 0, if it is unsuccessful in booking it should return 1.

### Triggers
- Add an additional column to Customers that contains the amount of times a customer has booked a car. Then create an after insert trigger on the Bookings table that increments the newly created column in Customers whenever they do a successful booking of a car.
- Would it be possible to do this trigger with a BEFORE trigger? Why/Why not?