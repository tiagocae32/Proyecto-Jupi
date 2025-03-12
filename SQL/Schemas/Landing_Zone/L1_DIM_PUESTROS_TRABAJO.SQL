CREATE OR REPLACE TABLE PROYECTO_JUPI.LANDING_ZONE.L1_DIM_PUESTOS_TRABAJO (
    ID_PUESTO_TRABAJO INT AUTOINCREMENT PRIMARY KEY,  
    NOMBRE_PUESTO  VARCHAR(16777216) NOT NULL,                            
    ID_INDUSTRIA NUMBER(38,0),
    ID_SENIORITY NUMBER(38,0)
);

INSERT INTO PROYECTO_JUPI.LANDING_ZONE.L1_DIM_PUESTOS_TRABAJO(
    NOMBRE_PUESTO,
    ID_INDUSTRIA,
    ID_SENIORITY
)VALUES
    ('Bi Analyst / Data Analyst' , 1 ,1),
    ('Bi Analyst / Data Analyst' , 1 ,2),
    ('Bi Analyst / Data Analyst' , 1 ,3),
    ('Data Engineer',1,1),
    ('Data Engineer',1,2),
    ('Data Engineer',1,3),
    ('Data Scientist',1,1),
    ('Data Scientist',1,2),
    ('Data Scientist',1,3),
    ('Developer',1,1),
    ('Developer',1,2),
    ('Developer',1,3),
    ('QA / Tester',1,1),
    ('QA / Tester',1,2),
    ('QA / Tester',1,3)

SELECT * FROM PROYECTO_JUPI.LANDING_ZONE.L1_DIM_PUESTOS_TRABAJO;


