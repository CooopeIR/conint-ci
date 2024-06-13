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
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);


-- Create the user with appropriate privileges (assuming you already have a user 'root' with sufficient privileges)
CREATE USER IF NOT EXISTS 'todo-admin'@'%' IDENTIFIED BY 'admin-pw';

-- Grant necessary permissions on the 'tododot' database and 'todos' table
GRANT SELECT, INSERT, UPDATE, DELETE ON tododot.todos TO 'todo-admin'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON tododot.users TO 'todo-admin'@'%';

-- Sample data (assuming you want to keep existing data structure)
INSERT INTO todos (name, done, createdAt, updatedAt) VALUES ('Kazem', 0, 210000, 220000);
INSERT INTO todos (name, done, createdAt, updatedAt) VALUES ('Lorenz', 0, 210000, 220000);

INSERT INTO users (username,password) VALUES ('Kazem','123');
INSERT INTO users (username,password) VALUES ('Lorenz','123');