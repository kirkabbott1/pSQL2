-- select * from review, reviewer where reviewer.name = 'siskel';
-- select * from review, reviewer where review.reviewer_id = reviewer.id and reviewer.name = 'ebert';

-- select * from review where Restaurant_id = 1;
--
-- select * from review where reviwer_id = 1;
--
-- -- select * from
-- --   review,
-- --   restaurant
-- -- where
-- --   review.restaurant_id = restaurant.id and restaurant.name = 'Chipotle'
-- -- ; --Same as below

-- select * from
--   review
-- inner join
--   restaurant
--   on review.restaurant_id = restaurant.id
-- where restaurant.name = 'Chipotle';

-- select review.review, restaurant.name from
-- review
-- inner join
-- restaurant on review.restaurant_id = restaurant.id;

-- select * from review, reviewer where review.reviewer_id = reviewer.id and reviewer.name = 'ebert';

-- select (avg(stars) as stars, restaurant.name from review inner join restaurant on review.restaurant_id = restaurant.id group by restaurant.id order by stars;

select name, count(restaurant.id) from restaurant
inner join review
on review.restaurant_id = restaurant.id group by restaurant.name;
