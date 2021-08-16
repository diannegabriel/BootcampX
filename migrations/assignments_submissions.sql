CREATE TABLE assignment (
  id SERIAL PRIMARY NOT NULL,
  name VARCHAR(255),
  content VARCHAR(255),
  day DATE,
  chapter VARCHAR(255),
  duration INTEGER
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY NOT NULL,
  assignment_id INTEGER REFERENCES assignment(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES student(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);