DROP TABLE IF EXISTS movielens.movies;
DROP TABLE IF EXISTS movielens.ratings;
DROP TABLE IF EXISTS movielens.tags;


CREATE TABLE IF NOT EXISTS movielens.movies (
  movieId INT PRIMARY KEY NOT NULL,
  title TEXT,
  genres TEXT
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/movies.csv' INTO TABLE movielens.movies FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS movielens.ratings (
  userId INT,
  movieId INT,
  rating FLOAT,
  timestamp INT,
  FOREIGN KEY (movieId) REFERENCES movies(movieId)
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/ratings.csv' INTO TABLE movielens.ratings FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS movielens.tags (
  userId INT,
  movieId INT,
  tag TEXT,
  timestamp INT,
  FOREIGN KEY (movieId) REFERENCES movies(movieId)
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/tags.csv' INTO TABLE movielens.tags FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
