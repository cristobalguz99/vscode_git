--1.	Detalle de los trabajos donde el salario mínimo sea mayor a 10000
SELECT * 
FROM jobs
WHERE min_salary >10000;

--2.	Buscar el primer nombre y  fecha de contratación de aquellos contratados entre el 2002 y 2005
SELECT first_name, hire_date
FROM employees
WHERE HIRE_DATE BETWEEN '01/01/02' and '31/12/05'
ORDER BY HIRE_DATE;

--3.	Buscar primer nombre y fecha de contratación de aquellos con contrato de IT Programmer o Sales Man.
SELECT first_name, hire_date
FROM EMPLOYEES
WHERE JOB_ID IN ('IT_PROG','SA_MAN');

--4.	Buscar los empleados que fueron contratados después del primero de enero del 2008.
SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE > '01/01/08';

--5.	Buscar los empleados con id 150 o 160.
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 150 OR EMPLOYEE_ID = 160;

--6.	Buscar primer nombre, sueldo, comisión y fecha de contratación  
--de los empleados con sueldo menor a 10000.
SELECT FIRST_NAME, SALARY, COMMISSION_PCT, HIRE_DATE
FROM EMPLOYEES
WHERE SALARY < 10000;

--7.	Buscar el título del trabajo y la diferencia entre el sueldo máximo y 
--mínimo que se encuentren en el rango de 10000 a 20000. (tabla Jobs)
SELECT JOB_TITLE, (MAX_SALARY-MIN_SALARY) AS DIFERENCIA
FROM JOBS
WHERE (MAX_SALARY-MIN_SALARY) BETWEEN 10000 AND 20000;

--8.	Buscar el primer nombre, sueldo y sueldo redondeado a los miles.
SELECT FIRST_NAME, SALARY, ROUND(SALARY,-2) AS REDONDEAR
FROM EMPLOYEES;

--9.	Mostrar el detalle de los trabajos ordenados de manera descendiente 
--por el título del trabajo. (tabla Jobs)
SELECT *
FROM JOBS
ORDER BY JOB_TITLE DESC;

--10.	Mostrar los empleados que su nombre o apellido comiencen con S.
SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'S%' OR LAST_NAME LIKE 'S%';

--11.	Mostrar los empleados que su contrato fue realizado el mes de mayo.
SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE LIKE '___05%';

--12.	Mostrar los empleados que el porcentaje de comisión sea nulo, su sueldo se encuentre 
--en el rango de 5000 a 10000 y el id del departamento sea 50.
select *
from employees
WHERE COMMISSION_PCT IS NULL
AND SALARY BETWEEN 5000 AND 10000
AND DEPARTMENT_ID = 50;

--13.	Mostrar de los empleados el nombre, la fecha de contratación y el primer día del pago de su sueldo.
SELECT FIRST_NAME, HIRE_DATE, LAST_DAY(hire_date)+1 as "Pay Day"
FROM EMPLOYEES;

--14.	Mostrar el nombre y los años de experiencia al día de hoy de los empleados.
SELECT first_name, hire_date, trunc((sysdate-hire_Date)/365) as "Años Trabajado"
FROM EMPLOYEES;

--15.	Mostrar el nombre de los empleados que fueron contratados el año 2002
SELECT first_name, hire_date 
FROM EMPLOYEES
WHERE hire_date like '______02';

--16.	Mostrar el nombre del trabajo y solo la primera palabra del trabajo.


--17.   Mostrar el nombre y apellido de los empleados cuyo apellido contenga la letra b en la tercera posición.
SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES
WHERE INSTR(LAST_NAME,'b')=3;

--18.	Mostrar de los empleados el nombre en mayúsculas y el email en minúsculas. 
SELECT UPPER(FIRST_NAME),LOWER(EMAIL)
FROM EMPLOYEES;

--19.	Mostrar los empleados que fueron contratados durante el año 2005.
