DROP TABLE IF EXISTS notes CASCADE;

CREATE TABLE notes (
  id SERIAL PRIMARY KEY NOT NULL, 
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  location_id VARCHAR(255) NOT NULL,
  location_name VARCHAR(255) NOT NULL,
  content VARCHAR(255) NOT NULL
);