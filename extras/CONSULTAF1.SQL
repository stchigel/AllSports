SELECT 
    Pilotos.nombre, 
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 1 THEN 1 END) AS MEL,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 2 THEN 1 END) AS BAH,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 3 THEN 1 END) AS MON,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 4 THEN 1 END) AS BAR,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 5 THEN 1 END) AS MUG,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 6 THEN 1 END) AS SIL,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 7 THEN 1 END) AS HUN,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 8 THEN 1 END) AS SPAF,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 9 THEN 1 END) AS ZAN,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 10 THEN 1 END) AS MONZ,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 11 THEN 1 END) AS RUS,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 12 THEN 1 END) AS SING,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 13 THEN 1 END) AS JAP,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 14 THEN 1 END) AS EEUU,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 15 THEN 1 END) AS MEX,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 16 THEN 1 END) AS BRA,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 17 THEN 1 END) AS ABUD,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 18 THEN 1 END) AS AUST,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 19 THEN 1 END) AS TUR,
    COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 20 THEN 1 END) AS ARAB,
    (
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 1 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 2 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 3 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 4 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 5 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 6 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 7 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 8 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 9 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 10 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 11 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 12 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 13 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 14 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 15 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 16 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 17 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 18 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 19 THEN 1 END) +
        COUNT(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 20 THEN 1 END)
    ) AS PTS
FROM 
    Pilotos 
JOIN 
    Pilotos_has_Carrera ON Pilotos.idPilotos = Pilotos_has_Carrera.Pilotos_idPilotos
GROUP BY 
    Pilotos.nombre 
ORDER BY 
    PTS DESC;
