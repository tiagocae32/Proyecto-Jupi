CREATE OR REPLACE TABLE PROYECTO_JUPI.LANDING_ZONE.L1_DIM_COMUNAS (
    id_comuna INT PRIMARY KEY,
    nombre VARCHAR(255)
);


INSERT INTO PROYECTO_JUPI.LANDING_ZONE.L1_DIM_COMUNAS (id_comuna, nombre) VALUES
(1, 'Retiro, San Nicolás, Puerto Madero, San Telmo, Montserrat, Constitución'),
(2, 'Recoleta'),
(3, 'Balvanera, San Cristóbal'),
(4, 'La Boca, Barracas, Parque Patricios, Nueva Pompeya'),
(5, 'Almagro, Boedo'),
(6, 'Caballito'),
(7, 'Flores, Parque Chacabuco'),
(8, 'Villa Soldati, Villa Riachuelo, Lugano'),
(9, 'Liniers, Mataderos, Parque Avellaneda'),
(10, 'Villa Real, Monte Castro, Versalles, Floresta, Vélez Sarsfield, Villa Luro'),
(11, 'Villa General Mitre, Villa Devoto, Villa del Parque, Villa Santa Rita'),
(12, 'Coghlan, Saavedra, Villa Urquiza, Villa Pueyrredón'),
(13, 'Núñez, Belgrano, Colegiales'),
(14, 'Palermo'),
(15, 'Chacarita, Villa Crespo, La Paternal, Villa Ortúzar, Agronomía, Parque Chas');


SELECT * FROM PROYECTO_JUPI.LANDING_ZONE.L1_DIM_COMUNAS