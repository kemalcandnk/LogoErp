SELECT MLZ.CODE AS 'MALZME KODU',MLZ.NAME AS 'MALZEME AÇIKLAMASI',FIS.FICHENO AS 'FİŞ NUMARASI',HAREKET.DATE_ AS 'İŞLEM ZAMANI',HAREKET.AMOUNT AS 'MİKTAR' 
FROM LG_XXX_STLINE HAREKET
LEFT OUTER JOIN LG_XXX_ITEMS MLZ ON MLZ.LOGICALREF=HAREKET.STOCKREF
LEFT OUTER JOIN LG_XXX_STFICHE FIS ON FIS.LOGICALREF = HAREKET.STFICHEREF
WHERE HAREKET.CANCELLED=0 AND HAREKET.TRCODE='25' AND HAREKET.DATE_>'2023-07-01 00:00:00.000' AND FIS.FICHENO LIKE 'FİŞ NUMARA FİLTRESİ' AND FIS.SOURCEINDEX='BURAYA AMBAR NUMARASI GELECEK'

--İSTERSENİZ FİŞ NUMARASI ŞARTINI VE AMBAR TERCİHİNİ DEĞİŞTİREBİLİRSİNİZ.
--TÜM FİŞLERİ GÖRMEK İÇİN HAREKET.DATE ŞARTI DAHİL SİLEBİLİRSİNİZ.
