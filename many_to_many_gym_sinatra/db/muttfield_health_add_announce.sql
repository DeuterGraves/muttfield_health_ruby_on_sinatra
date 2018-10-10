DROP TABLE IF EXISTS announcements;

CREATE TABLE announcements(
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  info TEXT,
  author VARCHAR(255),
  created TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
