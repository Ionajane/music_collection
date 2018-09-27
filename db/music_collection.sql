DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

-- PARENT TABLE
CREATE TABLE artists (
  id SERIAL8  PRIMARY KEY,
  name        VARCHAR(255)
);

-- CHILD TABLE
CREATE TABLE albums (
  id SERIAL8  PRIMARY KEY,
  artist_id   INT8 REFERENCES artists(id),
  title       VARCHAR(255),
  genre       VARCHAR(255)
);
