CREATE TABLE restaurant (
  id serial PRIMARY KEY,
  name varchar,
  distance real,
  stars integer,
  category varchar,
  favorite_dish varchar,
  takeout boolean,
  last_visit date
);

insert into restaurant values
  (default, 'NaanStop', 0.1, 3, 'Indian', 'Chicken Marsala', FALSE, '2016-10-02');
insert into restaurant values
  (default, 'Chipotle', 0.1, 2, 'Mexican', 'Hard Shell Tacos', FALSE, '2016-10-10');
insert into restaurant values
  (default, 'Lovies', 0.1, 4, 'BBQ', 'Pull pork sandwich', FALSE, '2016-09-12');

-- 5 stars
select * from restaurant where stars = 5;

-- get favorite dish from 5 star restaurants
select favorite_dish from restaurant where stars = 5;

-- get NaanStop's ID
select id from restaurant where name = 'NaanStop';

-- restaurants that do take out
select * from restaurant where takeout = TRUE;

-- takeout and BBQ
select name from restaurant where category = 'BBQ' and takeout = TRUE;

-- restaurants within 2 miles
select * from restaurant where distance < 2;

-- visited within 2 weeks and 5 stars
select * from restaurant where last_visit >= '2016-09-27' and stars = 5;

-- version 2 (dynamic) of above
select
  *
from restaurant
where
  last_visit >= current_date - interval '2 weeks' and
  stars = 5;

-- closest restaurants first
select * from restaurant order by distance;

-- closest 2
select * from restaurant order by distance limit 2;

-- top 2 by stars
select * from restaurant order by stars desc limit 2;

-- top 2 within 2 miles
select
  *
from
  restaurant
where distance < 2
order by
  stars desc
limit 2;

-- count restaurants by category
select category, count(*) from restaurant group by category;

-- average stars by category
select round(avg(stars), 2), category from restaurant group by category;

-- max stars by category
select max(stars), category from restaurant group by category;
