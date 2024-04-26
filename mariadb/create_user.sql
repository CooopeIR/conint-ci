CREATE DATABASE IF NOT EXISTS tododot;

USE tododot;

-- Create the 'todos' table with new columns
CREATE TABLE IF NOT EXISTS todos (
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name VARCHAR(128) NOT NULL,
  done BOOL NOT NULL DEFAULT false,
  createdAt DATETIME NOT NULL,  -- New column for creation time
  updatedAt DATETIME DEFAULT NULL -- New column for update time (nullable)
);

-- Create the user with appropriate privileges (assuming you already have a user 'root' with sufficient privileges)
CREATE USER IF NOT EXISTS 'todo-admin'@'%' IDENTIFIED BY 'admin-pw';

-- Grant necessary permissions on the 'tododot' database and 'todos' table
GRANT SELECT, INSERT, UPDATE, DELETE ON tododot.todos TO 'todo-admin'@'%';

-- Sample data (assuming you want to keep existing data structure)
INSERT INTO todos (name, done, createdAt, updatedAt) VALUES ('Kazem', 1, 210000, 220000);
INSERT INTO todos (name, done, createdAt, updatedAt) VALUES ('Lorenz', 1, 210000, 220000);