CREATE TABLE restaurant (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR,
  distance REAL,
  stars REAL DEFAULT 0 CHECK (stars >= 1 AND stars <= 5),
  category VARCHAR,
  favorite_dish VARCHAR,
  takeout BOOLEAN,
  last_visit DATE
);

#--- adding data ---
-- INSERT INTO restaurant VALUES (
--   DEFAULT, 'Salata', 19, 4.1, 'salads', 'salad bowl', FALSE, '2017-02-15'
-- );

# --- updating data ---
-- UPDATE restaurant SET favorite_dish = 'chicken la madeleine' WHERE id = 6;


 < Writing Queries >--

-- 1.The names of the restaurants that you gave a 5 stars to
SELECT name FROM restaurant WHERE stars = 5;

-- 2.The favorite dishes of all 5-star restaurants
SELECT name, favorite_dish FROM restaurant WHERE stars = 5;

-- 3.The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
SELECT name, id FROM restaurant WHERE name = 'Moon Tower';

-- 4.restaurants in the category of 'BBQ'
SELECT name FROM restaurant WHERE category = 'health';

-- 5.restaurants that do take out
SELECT name FROM restaurant WHERE takeout = TRUE;

-- 6.restaurants that do take out and is in the category of 'BBQ'
SELECT name FROM restaurant WHERE takeout = TRUE AND category = 'health';

-- 7.restaurants within 2 miles
SELECT name FROM restaurant WHERE di\qstance < 20;

-- 8.restaurants you haven't ate at in the last week
SELECT name FROM restaurant WHERE last_visit < '2017-05-07';

-- 9.restaurants you haven't ate at in the last week and has 5 stars
SELECT name FROM restaurant WHERE last_visit < '2017-05-07' AND stars = 5;


--< Aggregation and Sorting Queries >--

-- 1.list restaurants by the closest distance
SELECT * FROM restaurant ORDER BY distance;

-- 2.ist the top 2 restaurants by distance
SELECT * FROM restaurant ORDER BY distance limit 2;

-- 3.list the top 2 restaurants by stars
SELECT * FROM restaurant ORDER BY stars DESC limit 2;

-- 4.list the top 2 restaurants by stars where the distance is less than 2 miles
SELECT * FROM restaurant  WHERE distance < 20 ORDER BY stars DESC limit 2;

-- 5.count the number of restaurants in the db
SELECT COUNT(*) FROM restaurant;

-- 6.count the number of restaurants by category
SELECT category,
  COUNT(*) AS num_restaurant
FROM restaurant GROUP BY category;

-- 7.get the average stars per restaurant by category
SELECT category,
  AVG(stars) AS average_stars
FROM restaurant GROUP BY category;

-- 8.get the max stars of a restaurant by category
SELECT category,
  MAX(stars) AS max_stars
FROM restaurant GROUP BY category;
