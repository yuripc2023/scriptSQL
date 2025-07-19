use dbdisucII
-- Extraer laboratorios
select ASOCOD as CodeI, ASOROL, asonrz as FirstName, ASONDO as NumberDocument from maeaso 
where asorol = 'Proveedor' and asocod < 100
