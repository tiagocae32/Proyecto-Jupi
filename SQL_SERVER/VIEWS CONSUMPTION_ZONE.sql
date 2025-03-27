


CREATE VIEW CONSUMPTION_ZONE.V_PRECIOS_DEPARTAMENTOS AS (
    SELECT
        DB.COMUNA,
        DB.ID_BARRIO,
        DB.BARRIO,
        DB.LATITUD,
        DB.LONGITUD,
        TIPO_DEPTO.ID_TIPO_DEPARTAMENTO,
        TIPO_DEPTO.TIPO_DEPARTAMENTO,
        (FPM.PRECIO_USD * TIPO_DEPTO.MT2_PROMEDIO) AS PRECIO_DEPTO_USD
    FROM
        PROYECTO_VIVIENDA_CABA.CURATED_ZONE.L2_FACT_COMPRA_MT2 FPM
        INNER JOIN PROYECTO_VIVIENDA_CABA.LANDING_ZONE.L1_DIM_BARRIOS DB ON FPM.ID_BARRIO = DB.ID_BARRIO
        CROSS JOIN (
            SELECT
                1 AS ID_TIPO_DEPARTAMENTO,
                '1 Ambiente' AS TIPO_DEPARTAMENTO,
                30 AS MT2_PROMEDIO
            UNION ALL
            SELECT
                2,
                '2 Ambientes',
                43
            UNION ALL
            SELECT
                3,
                '3 Ambientes',
                70
        ) TIPO_DEPTO
);


---
CREATE VIEW CONSUMPTION_ZONE.V_VARIACION_COMPRA_DOS_AMB_SOBRE_MONO_AMB AS
SELECT
   ROUND( (
        (a.precio_promedio_compra - b.precio_promedio_compra) / a.precio_promedio_compra
    ) * 100 , 2) AS variacion_porcentual
FROM
    (
        SELECT
            precio_promedio_compra
        FROM
            PROYECTO_VIVIENDA_CABA.CONSUMPTION_ZONE.V_PRECIO_PROMEDIO_COMPRA_DOS_AMBIENTES
    ) a,
    (
        SELECT
           precio_promedio_compra
        FROM
            PROYECTO_VIVIENDA_CABA.CONSUMPTION_ZONE.V_PRECIO_PROMEDIO_COMPRA_MONO_AMBIENTE
    ) b;