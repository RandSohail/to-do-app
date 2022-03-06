BEGIN;
DROP TABLE IF EXISTS users, notes CASCADE;
CREATE TABLE users (
  id SERIAL  PRIMARY KEY,
  user_name VARCHAR(50) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(200) NOT NULL
);

CREATE TABLE notes (
  id SERIAL  PRIMARY KEY,
  note TEXT NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) 
  REFERENCES users(id)
);

INSERT INTO users (user_name, password, email) VALUES ('Rand','123','rand@gmail.com'), ('Noor', '123', 'noor@gmail.com');
INSERT INTO notes (note, user_id) VALUES ('Hy this is my first note', 1),
('Note noor', 2);
COMMIT;