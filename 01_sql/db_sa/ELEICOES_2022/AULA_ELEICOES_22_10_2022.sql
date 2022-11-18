-- AULA 1 (22/10/2022)
SELECT * 
	FROM [dbo].[votacao_candidato_munzona_2022_BRASIL]
WHERE NM_MUNICIPIO = 'S�O PAULO' AND
	  SG_UF <> SG_UE AND
	  QT_VOTOS_NOMINAIS_VALIDOS > 1000

SELECT top 200 * 
	FROM [dbo].[votacao_candidato_munzona_2022_BRASIL]
WHERE NM_MUNICIPIO = 'S�O PAULO'

SELECT COUNT(*)
	FROM [dbo].[votacao_candidato_munzona_2022_BRASIL]
WHERE SG_UF ='SP'

SELECT DISTINCT NM_MUNICIPIO  
	FROM [dbo].[votacao_candidato_munzona_2022_BRASIL]

	-- TESTE DE VALIDA��O 
SELECT CONCAT (ANO_ELEICAO, CD_TIPO_ELEICAO, NR_TURNO, CD_ELEICAO, TP_ABRANGENCIA, SG_UF, SG_UE, CD_MUNICIPIO, NR_ZONA) as INFO,
	   CONVERT (INT, COUNT (*)) AS CNT,
	   DATEPART(YEAR, CONVERT(DATE,DT_GERACAO,103)) AS ANO,
	   DATEPART(MONTH, CONVERT(DATE,DT_GERACAO,103)) AS MES,
	   DATEPART(DAY, CONVERT(DATE,DT_GERACAO,103)) AS DIA
	FROM [dbo].[votacao_candidato_munzona_2022_BRASIL]
GROUP BY CONCAT (ANO_ELEICAO, CD_TIPO_ELEICAO, NR_TURNO, CD_ELEICAO, TP_ABRANGENCIA, SG_UF, SG_UE, CD_MUNICIPIO, NR_ZONA),
		 DATEPART(YEAR, CONVERT(DATE,DT_GERACAO,103)),
		 DATEPART(MONTH, CONVERT(DATE,DT_GERACAO,103)),
		 DATEPART(DAY, CONVERT(DATE,DT_GERACAO,103))
HAVING COUNT(*) > 1
ORDER BY 3,4,5, 2 DESC

SELECT DATEPART(YEAR, CONVERT(DATE,DT_GERACAO,103))
FROM [dbo].[votacao_candidato_munzona_2022_BRASIL]
WHERE TRY_CONVERT (INT,  IS NULL

SELECT CONVERT(DATE,DT_GERACAO,103) AS TESTE, 
		DT_GERACAO
FROM [dbo].[votacao_candidato_munzona_2022_BRASIL]

 -- CONTINUA��O

SELECT DISTINCT CD_CARGO, DS_CARGO  
	FROM [dbo].[votacao_candidato_munzona_2022_BRASIL]
WHERE SG_UF ='SP'


-- TESTE DE DATA

SELECT CAST (RIGHT ('22/10/2022', 4) + '/' + LEFT(RIGHT ('22/10/2022', 7),2) + '/' + LEFT ('22/10/2022', 2) AS DATE)

SELECT CAST (RIGHT (DT_GERACAO, 4) + '/' + LEFT(RIGHT (DT_GERACAO, 7),2) + '/' + LEFT (DT_GERACAO, 2) AS DATE)
	FROM [dbo].[votacao_candidato_munzona_2022_BRASIL]

SELECT 
	DT_GERACAO,
	CAST(CONVERT (VARCHAR(10), DT_GERACAO, 110) AS DATE )
	FROM [dbo].[votacao_candidato_munzona_2022_BRASIL]