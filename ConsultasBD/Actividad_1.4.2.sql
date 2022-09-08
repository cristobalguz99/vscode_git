--caso 1
SELECT TO_CHAR(numrun_cli,'09G999G999')||'-'||dvrun_cli AS "RUN CLIENTE", 
    INITCAP(APPATERNO_CLI)||' '||SUBSTR(APMATERNO_CLI,0,1)||'. '||INITCAP(PNOMBRE_CLI)||' '||SNOMBRE_CLI AS "NOMBRE CLIENTE",
    DIRECCION, NVL(TO_CHAR(FONO_FIJO_CLI),'NO POSEE TELEFONO FIJO') AS "TELEFONO FIJO", NVL(TO_CHAR(CELULAR_CLI),'NO POSEE CELULAR') AS "CELULAR"
    ,ID_COMUNA AS COMUNA
FROM cliente
ORDER BY COMUNA ASC, APPATERNO_CLI DESC;

--CASO 2
SELECT 'El empleado '|| PNOMBRE_EMP||' '||APPATERNO_EMP||' '||APMATERNO_EMP || ' estuvo de cumplaños el ' || EXTRACT(DAY FROM fecha_nac) ||' de '|| TO_CHAR(fecha_nac,'month') || ' Cumplio ' ||  trunc((sysdate-fecha_nac)/365) || ' años.' AS "LISTADO DE CUMPLEAÑOS"
FROM EMPLEADO
WHERE EXTRACT(MONTH FROM FECHA_NAC)=7
ORDER BY EXTRACT(DAY FROM FECHA_NAC),APPATERNO_EMP ASC;

--CASO 3
SELECT T.NOMBRE_TIPO_CAMION AS "TIPO CAMION",
C.NRO_PATENTE AS "NRO PATENTE",
C.ANIO AS "AÑO",
TO_CHAR(C.VALOR_ARRIENDO_DIA,'$99G999') AS "VALOR ARRIENDO DIA",
NVL(TO_CHAR(C.VALOR_GARANTIA_DIA,'$999G999'),0) AS "VALOR GARANTIA DIA",
NVL(TO_CHAR(C.VALOR_ARRIENDO_DIA+C.VALOR_GARANTIA_DIA,'$999G999'),0) AS "VALOR TOTAL DIA"
FROM CAMION C
JOIN TIPO_CAMION T ON C.ID_TIPO_CAMION = T.ID_TIPO_CAMION
ORDER BY T.NOMBRE_TIPO_CAMION,C.VALOR_ARRIENDO_DIA DESC, C.VALOR_GARANTIA_DIA ASC;

--CASO 4
SELECT TO_CHAR(sysdate,'MM/yyyy') AS FECHA,
TO_CHAR(NUMRUN_EMP,'99G999G999') ||'-'||DVRUN_EMP AS "RUN EMPLEADO" ,
PNOMBRE_EMP||' '||SNOMBRE_EMP||' '||APPATERNO_EMP||' '||APMATERNO_EMP,
TO_CHAR(SUELDO_BASE,'$99G999G999') AS "SUELDO BASE",
CASE WHEN SUELDO_BASE>320000 AND SUELDO_BASE<450000 THEN TO_CHAR((20000000*0.05),'$99G999G999')
    WHEN SUELDO_BASE>450001 AND SUELDO_BASE<600000 THEN TO_CHAR((20000000*0.035),'$99G999G999')
    WHEN SUELDO_BASE>600001 AND SUELDO_BASE<900000 THEN TO_CHAR((20000000*0.025),'$99G999G999')
    WHEN SUELDO_BASE>900001 AND SUELDO_BASE<1800000 THEN TO_CHAR((20000000*0.015),'$99G999G999')
    WHEN SUELDO_BASE>1800001 THEN TO_CHAR((20000000*0.01),'$99G999G999')
    END "BONIFICACION"
FROM EMPLEADO
ORDER BY APPATERNO_EMP;

--CASO 5