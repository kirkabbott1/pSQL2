CREATE TABLE restaurant (
  id serial PRIMARY KEY,
  name varchar NOT NULL,
  address varchar,
  category varchar
);

CREATE TABLE reviewer (
  id serial PRIMARY KEY,
  name varchar NOT NULL,
  email varchar,
  karma integer DEFAULT 0 CHECK(karma between 0 and 7)
);

CREATE TABLE review (
  id serial PRIMARY KEY,
  reviewer_id integer NOT NULL REFERENCES reviewer (id),
  stars integer NOT NULL CHECK (stars >= 0 and stars <= 5),
  title varchar,
  review varchar,
  restaurant_id integer NOT NULL REFERENCES restaurant (id)
);

INSERT INTO restaurant values
  (
    default,
    'Chipotle',
    '3424 Piedmont Rd, Atlanta, GA 30305',
    'Mexican'
  ),
  (
    default,
    'NaanStop',
    '3420 Piedmont Rd NE, Atlanta, GA 30305',
    'Indian'
  ),
  (
    default,
    'Lovies',
    '3420 Piedmont Rd NE, Atlanta, GA 30305',
    'BBQ'
  ),
  (
    default,
    'Farm Burger',
    '3365 Piedmont Rd NE, Atlanta, GA 30305',
    'Burger'
  )
  ;

INSERT INTO reviewer VALUES
  (
    default,
    'Carolyn',
    'carolyn@gmail.com',
    6
  ),
  (
    default,
    'Trista',
    'trista@gmail.com',
    7
  ),
  (
    default,
    'Eli',
    'eli@gmail.com',
    5
  ),
  (
    default,
    'Che',
    'che@gmail.com',
    5
  );
