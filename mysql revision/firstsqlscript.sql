-- rename table users to programmer;

-- select * from programmer;
-- INSERT INTO programmer VALUES
-- (1, 'Alice', 'alice@example.com', 'Female', '1995-05-14', DEFAULT);

-- drop table programmer;
/*
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('Aarav', 'aarav@example.com', 'Male', '1995-05-14', 65000.00),
('Ananya', 'ananya@example.com', 'Female', '1990-11-23', 72000.00),
('Raj', 'raj@example.com', 'Male', '1988-02-17', 58000.00),
('Sneha', 'sneha@example.com', 'Female', '2000-08-09', 50000.00),
('Farhan', 'farhan@example.com', 'Male', '1993-12-30', 61000.00),
('Priyanka', 'priyanka@example.com', 'Female', '1985-07-12', 84000.00),
('Aisha', 'aisha@example.com', 'Female', '1997-03-25', 56000.00),
('Aditya', 'aditya@example.com', 'Male', '1992-06-17', 69000.00),
('Meera', 'meera@example.com', 'Female', '1989-09-05', 77000.00),
('Ishaan', 'ishaan@example.com', 'Male', '2001-10-02', 45000.00),
('Tanvi', 'tanvi@example.com', 'Female', '1994-04-18', 62000.00),
('Rohan', 'rohan@example.com', 'Male', '1986-12-01', 75000.00),
('Zoya', 'zoya@example.com', 'Female', '1998-01-15', 54000.00),
('Karan', 'karan@example.com', 'Male', '1990-08-22', 68000.00),
('Nikita', 'nikita@example.com', 'Female', '1987-03-10', 71000.00),
('Manav', 'manav@example.com', 'Male', '1996-11-29', 61000.00),
('Divya', 'divya@example.com', 'Female', '1991-02-28', 57000.00),
('Harshit', 'harshit@example.com', 'Male', '1993-09-09', 65000.00),
('Ritika', 'ritika@example.com', 'Female', '1999-05-05', 52000.00),
('Imran', 'imran@example.com', 'Male', '1995-07-30', 63000.00),
('Juhi', 'juhi@example.com', 'Female', '1992-10-14', 59000.00),
('Tushar', 'tushar@example.com', 'Male', '1990-01-08', 73000.00),
('Lata', 'lata@example.com', 'Female', '1984-11-11', 78000.00),
('Yash', 'yash@example.com', 'Male', '1997-06-06', 64000.00),
('Fatima', 'fatima@example.com', 'Female', '1993-03-03', 55000.00);
*/

-- select * from users;

## update users SET salary = 70000 where id=5;
# select * from users;

#update users SET name='Rojika',email= 'rojika@rosie.com' where email = 'aisha@example.com';
#select * from users;

#set sql_safe_updates  = 0;
#UPDATE users set salary=salary+50 where salary<60000;

#set sql_safe_updates = 1;

#delete from users where salary<55000;

# alter table users add constraint unique_email unique (email);


# select count(*) from users;

# select count(*) from users where gender = 'Female';
# select min(salary) as min_salary, max(salary) as max_salary from users;

# select sum(salary) as total_sum from users;

# select avg(salary) as total_sum from users;

# select id,gender, avg(salary) as avg_salary from users group by id;

# select id, name, length(name) as name_len from users group by id;

# select id, gender, lower(name) as lower, concat(lower(name), "5677") as username, year(date_of_birth) as time, length(name) as name_len from users group by id;

#select name, datediff(curdate(), date_of_birth) as days from users;

# select salary, round(salary) as rounded_sal, floor(salary) as floor_sal, ceil(salary) as ceil_sal from users;

# select id, mod(id,2) as remainder from users;

# set autocommit = 0;

# rollback;
# delete from users where id = 5;

#delete from users where id = 22;

#select * from addresses;
#select * from users;
#select users.name, users.gender,addresses.city, addresses.state, addresses.id as addresses_id from users inner join addresses on users.id = addresses.user_id;


#select * from users;
#select * from admin_users;

# select name from users union 
# select name from admin_users;

# select name from users union all select name from admin_users;

 # select email,name , date_of_birth,'User' as role from users union
 #select email,name, date_of_birth, 'Admin' as role from admin_users order by date_of_birth;

# alter table users add column  referred_By_id int;


# update users set referred_By_id = 1 where id IN (2,3,13,14,15,16,18,20);
# update users set referred_By_id = 2 where id = 4;

/*
select a.id, 
a.name as user_name,
b.name as referred_by_name 
from users a 
inner join users b on a.referred_by_id = b.id;
select * from users;
*/

/*
create view rich_users as
select * from users where salary> 70000;
*/

# update users set salary=30000 where id=2;
#select * from rich_users;

# drop view rich_users;

-- INDEXES

# create index idx_gender on users(gender);
# drop index idx_gender on users;
# show indexes from users;
# select * from users where email = "aarav@example.com";


# select avg(salary) from users;
-- Scalar
/*
select * from users where salary > (select avg(salary) from users);
select * from users where salary < (select avg(salary) from users);
*/
/*
select id, name, referred_By_id 
from users 
where referred_By_id in (select id from users where salary> 50000);
*/
/*
select id, name, referred_By_id 
from users 
where referred_By_id in (select id from users where 
salary> (select avg(salary) from users));
*/
/*
select name, salary, (select avg(salary) from users) 
as average_employee_salary from users;
*/

