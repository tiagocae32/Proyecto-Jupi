CREATE
OR REPLACE VIEW PROYECTO_JUPI.CONSUMPTION_ZONE.V_ROBOS_POR_COMUNA AS (
    SELECT
        DB.COMUNA,
        COUNT(FDC.ID_DELITO) AS CANTIDAD_ROBOS
    FROM
        PROYECTO_JUPI.CONSUMPTION_ZONE.COZ_TBL_L3_FACT_DELITOS_2023_CABA FDC
        INNER JOIN PROYECTO_JUPI.LANDING_ZONE.L1_DIM_BARRIOS DB ON FDC.ID_BARRIO = DB.ID_BARRIO
    GROUP BY
        DB.COMUNA
    ORDER BY
        CANTIDAD_ROBOS DESC
);
SELECT
    *
FROM
    PROYECTO_JUPI.CONSUMPTION_ZONE.V_ROBOS_POR_COMUNA;