-- Table structure for table "Pessoa"
DROP TABLE IF EXISTS "Pessoa" CASCADE;
CREATE TABLE "Pessoa" (
  "CPF" CHAR(11) NOT NULL,
  "nome" VARCHAR(50) NOT NULL,
  "endereço" VARCHAR(80),
  "sexo" VARCHAR(9) CHECK (sexo IN ('feminino', 'masculino')) NOT NULL,
  "data_nascimento" DATE NOT NULL,
  PRIMARY KEY ("CPF"),
  UNIQUE ("CPF")
);

-- Table structure for table "Campeonato"
DROP TABLE IF EXISTS "Campeonato" CASCADE;
CREATE TABLE "Campeonato" (
  "ano" INTEGER NOT NULL,
  "UF" CHAR(2) NOT NULL,
  "data_início" DATE NOT NULL,
  "data_fim" DATE NOT NULL,
  "nota_final" FLOAT,
  PRIMARY KEY ("ano", "UF", "data_início")
);

-- Table structure for table "Escola"
DROP TABLE IF EXISTS "Escola" CASCADE;
CREATE TABLE "Escola" (
  "CNPJ" CHAR(14) NOT NULL,
  "nome" VARCHAR(50) NOT NULL,
  "apelido" VARCHAR(30),
  "cor_primária" VARCHAR(15) NOT NULL,
  "cor_secundária" VARCHAR(15),
  "cor_terciária" VARCHAR(15),
  "endereço" VARCHAR(80),
  "ano_fundação" INTEGER NOT NULL,
  PRIMARY KEY ("CNPJ")
);

-- Table structure for table "Sambodromo"
DROP TABLE IF EXISTS "Sambodromo" CASCADE;
CREATE TABLE "Sambodromo" (
  "id" SERIAL PRIMARY KEY,
  "nome" VARCHAR(30) NOT NULL,
  "capacidade" INTEGER,
  "endereço" VARCHAR(80)
);

-- Table structure for table "Participante"
DROP TABLE IF EXISTS "Participante" CASCADE;
CREATE TABLE "Participante" (
  "CPF_Participante" CHAR(11) NOT NULL,
  "título" VARCHAR(50) NOT NULL,
  "tipo" VARCHAR(30) CHECK (tipo IN ('apoio', 'ritmista', 'comissão de frente', 'destaque', 'mestre sala', 'porta bandeira')) NOT NULL,
  PRIMARY KEY ("CPF_Participante"),
  FOREIGN KEY ("CPF_Participante") REFERENCES "Pessoa" ("CPF")
);

-- Table structure for table "Fundador"
DROP TABLE IF EXISTS "Fundador" CASCADE;
CREATE TABLE "Fundador" (
  "CPF_Fundador" CHAR(11) NOT NULL,
  "data_falecimento" DATE,
  PRIMARY KEY ("CPF_Fundador"),
  FOREIGN KEY ("CPF_Fundador") REFERENCES "Pessoa" ("CPF")
);

-- Table structure for table "Espectador"
DROP TABLE IF EXISTS "Espectador" CASCADE;
CREATE TABLE "Espectador" (
  "CPF_Espectador" CHAR(11) NOT NULL,
  "email" VARCHAR(50) NOT NULL,
  "tipo_ingresso" INTEGER NOT NULL,
  "telefone" BIGINT,
  PRIMARY KEY ("CPF_Espectador"),
  FOREIGN KEY ("CPF_Espectador") REFERENCES "Pessoa" ("CPF")
);

-- Table structure for table "Integrante"
DROP TABLE IF EXISTS "Integrante" CASCADE;
CREATE TABLE "Integrante" (
  "CNPJ" CHAR(14) NOT NULL,
  "ano" INTEGER NOT NULL,
  "UF" CHAR(2) NOT NULL,
  "data_início" DATE NOT NULL,
  "grupo" VARCHAR(20) NOT NULL,
  "ordem_desfile" INTEGER NOT NULL,
  "tema_enredo" VARCHAR(50),
  "hora_início" TIME,
  "hora_fim" TIME,
  PRIMARY KEY ("CNPJ", "ano", "UF", "data_início"),
  FOREIGN KEY ("CNPJ") REFERENCES "Escola" ("CNPJ"),
  FOREIGN KEY ("ano", "UF", "data_início") REFERENCES "Campeonato" ("ano", "UF", "data_início")
);

-- Table structure for table "Jurado"
DROP TABLE IF EXISTS "Jurado" CASCADE;
CREATE TABLE "Jurado" (
  "CPF_Jurado" CHAR(11) NOT NULL,
  "atividade" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("CPF_Jurado"),
  FOREIGN KEY ("CPF_Jurado") REFERENCES "Pessoa" ("CPF")
);

-- Table structure for table "Filiar"
DROP TABLE IF EXISTS "Filiar" CASCADE;
CREATE TABLE "Filiar" (
  "CPF" CHAR(11) NOT NULL,
  "CNPJ" CHAR(14) NOT NULL,
  "ano_início" INTEGER NOT NULL,
  "ano_fim" INTEGER,
  PRIMARY KEY ("CPF", "CNPJ"),
  FOREIGN KEY ("CPF") REFERENCES "Pessoa" ("CPF"),
  FOREIGN KEY ("CNPJ") REFERENCES "Escola" ("CNPJ")
);

