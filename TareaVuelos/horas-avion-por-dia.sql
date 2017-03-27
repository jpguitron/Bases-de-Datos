
use aeropuerto;
SELECT 
    matricula, fecha, SUM(duracion) AS Horas_de_Vuelo
FROM
    (SELECT 
        matricula, duracion, fecha
    FROM
        vuelo
    NATURAL JOIN avion
    WHERE
        matricula = AVION_matricula) AS Horas_Avion WHERE DAYOFMONTH(fecha) = 1
GROUP BY matricula;