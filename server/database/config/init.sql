BEGIN;
DROP TABLE IF EXISTS users, notes CASCADE;
CREATE TABLE users (
  id SERIAL  PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE notes (
  id SERIAL  PRIMARY KEY,
  note TEXT NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) 
  REFERENCES users(id)
);

INSERT INTO users (name) VALUES ('Rand'), ('Noor');
INSERT INTO notes (note, user_id) VALUES ('Hy this is my first note', 1),
('Note noor', 2);
COMMIT;