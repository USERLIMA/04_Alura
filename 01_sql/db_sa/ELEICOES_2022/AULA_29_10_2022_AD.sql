SELECT COUNT(*) FROM [dbo].[Historico_Totalizacao_Presidente_BR_1T_2022]

--8437

--COMENTARIO

/* BLOCO DE COMENTARIO

SDAFOPISADJFPOASD

FDAOPAWFJPWE

WEAFEAWPOFW

*/

SELECT COUNT(*) FROM [dbo].[Historico_Totalizacao_Presidente_BR_1T_2022] WHERE ISNUMERIC([QT_SECOES_TOTAL])=0

SELECT MAX(LEN(TRIM(QT_SECOES_TOTAL))) FROM [dbo].[Historico_Totalizacao_Presidente_BR_1T_2022]

 

SELECT TOP 10 * FROM [Historico_Totalizacao_Presidente_BR_1T_2022_adilson]

                                    0,970774

 

select * into Historico_Totalizacao_Presidente_BR_1T_2022_bkp from Historico_Totalizacao_Presidente_BR_1T_2022

select @@LANGUAGE

set language Brazilian

set language us_english

 

select cast(cast(char( dt_totalizacao as varchar) from Historico_Totalizacao_Presidente_BR_1T_2022

 

 

 

select getdate()

 

                                                           numeric(18,6)

                                                           decimal(18,6)

SELECT * FROM [Historico_Totalizacao_Presidente_BR_1T_2022] where [DT_TOTALIZACAO     ] = '2022-10-02'

 

create index idx_data on [Historico_Totalizacao_Presidente_BR_1T_2022] (dt_totalizacao)

drop index idx_data on [Historico_Totalizacao_Presidente_BR_1T_2022]

SELECT * INTO [Historico_Totalizacao_Presidente_BR_1T_2022_ADILSON] FROM [Historico_Totalizacao_Presidente_BR_1T_2022]

 

SELECT TOP 0 * INTO [Historico_Totalizacao_Presidente_BR_1T_2022_ESTRUTURA] FROM[Historico_Totalizacao_Presidente_BR_1T_2022]

-- UPDATE [Historico_Totalizacao_Presidente_BR_1T_2022] SET
-- 
--   [PE_SECOES_TOT_ACUMULADO                      ] = REPLACE([PE_SECOES_TOT_ACUMULADO                      ],',','.')
-- 
-- , [CIRO_GOMES_PE_VOTOS_TOT_ACUMULADO            ] = REPLACE([CIRO_GOMES_PE_VOTOS_TOT_ACUMULADO            ],',','.')
-- 
-- , [LULA_PE_VOTOS_TOT_ACUMULADO                  ] = REPLACE([LULA_PE_VOTOS_TOT_ACUMULADO                  ],',','.')
-- 
-- , [PADRE_KELMON_PE_VOTOS_TOT_ACUMULADO          ] = REPLACE([PADRE_KELMON_PE_VOTOS_TOT_ACUMULADO          ],',','.')
-- 
-- , [SIMONE_TEBET_PE_VOTOS_TOT_ACUMULADO          ] = REPLACE([SIMONE_TEBET_PE_VOTOS_TOT_ACUMULADO          ],',','.')
-- 
-- , [VERA_PE_VOTOS_TOT_ACUMULADO                  ] = REPLACE([VERA_PE_VOTOS_TOT_ACUMULADO                  ],',','.')
-- 
-- , [SOFIA_MANZANO_PE_VOTOS_TOT_ACUMULADO         ] = REPLACE([SOFIA_MANZANO_PE_VOTOS_TOT_ACUMULADO         ],',','.')
-- 
-- , [JAIR_BOLSONARO_PE_VOTOS_TOT_ACUMULADO        ] = REPLACE([JAIR_BOLSONARO_PE_VOTOS_TOT_ACUMULADO        ],',','.')
-- 
-- , [CONSTITUINTE_EYMAEL_PE_VOTOS_TOT_ACUMULADO   ] = REPLACE([CONSTITUINTE_EYMAEL_PE_VOTOS_TOT_ACUMULADO   ],',','.')
-- 
-- , [FELIPE_DAVILA_PE_VOTOS_TOT_ACUMULADO         ] = REPLACE([FELIPE_DAVILA_PE_VOTOS_TOT_ACUMULADO         ],',','.')
-- 
-- , [SORAYA_THRONICKE_PE_VOTOS_TOT_ACUMULADO      ] = REPLACE([SORAYA_THRONICKE_PE_VOTOS_TOT_ACUMULADO      ],',','.')
-- 
-- , [LEO_PERICLES_PE_VOTOS_TOT_ACUMULADO          ] = REPLACE([LEO_PERICLES_PE_VOTOS_TOT_ACUMULADO          ],',','.')
-- 
-- , [BRANCO_PE_VOTOS_TOT_ACUMULADO                ] = REPLACE([BRANCO_PE_VOTOS_TOT_ACUMULADO                ],',','.')
-- 
-- , NULO_PE_VOTOS_TOT_ACUMULADO                                 = REPLACE(NULO_PE_VOTOS_TOT_ACUMULADO                                ,',','.')


create table Aluno_adilson

(

       pk_aluno int primary key

       , nome varchar(50)

       , tipo varchar(50)

)

create table materia_adilson

(

       pk_materia int primary key

       , materia varchar(50)

       , descricao varchar(50)

)

create table aluno_x_materia

(

       fk_aluno int

       , fk_materia int

       , primary key (fk_aluno, fk_materia)

       , constraint fk_aluno foreign key (fk_aluno) references aluno_adilson(pk_aluno)

       , constraint fk_materia foreign key (fk_materia) references materia_adilson(pk_materia)

)

 

 

               select [DT_TOTALIZACAO     ]

 

       , left([DT_TOTALIZACAO     ],2)  as DIA

       , SUBSTRING([DT_TOTALIZACAO     ],4,2) as MES

       , SUBSTRING([DT_TOTALIZACAO     ],7,4) as ANO

       , RIGHT([DT_TOTALIZACAO     ],8)  as TEMPO

 

       ,CONCAT(SUBSTRING([DT_TOTALIZACAO     ],7,4)

                    , '-', SUBSTRING([DT_TOTALIZACAO     ],4,2)

                    ,'-', left([DT_TOTALIZACAO     ],2)

                    , ' ', RIGHT([DT_TOTALIZACAO     ],8)

                    ) A

from [Historico_Totalizacao_Presidente_BR_1T_2022]

 

BEGIN TRAN A

UPDATE [Historico_Totalizacao_Presidente_BR_1T_2022]

SET [DT_TOTALIZACAO     ]=CONCAT(SUBSTRING([DT_TOTALIZACAO     ],7,4)

                    , '-', SUBSTRING([DT_TOTALIZACAO     ],4,2)

                    ,'-', left([DT_TOTALIZACAO     ],2)

                    , ' ', RIGHT([DT_TOTALIZACAO     ],8)

                    )

COMMIT A

SELECT * FROM [Historico_Totalizacao_Presidente_BR_1T_2022]