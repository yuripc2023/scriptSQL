use DbDISUCII

SELECT -- top 100
MAEPRO.PROCOD as CodigoProducto, 
MAEPRO.ASOCOD as Company, 
MAEPRO.PROMED as Medida, 
MAEPRO.PRODSC as Descripcion, 
MAEPRO.PROCOS as Costo,
MAEPRO.PRODCF as DctoFinanciero,
MAEPRO.PRODCA as DctoAdicional,
MAEPRO.PRODCL as DctoLaboratorio,
MAEPRE.PREUTI as Utilidad,
MAEPRE.PREPVE as Precio,
MAEASO.ASOCOD as CodigoLaboratorio, 
maeaso.ASONRZ as Laboratorio
FROM            MAEPRO INNER JOIN
                         MAEASO ON MAEASO.ASOCOD = MAEPRO.ASOCOD INNER JOIN
                         VINTXP ON MAEPRO.PROCOD = VINTXP.PROCOD INNER JOIN
						 MAEPRE on MAEPRE.PROCOD = MAEPRO.PROCOD
ORDER BY MAEASO.ASONRZ
