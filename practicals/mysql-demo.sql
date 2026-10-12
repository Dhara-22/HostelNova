-- Practical 8: Node.js using MySQL — SQL statements for viva/demo.
CREATE DATABASE IF NOT EXISTS hostelnova;
USE hostelnova;
CREATE TABLE IF NOT EXISTS practical_students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  roll_no VARCHAR(30) UNIQUE,
  full_name VARCHAR(100),
  email VARCHAR(120),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- INSERT a record
INSERT INTO practical_students (roll_no, full_name, email)
VALUES ('24BCE307', 'Jiya Patel', 'jiya@example.edu');

-- UPDATE a record
UPDATE practical_students SET email = 'jiya.patel@example.edu'
WHERE roll_no = '24BCE307';

-- SELECT records
SELECT * FROM practical_students;

-- SELECT UNIQUE values (MySQL syntax: DISTINCT)
SELECT DISTINCT full_name FROM practical_students;

-- DELETE a record
DELETE FROM practical_students WHERE roll_no = '24BCE307';

-- DROP table (destructive: use only in a test database)
-- DROP TABLE practical_students;
