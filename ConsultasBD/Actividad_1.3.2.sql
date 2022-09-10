--GUIA 3
--CASO 1
SELECT NUMRUN_CLI ||'-'||DVRUN_CLI AS "RUN CLIENTE",
LOWER(PNOMBRE_CLI) ||' '|| INITCAP(SNOMBRE_CLI) ||' '|| APPATERNO_CLI ||' '||APMATERNO_CLI   AS "NOMBRE CLIENTE",
FECHA_NAC_CLI AS "FECHA DE NACIMIENTO"
FROM CLIENTE
WHERE FECHA_NAC_CLI LIKE '21/08%'
--WHERE FECHA_NAC_CLI = SYSDATE+1
ORDER BY APPATERNO_CLI;

--CASO 2
SELECT NUMRUN_EMP ||'-'||DVRUN_EMP AS "RUN EMPLEADO",
PNOMBRE_EMP||' '||SNOMBRE_EMP||' '||APPATERNO_EMP||' '||APMATERNO_EMP AS "NOMBRE COMPLETO EMPLEADO",
SUELDO_BASE,
TRUNC(SUELDO_BASE/100000) AS "PORCENTAJE DE AUMENTO",
TRUNC(SUELDO_BASE*(TRUNC(SUELDO_BASE/100000)/100)) AS "VALOR DE MOVILIZACION"
FROM EMPLEADO
ORDER BY "PORCENTAJE DE AUMENTO" DESC;

--CASO 3
SELECT NUMRUN_EMP ||'-'||DVRUN_EMP AS "RUN EMPLEADO",
PNOMBRE_EMP||' '||SNOMBRE_EMP||' '||APPATERNO_EMP||' '||APMATERNO_EMP AS "NOMBRE COMPLETO EMPLEADO",
SUELDO_BASE AS "SUELDO BASE",
TO_char(FECHA_NAC,'dd/MM/yyyy') AS "FECHA NACIMIENTO",
SUBSTR(PNOMBRE_EMP,0,3)||LENGTH(PNOMBRE_EMP)||'*'||SUBSTR(SUELDO_BASE,-1)||DVRUN_EMP||TRUNC((SYSDATE-TO_DATE(FECHA_CONTRATO))/365) AS "NOMBRE USUARIO",
SUBSTR(NUMRUN_EMP,3,1)||EXTRACT(YEAR FROM FECHA_NAC)+2||SUBSTR(SUELDO_BASE,-3)-1||SUBSTR(APPATERNO_EMP,-2)||EXTRACT(MONTH FROM TO_DATE(SYSDATE)) AS "CLAVE"
FROM EMPLEADO
ORDER BY APPATERNO_EMP;

--CASO 4
SELECT EXTRACT(YEAR FROM SYSDATE) AS "ANNO_PROCESO", 
NRO_PATENTE, 
VALOR_ARRIENDO_DIA AS "VALOR_ARRIENDO_DIA SR", 
VALOR_GARANTIA_DIA AS "VALOR_GARANTIA_DIA SR", 
EXTRACT(YEAR FROM SYSDATE)-ANIO AS "AÑO",
VALOR_ARRIENDO_DIA-(VALOR_ARRIENDO_DIA*((EXTRACT(YEAR FROM SYSDATE)-ANIO)/100)) AS "VALOR_ARRIENDO_DIA CR",
VALOR_GARANTIA_DIA-(VALOR_GARANTIA_DIA*((EXTRACT(YEAR FROM SYSDATE)-ANIO)/100)) AS "VALOR_ARRIENDO_DIA CR"
FROM CAMION
ORDER BY "AÑO" DESC,NRO_PATENTE ASC;

--CASO 5
