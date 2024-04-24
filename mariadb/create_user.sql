create database if not exists tododot;
use tododot;
create table if not exists todos (
    id int auto_increment primary key not null,
    name varchar(128) not null,
    done bool not null default false
);
CREATE USER 'todo-admin'@'localhost' IDENTIFIED BY 'admin-pw';
GRANT SELECT, INSERT, UPDATE, DELETE ON tododot.* TO 'todo-admin'@'localhost';
-- insert into todos values(122,'Kazem',1);
-- insert into todos values(123,'Lorenz',1);
