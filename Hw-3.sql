--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
SELECT employees.id, employee_name,  monthly_salary
from salary 
   full join employees_salary on salary_id=salary.id
 full  join employees on employees.id=employee_id
 
--2. Вывести всех работников у которых ЗП меньше 2000  
    SELECT employees.id, employee_name,  monthly_salary
from salary 
  full join employees_salary on salary_id=salary.id
 full join employees on employees.id=employee_id
    where monthly_salary < 2000;
   
  
  --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
    select  monthly_salary from salary 
  full join employees_salary on salary_id=salary.id
 full join employees on employees.id=employee_id
   where employee_name is null;
      
       --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
       SELECT employees.id, employee_name,  monthly_salary
from salary 
  full join employees_salary on salary_id=salary.id
 full join employees on employees.id=employee_id
   where employee_name is null and monthly_salary < 2000
      
   
--5. Найти всех работников кому не начислена ЗП.
  SELECT employees.id, employee_name,  monthly_salary
from salary 
   full join employees_salary on salary_id=salary.id
 full  join employees on employees.id=employee_id
   where monthly_salary is null ;
    -- 7. Вывести имена и должность только Java разработчиков.
     select employee_name, role_name
   from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles on roles.id=role_id
   where role_name like '%Java %';
    --8. Вывести имена и должность только Python разработчиков.
    select employee_name, role_name
   from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles on roles.id=role_id
    where role_name like '%Python%';
    -- 9. Вывести имена и должность всех QA инженеров.
  select employee_name, role_name
   from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles on roles.id=role_id
    where role_name like '%QA %';
   --10. Вывести имена и должность ручных QA инженеров.
   select employee_name, role_name
   from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles on roles.id=role_id
    where role_name like '%Manual QA %';
-- 11. Вывести имена и должность автоматизаторов QA
  select employee_name, role_name
   from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles on roles.id=role_id
    where role_name like '%Automation QA %';
   --12. Вывести имена и зарплаты Junior специалистов
  select employee_name, role_name, monthly_salary from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%Junior %';
-- 13. Вывести имена и зарплаты Middle специалистов
    select employee_name, role_name, monthly_salary from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%Middle %';
 --14. Вывести имена и зарплаты Senior специалистов
    select employee_name, role_name, monthly_salary from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%Senior %';
-- 15. Вывести зарплаты Java разработчиков
       select employee_name, role_name, monthly_salary from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%Java developer%';
-- 16. Вывести зарплаты Python разработчиков
select employee_name, role_name, monthly_salary from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%Python developer%';
 --17. Вывести имена и зарплаты Junior Python разработчиков
   select employee_name, role_name, monthly_salary from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%Junior Python developer%';
-- 18. Вывести имена и зарплаты Middle JS разработчиков
    select employee_name, role_name, monthly_salary from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%Middle JavaScript developer%';
-- 19. Вывести имена и зарплаты Senior Java разработчиков
      select employee_name, role_name, monthly_salary from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%Senior Java developer%';
-- 20. Вывести зарплаты Junior QA инженеров
     select role_name, monthly_salary from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%Junior %% QA%';
 --21. Вывести среднюю зарплату всех Junior специалистов
    select  avg(monthly_salary) as средняя_зп from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%Junior%';
 --22. Вывести сумму зарплат JS разработчиков
    select  sum(monthly_salary) as сумма_зп from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%JavaScript developer%';
 --23. Вывести минимальную ЗП QA инженеров
      select  min(monthly_salary) as мин_зп from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%QA engineer%';
 --24. Вывести максимальную ЗП QA инженеров
      select  max(monthly_salary) as макс_зп from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%QA engineer%';
 --25. Вывести количество QA инженеров
    select  count(role_name) as макс_зп from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%QA engineer%';
-- 26. Вывести количество Middle специалистов.
    select  count(role_name) as кол_во_мидлов from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%iddle%';
 --27. Вывести количество разработчиков
    select  count(role_name) as кол_во_Разрабов from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
    where role_name like '%developer%'and employee_name is not null;

    --28. Вывести фонд (сумму) зарплаты разработчиков.
    select sum(monthly_salary) as фонд from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id=  employees.id 
   full join salary on salary.id= salary_id
   where role_name like '%developer%';
   
   --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
  select employee_name, role_name, monthly_salary from employees 
    full join roles_employee  on employees.id =employee_id
  full  join roles  on role_id=roles.id 
 full  join employees_salary  on employees_salary.employee_id= employees.id
 full   join salary on salary.id= salary_id
 where employee_name is not null and monthly_salary is not null
   order by monthly_salary asc;
  --30.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
   select employee_name, role_name, monthly_salary from employees 
    full join roles_employee  on employees.id =employee_id
  full  join roles  on role_id=roles.id 
 full  join employees_salary  on employees_salary.employee_id= employees.id
 full   join salary on salary.id= salary_id
 where monthly_salary between 1700 and 2300
    order by monthly_salary asc;
   -- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
    select employee_name, role_name, monthly_salary from employees 
    full join roles_employee  on employees.id =employee_id
  full  join roles  on role_id=roles.id 
 full  join employees_salary  on employees_salary.employee_id= employees.id
 full   join salary on salary.id= salary_id
 where monthly_salary < 2300 and employee_name is not null
    order by monthly_salary asc;
    --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
     select employee_name, role_name, monthly_salary from employees 
  join roles_employee  on employees.id =employee_id
   join roles  on role_id=roles.id 
 join employees_salary  on employees_salary.employee_id= employees.id
   join salary on salary.id= salary_id
 where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000 
    order by monthly_salary asc;
   
  select employee_name, role_name, monthly_salary from employees 
  full join roles_employee  on employees.id =employee_id
 full join roles  on role_id=roles.id 
 full  join employees_salary  on employees_salary.employee_id= employees.id
full   join salary on salary.id= salary_id

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   select employee_name, role_name, monthly_salary from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full  join employees_salary  on employees_salary.employee_id= roles_employee.employee_id 
full  join salary on salary.id= salary_id

   
    /*select employee_name, role_name, monthly_salary from employees 
   full join roles_employee  on employees.id =employee_id
   full join roles  on role_id=roles.id 
   full join employees_salary  on employees_salary.employee_id= roles_employee.employee_id 
   full join salary on salary.id= salary_id*/
   
  



   
   
   
   