Restaurant DB V2

Table

For version 2 of the restaurant database, you will have the following tables:

restaurant
reviewer
review
A reviewer could write any number of reviews for any number of restaurants. The restaurant table has these columns:

id
name
address
category
The reviewer table would have these columns:

id
name
email
karma - between 0 to 7 (please use a constraint)
The review table would have these columns:

id
author reviewer id (please use a constraint)
stars - 1 to 5 stars (please use a constraint)
title
review - the text of the review
restaurant id (please use a constraint)
Create Schema

Create these table schemas by writing CREATE statements in a .sql file and loading them in using something like psql restaurant_db -f restaurant_db.sql (this command assumes your database is called restaurant_db and your file is restaurant_db.sql).

Enter Data

Enter some data for restaurants by either writing insert statements or through the Postico UI.

Answer These Questions With a Query

list the reviews for a given restaurant (filter by its name or id)
list the reviews for a given reviewer (filter by his/her name or id)
list each review along with the restaurant they were written for. Select just the restaurant name and the review text
get the average stars by restaurant. (restaurant name, average star rating)
get the number of reviews written for each restaurant. Select the restaurant name and the review count.
list each review along with the restaurant, and the reviewer's name. Select the restaurant name, the review text, and the reviewer name
get the average stars by reviewer (reviewer name, average star rating)
get the lowest star rating for each reviewer (reviewer name, lowest star rating)
get the number of restaurants in each category (category name, restaurant count)
get number of 5 star reviews by restaurant (restaurant name, 5-star count)
average star rating for a food category (category name, average star rating)
Projects DB Exercises

Setup

Create a new database called projects_db or whatever you want. Restore the database from the projects.sql file via the command:

psql projects_db -f projects.sql
Problems

Do a cartesian join between the project table and the tech table
Perform a left outer join between the project table and the project_uses_tech tables
Perform a left outer join between the tech table and the project_uses_tech table
Perform a left outer join from the project table to the project_users_tech table and then left outer join again to the tech table.
Start from the answer on the previous problem and get the count of how many different tech each project uses
For each tech, get the count of how many projects use it
Order the projects by how many tech it uses
Order the tech by how many projects use it
What is the average number of techs used by a project?
