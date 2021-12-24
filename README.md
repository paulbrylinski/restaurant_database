<h1>Title: Restaurant</h1>

<p>This is just the beginning to a great database.
    I have included a few different tables for a restaurant 
    for employees, positions for those employees and paychecks for those employees. 
    The employees table is the most filled out.
</p>


<p>Not really sure what to do for this part but....</p>

endpoint paths, methods, perameters 

| Table     |   Description    |     Path      |   Method  |  Parameter                                                     |
| --------- | ---------------- | ------------- |  -------  | -------------------------------------------------------------- |
| EMPLOYEES | adds a new input |      ''       |    POST   | name(str), email(str), phone_number(int), clock_in_number(int) |
| EMPLOYEES | shows an id      |   '<int:id>'  |    GET    | -------------------------------------------------------------- |
| EMPLOYEES | deletes an id    |   '<int:id>'  |    DEL    | -------------------------------------------------------------- |
| EMPLOYEES | updates an id    |   '<int:id>'  | PUT/PATCH | name(str), email(str), phone_number(int), clock_in_number(int) |



<p> 1. At first I had multiple columns in Employees, but once I started adding the tables to
the database, I realized it didn't make sense to have a position in the Employees Table, but it
needed another table called positions to reference to the Employees table since there are
only a few positions.

2. I used ORM becuase I wanted more practice with it.

3. I need to change the type to make a US phone number. I need to figure out why I can't have 10 digits in
the phone number inside of the API endpoint. I need to figure out why when I POST the new input
it adds to the ID but in the middle of the parameter. I also need to figure out how to reuse the ID that I 
deleted the data on.