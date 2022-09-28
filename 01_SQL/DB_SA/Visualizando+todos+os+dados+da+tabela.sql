SELECT [CPF]
      ,[NOME]
      ,[ENDERECO 1]
      ,[ENDERECO 2]
      ,[BAIRRO]
      ,[CIDADE]
      ,[ESTADO]
      ,[CEP]
      ,[DATA DE NASCIMENTO]
      ,[IDADE]
      ,[SEXO]
      ,[LIMITE DE CREDITO]
      ,[VOLUME DE COMPRA]
      ,[PRIMEIRA COMPRA]
  FROM [SUCOS_VENDAS].[dbo].[TABELA DE CLIENTES]

  SELECT * FROM [TABELA DE CLIENTES]

  SELECT [CPF]
      ,[NOME]
    FROM [TABELA DE CLIENTES]

	  SELECT [CPF] AS IDENTIFICADOR
      ,[NOME] AS CLIENTE
    FROM [TABELA DE CLIENTES]

		  SELECT 
		  [NOME] AS CLIENTE
		  ,[CPF] AS IDENTIFICADOR
          FROM [TABELA DE CLIENTES]