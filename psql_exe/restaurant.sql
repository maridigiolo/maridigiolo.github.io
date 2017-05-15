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

# --- queries to get info ---

-- # --- ex1
-- SELECT name FROM restaurant WHERE stars = 5;
--
-- # --- ex2
-- SELECT name, favorite_dish FROM restaurant WHERE stars = 5;
--
-- # --- ex3
-- SELECT name, favorite_dish FROM restaurant WHERE stars = 5; (**)
--
-- # --- ex4
-- SELECT name FROM restaurant WHERE category = 'health';
--
-- # --- ex5
-- SELECT name FROM restaurant WHERE takeout = TRUE;
--
-- # --- ex6
-- SELECT name FROM restaurant WHERE takeout = TRUE AND category = 'health';
--
-- # --- ex7
-- SELECT name FROM restaurant WHERE distance < 20;
--
-- # --- ex8
-- SELECT name FROM restaurant WHERE last_visit < '2017-05-07';
--
-- # --- ex9
-- SELECT name FROM restaurant WHERE last_visit < '2017-05-07' AND stars = 5;
