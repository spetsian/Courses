--1.Создать таблицу employees
create table employees(
id serial primary key,
employee_name varchar(50) not null
);
select * from employees;
--2.Наполнить таблицу employee 70 строками.

insert into employees(id,employee_name) values(2, 'Иван_Иванов');
insert into employees(employee_name) values('степа_Иванов'),('лох_педальный'),('петро петрович');
insert into employees(employee_name) values
('Чернов Эдуард'),('Повалий Цицерон'),('Филатов Йошка'),('Легойда Геннадий'),('Галкин Алексей'),('Шаров Гавриил'),('Зимин Цицерон'),('Михайлов Ананий'),('Романенко Феликс'),('Захарченко Аполлон'),
('Михеев Никита'),('Аксёнов Людовик'),('Гурьев Станислав'),('Кулишенко Илларион'),('Сыпченко Бронислав'),('Гамула Харитон'),('Яковлев Савва'),('Гайчук Чарльз'),('Вальковский Дарий'),('елезнёв Павел'),
('Александров Шамиль'),('Елисеев Ждан'),('Марочко Иван'),('Данилов Игнат'),('Гущин Харитон'),('Кравченко Кирилл'),('Савенко Григорий'),('Воронов Устин'),('Корнилов Фёдор'),('Соколов Юрий'),
('Субботин Йосеф'),('Пилипейко Филипп'),('Кулаков Виктор'),('Никитин Харитон'),('Тихонов Огюст'),('Пономаренко Зиновий'),('Петренко Савва'),('Брагин Устин'),('Ширяев Харитон'),('Гурьев Геннадий'),
('Силин Михаил'),('Кириллов Сергей'),('Стегайло Назар'),('Шаров Эдуард'),('Сасько Эрик'),('Быков Йозеф'),('Темченко Тит'),('Моисеенко Чеслав'),('Лебедев Эдуард'),('Калинин Устин'),
('Цушко Остап'),('Анисимов Афанасий'),('Меркушев Ян'),('Русаков Оскар'),('Авдеев Орландо'),('Павлов Люций'),('Батейко Ждан'),('Аксёнов Доминик'),('Савельев Эдуард'),('Ерёменко Александр'),
('Суханов Давид'),('Посидайло Шамиль');
--3.Создать таблицу salary
create table salary(
id serial primary key,
monthly_salary int not null);
select * from salary;
--4.Наполнить таблицу salary 15 строками:

insert into salary(monthly_salary) values(1000),(1100),(1200),(1300),(1400),
(1500),(1600),(1700),(1800),(1900),(2000),(2100),(2200),(2300),(2400),(2500);
--5.Создать таблицу employee_salary

create table employees_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null);
select* from employees_salary;
--6.Наполнить таблицу employee_salary 40 строками:

insert into employees_salary (employee_id,salary_id) values
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),
(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),
(17,15),(18,14),(19,13),(20,12),(21,4),(22,11),(23,10),(24,9),
(25,9),(26,9),(27,6),(28,6),(29,6),(30,5),(71,5),(72,5),
(73,4),(74,4),(75,4),(76,3),(77,3),(78,2),(79,2),(80,1)
--7.Создать таблицу roles
create table roles (
id serial primary key,
role_mane varchar(30) not null unique);
select * from roles;
alter table roles rename column role_mane to role_name;
--9.Наполнить таблицу roles 20 строками:
insert into roles(role_name) values
('Junior Python developer'),
('iddle Python developer'),('Senior Python developer'),
('Junior Java developer'),('Middle Java developer'),('Senior Java developer'),
('Junior JavaScript developer'),('Middle JavaScript developer'),
('Senior JavaScript developer'),('Junior Manual QA engineer'),('Middle Manual QA engineer'),
('enior Manual QA engineer'),('Project Manager'),
('Designer'),('HR'),
('CEO'),('Sales manager'),
('Junior Automation QA engineer'),('Middle Automation QA engineer'),
('Senior Automation QA engineer');
--10.Создать таблицу roles_employee
create table roles_employee( 
id serial primary key,
employee_id int not null unique, 
role_id int not null, 
foreign key (role_id) references roles(id),
foreign key (employee_id) references employees(id)
);
select*from roles_employee ;
--11.Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id,role_id) values
(1,5),(2,5),(3,5),(6,5),
(7,6),(8,6),(9,6),(10,6),
(14,7),(34,7),(22,7),(23,7),
(25,8),(26,8),(31,8),(32,9),
(33,10),(35,11),(36,11),(37,11),
(45,13),(46,13),(41,13),(21,12),
(47,14),(53,14),(54,15),(69,15),
(48,15),(49,15),(51,17),(55,18),
(52,18),(61,19),(62,20),(63,20),
(64,4),(66,4), (70,4), (12,4) ;