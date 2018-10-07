DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS sessions;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS courses;

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
  hour VARCHAR(255)
  -- capacity
  -- price/member level
  --  day
);

CREATE TABLE bookings(
  id SERIAL8 PRIMARY KEY,
  session_id INT8 REFERENCES sessions(id) ON DELETE CASCADE,
  member_id INT8 REFERENCES members(id) ON DELETE CASCADE
);
