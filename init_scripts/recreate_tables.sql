-- Arquivo: recreate_tables.sql

-- Drop das tabelas se elas existirem
DROP TABLE IF EXISTS metabase_db.qrtz_job_details;
DROP TABLE IF EXISTS metabase_db.qrtz_triggers;
DROP TABLE IF EXISTS metabase_db.qrtz_fired_triggers;

-- Crie as tabelas novamente
-- Substitua aqui com o código SQL real para criar as tabelas
CREATE TABLE metabase_db.qrtz_job_details (
    ...
);

CREATE TABLE metabase_db.qrtz_triggers (
    ...
);

CREATE TABLE metabase_db.qrtz_fired_triggers (
    ...
);

-- Outras operações SQL, índices ou chaves estrangeiras, se necessário