-- Table structure for table "Fundar"
DROP TABLE IF EXISTS "Fundar" CASCADE;
CREATE TABLE "Fundar" (
  "CPF_Fundador" CHAR(11) NOT NULL,
  "id_sambodromo" INTEGER NOT NULL,
  PRIMARY KEY ("CPF_Fundador", "id_sambodromo"),
  FOREIGN KEY ("CPF_Fundador") REFERENCES "Fundador" ("CPF_Fundador"),
  FOREIGN KEY ("id_sambodromo") REFERENCES "Sambodromo" ("id")
);

-- Table structure for table "Julgar"
DROP TABLE IF EXISTS "Julgar" CASCADE;
CREATE TABLE "Julgar" (
  "CNPJ" CHAR(14) NOT NULL,
  "ano" INTEGER NOT NULL,
  "UF" CHAR(2) NOT NULL,
  "data_início" DATE NOT NULL,
  "CPF_Jurado" CHAR(11) NOT NULL,
  "nota" INTEGER NOT NULL,
  "quesito" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("CNPJ", "ano", "UF", "data_início", "CPF_Jurado", "quesito"),
  FOREIGN KEY ("CNPJ", "ano", "UF", "data_início") REFERENCES "Integrante" ("CNPJ", "ano", "UF", "data_início"),
  FOREIGN KEY ("CPF_Jurado") REFERENCES "Jurado" ("CPF_Jurado")
);

-- Table structure for table "Venda"
DROP TABLE IF EXISTS "Venda" CASCADE;
CREATE TABLE "Venda" (
  "id_sambodromo" INTEGER NOT NULL,
  "ingresso" INTEGER NOT NULL,
  "preço" FLOAT NOT NULL,
  "data" DATE NOT NULL,
  PRIMARY KEY ("id_sambodromo", "ingresso", "preço", "data"),
  FOREIGN KEY ("id_sambodromo") REFERENCES "Sambodromo" ("id")
);

-- Table structure for table "Venda_Escola"
DROP TABLE IF EXISTS "Venda_Escola" CASCADE;
CREATE TABLE "Venda_Escola" (
  "CNPJ" CHAR(14) NOT NULL,
  "ingresso" INTEGER NOT NULL,
  "preço" FLOAT NOT NULL,
  "data" DATE NOT NULL,
  PRIMARY KEY ("CNPJ", "ingresso", "preço", "data"),
  FOREIGN KEY ("CNPJ") REFERENCES "Escola" ("CNPJ")
);

-- Table structure for table "Venda_Participante"
DROP TABLE IF EXISTS "Venda_Participante" CASCADE;
CREATE TABLE "Venda_Participante" (
  "CPF_Participante" CHAR(11) NOT NULL,
  "ingresso" INTEGER NOT NULL,
  "preço" FLOAT NOT NULL,
  "data" DATE NOT NULL,
  PRIMARY KEY ("CPF_Participante", "ingresso", "preço", "data"),
  FOREIGN KEY ("CPF_Participante") REFERENCES "Participante" ("CPF_Participante")
);

-- Dumping data for table "Pessoa"
INSERT INTO "Pessoa" VALUES ('12345678901', 'Nome Exemplo', 'Rua Exemplo, 123', 'masculino', '1980-01-01');

-- Dumping data for table "Campeonato"
INSERT INTO "Campeonato" VALUES (2023, 'SP', '2023-02-01', '2023-02-10', NULL);

-- Dumping data for table "Escola"
INSERT INTO "Escola" VALUES ('12345678000195', 'Escola de Samba Unidos do Exemplo', 'Unidos do Exemplo', 'Azul', 'Branco', 'Amarelo', 'Rua Exemplo, 123', 1990);

-- Dumping data for table "Sambodromo"
INSERT INTO "Sambodromo" VALUES (1, 'Sambódromo do Anhembi', 30000, 'Avenida Olavo Fontoura, 1209');

-- Dumping data for table "Participante"
INSERT INTO "Participante" VALUES ('12345678901', 'Participante Exemplo', 'apoio');

-- Dumping data for table "Fundador"
INSERT INTO "Fundador" VALUES ('12345678901', NULL);

-- Dumping data for table "Espectador"
INSERT INTO "Espectador" VALUES ('12345678901', 'exemplo@teste.com', 1, 123456789);

-- Dumping data for table "Integrante"
INSERT INTO "Integrante" VALUES ('12345678000195', 2023, 'SP', '2023-02-01', 'Grupo Especial', 1, 'Carnaval do Exemplo', '20:00', '22:00');

-- Dumping data for table "Jurado"
INSERT INTO "Jurado" VALUES ('12345678901', 'Jurado de Samba');

-- Dumping data for table "Filiar"
INSERT INTO "Filiar" VALUES ('12345678901', '12345678000195', 2020, NULL);

-- Dumping data for table "Fundar"
INSERT INTO "Fundar" VALUES ('12345678901', 1);

-- Dumping data for table "Julgar"
INSERT INTO "Julgar" VALUES ('12345678000195', 2023, 'SP', '2023-02-01', '12345678901', 10, 'Comissão de Frente');

-- Dumping data for table "Venda"
INSERT INTO "Venda" VALUES (1, 1, 100, '2023-01-01');

-- Dumping data for table "Venda_Escola"
INSERT INTO "Venda_Escola" VALUES ('12345678000195', 1, 50, '2023-01-01');

-- Dumping data for table "Venda_Participante"
INSERT INTO "Venda_Participante" VALUES ('12345678901', 1, 75, '2023-01-01');
