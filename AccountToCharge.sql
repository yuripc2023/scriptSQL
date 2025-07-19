use dbdisucII

SELECT        MAEVCR.VCRSDO AS Serie, MAEVCR.VCRNDO AS Comprobante, MAEVCR.VCRFDV AS Emision, Cliente.ASOCOD AS CodigoCliente, Cliente.ASONDO AS RUC, Cliente.ASONRZ AS RazonSocial, 
                         MAEVCR.VCRDEB AS Importe, MAEVCR.VCRHAB AS Protesto, MAEVCR.VCRSAL AS Saldo, 
                         MAEVCR.VCRFEP AS FechaVencimineto, MAEVCR.VCREST AS Estado, MAEVCR.ASOCOD, MAEVCR.VCRDSC AS Descripcion
FROM            MAEVCR INNER JOIN
                         MAEASO AS Cliente ON MAEVCR.ASOCOD = Cliente.ASOCOD

where MAEVCR.VCRSAL > 0 and MAEVCR.VCREST <> '5' and MAEVCR.VCREST <> '4'




