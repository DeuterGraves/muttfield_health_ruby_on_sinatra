DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS sessions;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS announcements;

CREATE TABLE members(
  id SERIAL8 PRIMARY KEY,
  f_name VARCHAR(255),
  l_name VARCHAR(255)
  -- membership type?
);

CREATE TABLE courses(
  id SERIAL8 PRIMARY KEY,
  type VARCHAR(255)
);

CREATE TABLE sessions(
  id SERIAL8 PRIMARY KEY,
  course_id INT8 REFERENCES courses(id) ON DELETE CASCADE,
  start_time VARCHAR(255)
  -- title
  -- capacity
  -- price/member level
  -- day
);

CREATE TABLE bookings(
  id SERIAL8 PRIMARY KEY,
  session_id INT8 REFERENCES sessions(id) ON DELETE CASCADE,
  member_id INT8 REFERENCES members(id) ON DELETE CASCADE
);


CREATE TABLE announcements(
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  info TEXT,
  author VARCHAR(255),
  created TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
