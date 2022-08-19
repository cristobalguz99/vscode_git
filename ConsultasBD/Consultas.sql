--1.	Detalle de los trabajos donde el salario mínimo sea mayor a 10000
SELECT * 
FROM jobs
WHERE min_salary >10000

--2.	Buscar el primer nombre y  fecha de contratación de aquellos contratados entre el 2002 y 2005
SELECT first_name, hire_date
FROM employees
WHERE HIRE_DATE BETWEEN '01/01/02' and '31/12/05'
ORDER BY HIRE_DATE

--3.	Buscar primer nombre y fecha de contratación de aquellos con contrato de IT Programmer o Sales Man.
SELECT first_name, hire_date
FROM EMPLOYEES
WHERE JOB_ID IN ('IT_PROG','SA_MAN')

--4.	Buscar los empleados que fueron contratados después del primero de enero del 2008.
SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE > '01/01/08'

--5.	Buscar los empleados con id 150 o 160.
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 150 OR EMPLOYEE_ID = 160

--6.	Buscar primer nombre, sueldo, comisión y fecha de contratación  
--de los empleados con sueldo menor a 10000.
SELECT FIRST_NAME, SALARY, COMMISSION_PCT, HIRE_DATE
FROM EMPLOYEES
WHERE SALARY < 10000

--7.	Buscar el título del trabajo y la diferencia entre el sueldo máximo y 
--mínimo que se encuentren en el rango de 10000 a 20000. (tabla Jobs)
SELECT JOB_TITLE, (MAX_SALARY-MIN_SALARY) AS DIFERENCIA
FROM JOBS
WHERE (MAX_SALARY-MIN_SALARY) BETWEEN 10000 AND 20000

--8.	Buscar el primer nombre, sueldo y sueldo redondeado a los miles.
SELECT FIRST_NAME, SALARY, ROUND(SALARY,-2) AS REDONDEAR
FROM EMPLOYEES

--9.	Mostrar el detalle de los trabajos ordenados de manera descendiente 
--por el título del trabajo. (tabla Jobs)
SELECT *
FROM JOBS
ORDER BY JOB_TITLE DESC

--10.	Mostrar los empleados que su nombre o apellido comiencen con S.
SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'S%' OR LAST_NAME LIKE 'S%'

--11.	Mostrar los empleados que su contrato fue realizado el mes de mayo.
SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE LIKE '___05%'

--12.	Mostrar los empleados que el porcentaje de comisión sea nulo, su sueldo se encuentre 
--en el rango de 5000 a 10000 y el id del departamento sea 50.

