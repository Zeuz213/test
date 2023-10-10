SET ROLE "carteira-de-investimentos";
SET STATEMENT_TIMEOUT TO '300s';

CREATE TABLE transacao (
    id UUID NOT NULL
        CONSTRAINT transacao_pk
            PRIMARY KEY,
    dataDaTransacao DATE,
    valorTotal DOUBLE PRECISION,
    quantidade INT,
    Usuario_id UUID
        CONSTRAINT transacao_fk_usuario_id
            REFERENCES usuario,
    Ativo_id UUID
        CONSTRAINT transacao_fk_ativo_id
            REFERENCES ativo
);

ALTER TABLE transacao
OWNER TO "carteira-de-investimentos";

CREATE TABLE ativo (
    id UUID NOT NULL
        CONSTRAINT ativo_pk
            PRIMARY KEY,
    nome VARCHAR(45),
    descricao VARCHAR(45),
    categoria VARCHAR(45),
    valor DOUBLE PRECISION,
    patrimonio_id UUID
        CONSTRAINT ativo_fk_patrimonio_id
            REFERENCES patrimonio
);

ALTER TABLE ativo
OWNER TO "carteira-de-investimentos";

CREATE TABLE patrimonio (
    id UUID NOT NULL
        CONSTRAINT patrimonio_pk
            PRIMARY KEY,
    valorTotal DOUBLE PRECISION,
    quantidadeTotal INT
);

ALTER TABLE patrimonio
OWNER TO "carteira-de-investimentos";

CREATE TABLE usuario (
    id UUID NOT NULL
        CONSTRAINT usuario_pk
            PRIMARY KEY,
    nome VARCHAR(45),
    email VARCHAR(45),
    senha VARCHAR(45),
    patrimonio_id UUID
        CONSTRAINT usuario_fk_patrimonio_id
            REFERENCES patrimonio
);

ALTER TABLE usuario
OWNER TO "carteira-de-investimentos";