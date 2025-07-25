use DbDISUCII

SELECT     
MAEPRO.PROCOD as CodigoProducto, 
MAEPRO.PROMED as Medida,
MAEPRO.PRODSC as Descripcion,
MAEASO.ASOCOD as CodigoLaboratorio,
MAEASO.ASONRZ as Laboratorio,
MAEPRO.PROCOS as Costo,
MAEPRO.PRODCF as DctoFinanciero,
MAEPRO.PRODCA as DctoAdicional,
MAEPRO.PRODCL as DctoLaboratorio,
MAEPRE.PREUTI as Utilidad,
MAEPRE.PREPVE as Precio

FROM            MAEPRO INNER JOIN
                         MAEASO ON MAEASO.ASOCOD = MAEPRO.ASOCOD INNER JOIN
                         MAEPRE ON MAEPRE.PROCOD = MAEPRO.PROCOD
