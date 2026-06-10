-- alter table programmer modify column gender enum('Male','Female','Other') after email;
-- select * from programmer;

-- USE startersql;
select * from programmer;

insert into programmer(email,gender,id,name,date_of_birth,is_active) values (123,Male,1,Roshan,25-10-2007,default);
