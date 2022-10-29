-- instancia de SQL server é um executável do SQL que roda no sistema operacional e pode gerenciar vários bancos de dados
-- a instancia roda na porta default 1433 e insancia nomeada na porta 1434 ou outra
-- Tipos de mdoelos de dados (modelo conceitual x modelo lógico x modelo floco)
sp_help [TB_HISTORICO_TOTALIZACAO_PRESIDENTE_BR_1T_2022]

select 
	* from dbo.[TB_HISTORICO_TOTALIZACAO_PRESIDENTE_BR_1T_2022]

-- sp_who
    -- SELECT * FROM sys.processes
    -- CREATE INDEX idx_lastname ON persons (lastName)
    -- CREATE UNIQUE INDEX uidx-pid onde Persons (PersonID);
    -- DEAD LOCK

-- conexão com banco de dados da azure
-- 1 . CREATE SQL DATA BASE
    -- 2. Selecionar os serviços de acordo com os preços sugeridos
    -- OBS.1.: Tipos de redundância > 100km (LOCAL, GEL [server=BR - BKP = USA])
    -- OBS.2.: 0 = false / restante é vdd

SELECT COUNT(1) 
	FROM dbo.[TB_HISTORICO_TOTALIZACAO_PRESIDENTE_BR_1T_2022] 

-- 8437

SELECT COUNT(*) AS CNT
	 FROM dbo.[TB_HISTORICO_TOTALIZACAO_PRESIDENTE_BR_1T_2022] 
WHERE ISNUMERIC(QT_SECOES_TOTAL) = 1

SELECT COUNT(*) AS CNT
	 FROM dbo.[TB_HISTORICO_TOTALIZACAO_PRESIDENTE_BR_1T_2022] 
WHERE ISNUMERIC(QT_SECOES_TOTAL) = 0

SELECT LEN(QT_SECOES_TOTAL)
	 FROM dbo.[TB_HISTORICO_TOTALIZACAO_PRESIDENTE_BR_1T_2022] 

SELECT MAX(LEN(QT_SECOES_TOTAL))
	 FROM dbo.[TB_HISTORICO_TOTALIZACAO_PRESIDENTE_BR_1T_2022] 

SELECT MIN(LEN(QT_SECOES_TOTAL))
	 FROM dbo.[TB_HISTORICO_TOTALIZACAO_PRESIDENTE_BR_1T_2022] 

SELECT MIN(LEN(QT_SECOES_TOTAL))
	 FROM dbo.[TB_HISTORICO_TOTALIZACAO_PRESIDENTE_BR_1T_2022]

SELECT MAX(LEN(QT_SECOES_TOTAL))
	 FROM dbo.[TB_HISTORICO_TOTALIZACAO_PRESIDENTE_BR_1T_2022]

SELECT LEN(TRIM(CAST(QT_SECOES_TOT  AS varchar)))
	 FROM dbo.[TB_HISTORICO_TOTALIZACAO_PRESIDENTE_BR_1T_2022]

-- UPDATE

-- select 
-- 	* from dbo.[TB_ELEICOES_PRESIDENT_1T_2022]
-- 
-- UPDATE [TB_ELEICOES_PRESIDENT_1T_2022] SET
-- [PE_SECOES_TOT_ACUMULADO] = REPLACE ([PE_SECOES_TOT_ACUMULADO],',','.'),
-- [CIRO_GOMES_PE_VOTOS_TOT_ACUMULADO] = REPLACE ([CIRO_GOMES_PE_VOTOS_TOT_ACUMULADO],',','.'),
-- [PADRE_KELMON_PE_VOTOS_TOT_ACUMULADO] = REPLACE ([PADRE_KELMON_PE_VOTOS_TOT_ACUMULADO],',','.'),
-- [SIMONE_TEBET_PE_VOTOS_TOT_ACUMULADO] = REPLACE ([SIMONE_TEBET_PE_VOTOS_TOT_ACUMULADO],',','.'),
-- [VERA_PE_VOTOS_TOT_ACUMULADO] = REPLACE ([VERA_PE_VOTOS_TOT_ACUMULADO],',','.'),
-- [SOFIA_MANZANO_PE_VOTOS_TOT_ACUMULADO] = REPLACE ([SOFIA_MANZANO_PE_VOTOS_TOT_ACUMULADO],',','.'),
-- [JAIR_BOLSONARO_PE_VOTOS_TOT_ACUMULADO] = REPLACE ([JAIR_BOLSONARO_PE_VOTOS_TOT_ACUMULADO],',','.'),
-- [CONSTITUINTE_EYMAEL_PE_VOTOS_TOT_ACUMULADO] = REPLACE ([CONSTITUINTE_EYMAEL_PE_VOTOS_TOT_ACUMULADO],',','.'),
-- [FELIPE_DAVILA_PE_VOTOS_TOT_ACUMULADO] = REPLACE ([FELIPE_DAVILA_PE_VOTOS_TOT_ACUMULADO],',','.'),
-- [SORAYA_THRONICKE_PE_VOTOS_TOT_ACUMULADO] = REPLACE ([SORAYA_THRONICKE_PE_VOTOS_TOT_ACUMULADO],',','.'),
-- [LEO_PERICLES_PE_VOTOS_TOT_ACUMULADO] = REPLACE ([LEO_PERICLES_PE_VOTOS_TOT_ACUMULADO],',','.'),
-- [BRANCO_PE_VOTOS_TOT_ACUMULADO] = REPLACE ([BRANCO_PE_VOTOS_TOT_ACUMULADO],',','.'),
-- [NULO_PE_VOTOS_TOT_ACUMULADO] = REPLACE ([NULO_PE_VOTOS_TOT_ACUMULADO],',','.')

-- SELECT * INTO [TB_BKP_ELEICOES_PRESIDENTE_BR_1T_2022] FROM dbo.[TB_HISTORICO_TOTALIZACAO_PRESIDENTE_BR_1T_2022]

SELECT * FROM TB_BKP_ELEICOES_PRESIDENTE_BR_1T_2022;

SELECT CAST (DT_TOTALIZACAO AS DATETIME)
	FROM TB_BKP_ELEICOES_PRESIDENTE_BR_1T_2022

SELECT @@LANGUAGE
-- SET LANGUAGE brasilian
SELECT @@CONNECTIONS
SELECT @@VERSION

-- PK x FK = continua no banco de escolas

CREATE INDEX idx_data ON [TB_BKP_ELEICOES_PRESIDENTE_BR_1T_2022] (DT_TOTALIZACAO);
DROP INDEX idx_data ON [TB_BKP_ELEICOES_PRESIDENTE_BR_1T_2022]

select 
	* from dbo.[TB_BKP_ELEICOES_PRESIDENTE_BR_1T_2022]
WHERE DT_TOTALIZACAO = '2022-10-02'