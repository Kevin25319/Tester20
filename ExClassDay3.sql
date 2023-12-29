use salary;
insert into departments(Id, DepartmentName, `Description`, CreatedDate, UpdatedDate)
values (1, 'Admin', 'Phòng Admin', '2023-10-01 12:10:10', '2023-10-01 12:10:10'),
(2, 'HR', 'Phòng HR', '2023-11-01 12:10:10', '2023-11-01 12:10:10'),
(3, 'IT', 'Phòng IT', '2023-11-01 12:10:10', '2023-11-01 12:10:10'),
(4, 'Delivery', 'Phòng Delivery', '2023-12-01 12:10:10', '2023-12-01 12:10:10');
select * from departments;

insert  into  `users`(id, FirstName, LastName, Email, Phone, DepartmentId, Gender, Age, CreateDate, UpdateDate)
values  (1, 'Nguyễn Văn', 'A', 'sonnv@gmail.com', '0936972000', 1, 1, 20, '2023-12-01 12:10:10', '2023-12-01 12:10:10');
insert  into  `users`(id, FirstName, LastName, Email, Phone, DepartmentId, Gender, Age, CreateDate, UpdateDate)
values  (2, 'Nguyễn Văn', 'B', 'Tuannb@gmail.com', '0933497000', 1, 1, 40, '2023-11-01 12:10:10', '2023-11-01 12:10:10');

select * from `users`;
insert into user_department(id, userId, DepartmentId, StartDate, EndDate, CreateDate, UpdateDate)
values (1, 1, 1, '2023-01-01', '2023-04-30', '2023-11-01 12:10:10', '2023-11-01 12:10:10');

insert into user_department(id, userId, DepartmentId, StartDate, EndDate, CreateDate, UpdateDate)
values (2, 1, 2, '2023-05-01', '2023-12-31', '2023-11-01 12:10:10', '2023-11-01 12:10:10');


INSERT INTO `salary`.`roles` (`Id`, `Name`, `CreatedDate`, `UpdatedDate`) 
VALUES ('1', 'Giám đốc', '2023-01-01', '2023-01-01'),
 ('2', 'Trưởng phòng', '2023-01-01', '2023-01-01'),
 ('3', 'Phó phòng', '2023-01-01', '2023-01-01'),
('4', 'Chuyên viên', '2023-01-01', '2023-01-01'),
('5', 'CTV', '2023-01-01', '2023-01-01');

select us.FirstName, us.LastName, dp.DepartmentName, udp.StartDate, udp.EndDate from user_department as udp
join users us on udp.UserId = us.id
join departments dp on udp.DepartmentId = dp.Id
   where StartDate >= '2023-01-01' and endDate < '2023-05-01';
   
select * from users where age in (20,40); -- age = 20 or age = 40

select * from users where Email like 's%';

select * from users
	order by age desc, id asc;
 select count(*) from users;
 select sum(age), DepartmentID from users
 group by DepartmentID;
 select min(age) from users;
 select max(age) from users;
 select avg(age) from users;
 
 select FirstName, LastName, length(concat(FirstName, LastName)) as dodai from users;
 
INSERT INTO user_role VALUES (1,1,1,'2023-01-01','2023-04-30',NULL,NULL),(2,1,2,'2023-05-01','2023-12-30',NULL,NULL),(3,2,3,'2023-01-01','2023-12-30',NULL,NULL);
INSERT INTO salary VALUES (1,1,5000.00,'01','2023',NULL,NULL),(2,1,6000.00,'02','2023',NULL,NULL),(3,1,3500.00,'03','2023',NULL,NULL),(4,1,4000.00,'04','2023',NULL,NULL),(5,3,4000.00,'02','2023',NULL,NULL),(6,3,3500.00,'05','2023',NULL,NULL);

	select tonghop.DepartmentName, sum(tonghop.Total_salary) as  tong_salary from (
      select sl.Total_salary, dp.DepartmentName from salary as sl
		join  user_role usr on usr.id = sl.UserRoleId
		join user_department usdp on usdp.id = usr.UserDpId
        join departments dp on dp.Id = usdp.DepartmentId
		join users us on us.id = usdp.UserId
	where month = 05 ) as tonghop
    group by tonghop.DepartmentName;
    
    
    
	select dp.DepartmentName, sum(sl.Total_salary) as  tong_salary
       from salary as sl
		join  user_role usr on usr.id = sl.UserRoleId
		join user_department usdp on usdp.id = usr.UserDpId
        join departments dp on dp.Id = usdp.DepartmentId
		join users us on us.id = usdp.UserId
	where month = 05 
    group by dp.DepartmentName
    having sum(sl.Total_salary) >= 4000;
    
    select sl.Total_salary, dp.DepartmentName from salary as sl
		join  user_role usr on usr.id = sl.UserRoleId
		join user_department usdp on usdp.id = usr.UserDpId
        join departments dp on dp.Id = usdp.DepartmentId
		join users us on us.id = usdp.UserId
	where month = 05 
    order by dp.DepartmentName, sl.Total_salary desc;
    
    select * from departments;
    update departments set DepartmentName = 'Kỹ Thuật' where id = '4'

    
    