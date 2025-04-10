CREATE
OR REPLACE VIEW PROYECTO_JUPI.CONSUMPTION_ZONE.V_PRECIO_PROMEDIO_COMPRA_MONO_AMBIENTE AS
SELECT
    ROUND(AVG(FPP.PRECIO_COMPRA_APROXIMADO_USD), 0) AS PRECIO_PROMEDIO_COMPRA
FROM
    PROYECTO_JUPI.CONSUMPTION_ZONE.COZ_TBL_L4_FACT_PRECIOS_PROPIEDADES FPP
    INNER JOIN PROYECTO_JUPI.LANDING_ZONE.L1_DIM_BARRIOS DB ON FPP.ID_BARRIO = DB.ID_BARRIO
WHERE
    ID_TIPO_DEPARTAMENTO = 1
    AND DB.BARRIO <> 'Puerto Madero';
SELECT
    *
FROM
    PROYECTO_JUPI.CONSUMPTION_ZONE.V_PRECIO_PROMEDIO_COMPRA_MONO_AMBIENTE;