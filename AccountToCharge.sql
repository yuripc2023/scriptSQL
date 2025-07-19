use dbdisucII

SELECT        Zona.ZONCOD AS Zona, MAEVCR.VCRSDO AS Serie, MAEVCR.VCRNDO AS Comprobante, MAEVCR.VCRFDV AS Emision, Cliente.ASOCOD AS CodigoCliente, Cliente.ASONDO AS RUC, 
                         Cliente.ASONRZ AS RazonSocial, Cliente.ASONCO AS NombreComercial, Vendedor.ASOCOD AS cVendedor, Vendedor.ASONRZ + ' ' + Vendedor.ASOAPE AS Vendedor, Cliente.ASODIR AS DireccionCliente, 
                         MAEVCR.VCRDEB AS Importe, Cliente.ASOROL AS Rol, MAEVCR.VCRHAB AS Protesto, MAEVCR.VCRSAL AS Saldo, MAEVCR.VCRFEP AS FechaVencimineto, MAEVCR.VCREST AS Estado, Pago.PVCFEP AS FechaPago, 
                         Pago.PVCMEP AS MedioPago, Pago.PCVOPE AS Obs, Pago.PVCIMP AS ImporteCobro, Cliente.ASOLCR AS LineaCredito, MAEVCR.VCRCOD, MAEVCR.ASOCOD, Cliente.ASOTE1, Cliente.ASOEMA, dis.ubidsc as Distrtio,
						 prov.UBIDSC as Provincia,  Zona.ZONDSC as ZonaDescripcion, MAEVCR.VCRDSC AS Descripcion
FROM            MAEVCR INNER JOIN
                         MAEASO AS Cliente ON MAEVCR.ASOCOD = Cliente.ASOCOD INNER JOIN
                         MAEASO AS Vendedor ON MAEVCR.MAE_ASOCOD = Vendedor.ASOCOD LEFT OUTER JOIN
                         DETPVC AS Pago ON MAEVCR.VCRCOD = Pago.VCRCOD AND MAEVCR.ASOCOD = Pago.ASOCOD INNER JOIN
                         MAEZON AS Zona ON Zona.ZONCOD = Cliente.ZONCOD inner join
						 maeubi as dis on Cliente.ubicod = dis.ubicod
inner join maeubi as prov on dis.ubidep = prov.ubicod
inner join maeubi as dep on prov.ubidep = dep.ubicod

where MAEVCR.VCRSAL > 0




