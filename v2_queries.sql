-- return reviews for restaurant3
select * from review where restaurant_id = 3;

-- return reviews for Lovies
-- where style
select
	*
from
	review,
	restaurant
where
	review.restaurant_id = restaurant.id and
	restaurant.name = 'Lovies'
;

-- inner join style
select
	*
from
	review
inner join restaurant
	on review.restaurant_id = restaurant.id
where
	restaurant.name = 'Lovies'
;

-- get Eli's reviews

select * from review, reviewer where review.reviewer_id = reviewer.id and reviewer.name = 'Eli';

select
	*
from
	review
inner join reviewer
	on review.reviewer_id = reviewer.id
where
	reviewer.name = 'Eli';

-- list each review along with restaurant name and reviewer name
select
	restaurant.name as restaurant,
	review.review,
	reviewer.name as reviewer
from
	restaurant, review, reviewer
where
	review.restaurant_id = restaurant.id and
	review.reviewer_id = reviewer.id;
