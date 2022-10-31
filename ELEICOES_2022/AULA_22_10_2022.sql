SELECT atributo (camppo) ou m�trica (campo num�rico)
	* FROM tabela
	JOIN
WHERE filtro de atributo ou campo
	GROUP BY agrupamento do filtro
--	ORDER BY classifica��o por atributo ou m�trica
	HAVING condi��o do agrupamento

--EX

SELECT "a soma de votos" = <sum(voto) group by estado, candidato>

-- DDL = dataDefinitionLanguage <Comandos que interagem com os objetos do banco> (CREATE, ALTER, DROP, TRUNCATE)

-- DML = dataManipulationLanguage <Comandos que interagem com os dados dentro da tabela> (SELECT, INSERT, DELETE, UPDATE)

-- DTL = dataTransactionLanguage <Comandos para controle de transa��o> (BEGIN TRANSACTION, COMMIT, ROLL BACK)

-- DCL = dataControlLanguage <Comandos para controlar a parte de seguran�a do banco de dados> (GRANT [Garante acesso], REVOKE [Retira acesso], DENY [Nega acessso])

-- CI (CASE INSENSITIVE) x CS (CASE SENTITIVE)

-- AS (ACT. SENSITIVE)