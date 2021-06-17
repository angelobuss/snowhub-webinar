create or replace TABLE PRODUTO_SERVICO_D (
	PRODUTO_SERVICO_ID NUMBER(6,0),
	UNIDADE_FORNECIMENTO VARCHAR(40),
	MARCA VARCHAR(80),
	DESCRICAO VARCHAR(160),
	MODELO_VERSAO VARCHAR(80),
	DATA_CARGA_DW TIMESTAMP_NTZ(6),
	CATEGORIA_ID NUMBER(6,0),
	IDENTIFICADOR_MATERIAL VARCHAR(255),
	constraint PRODUTO_SERVICO_D_PK primary key (PRODUTO_SERVICO_ID)
);