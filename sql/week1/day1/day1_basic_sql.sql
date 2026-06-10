CREATE TABLE employees ( --- create table
    employee_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    hire_date DATE
);

--- insert data
insert into employees (full_name, department, salary, city, hire_date)
values
('Andi Saputra', 'Engineering', 12000000, 'Bandung', '2022-03-15'),
('Budi Hartono', 'Marketing', 8000000, 'Jakarta', '2021-07-10'),
('Citra Dewi', 'Engineering', 15000000, 'Bandung', '2020-09-20'),
('Dina Putri', 'Finance', 10000000, 'Surabaya', '2023-01-11'),
('Eko Prasetyo', 'Engineering', 9000000, 'Jakarta', '2022-11-05'),
('Fajar Ramadhan', 'Marketing', 7500000, 'Bandung', '2021-05-19'),
('Gina Maharani', 'HR', 8500000, 'Jakarta', '2022-08-22'),
('Hendra Wijaya', 'Finance', 11000000, 'Bandung', '2019-12-30');

-- 1. tampilkan semua data

select * from employees;

-- 2. tampilkan fullname dan salary

select full_name, salary from employees;

-- 3. employee salary > 10 juta

select 
full_name, salary
from employees
where salary > 10000000;

-- 4. employee dari bandung

select full_name, city from employees
where city = 'Bandung';

-- 5. employee department engineering

select full_name, department from employees
where department = 'Engineering';

-- 6. salary antara 8-12 juta

select full_name, salary from employees
where salary between 8000000 and 12000000;

-- 7. employee selain jakarta

select full_name, city from employees
where city != 'Jakarta';

-- 8. urutkan salary tertinggi

select salary from employees
order by salary desc;

-- 9. ambil top 3 salary

select salary from employees
order by salary desc
limit 3;

-- 10. cari nama yang mengandung 'ra'

select full_name from employees
where full_name like '%ra%';


--- MEDIUM

-- 11. employee hire setelah 2022
select full_name, hire_date from employees
where hire_date > '2022-12-31';
-- or where extract(year from hire_date) > 2022;

-- 12. engineering salary > 10 juta
select * from employees
where salary > 10000000 and department ='Engineering';

-- 13. marketing atau hr

select * from employees
where department ='Marketing' or department ='HR';

-- 14. urutkan berdasarkan city lalu salary desc
select * from employees
order by city, salary desc;

-- 15. ambil employee dengan salary tertinggi kedua
select * from employees
order by salary desc
limit 1 offset 1;
