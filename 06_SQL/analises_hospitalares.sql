create database Projeto_hospitalar_RJ;

use projeto_hospitalar_RJ;
# ============================================================
# PROJETO HOSPITALAR RJ
# ============================================================

# Seleciona o banco
USE projeto_hospitalar_rj;


# 1. Quantidade de registros
SELECT COUNT(*) AS total_registros
FROM leitos_hospitalares;


# 2. Visualizar os dados
SELECT *
FROM leitos_hospitalares
LIMIT 10;


# 3. Total de leitos existentes
SELECT
    SUM(LEITOS_EXISTENTES) AS total_leitos
FROM leitos_hospitalares;


# 4. Total de leitos SUS
SELECT
    SUM(LEITOS_SUS) AS leitos_sus
FROM leitos_hospitalares;


# 5. Leitos SUS e não SUS
SELECT
    SUM(LEITOS_EXISTENTES) AS total_leitos,
    SUM(LEITOS_SUS) AS leitos_sus,
    SUM(LEITOS_EXISTENTES) - SUM(LEITOS_SUS) AS leitos_nao_sus
FROM leitos_hospitalares;


# 6. Percentual de leitos SUS
SELECT
    ROUND(
        SUM(LEITOS_SUS) * 100.0 /
        SUM(LEITOS_EXISTENTES),
        2
    ) AS percentual_sus
FROM leitos_hospitalares;


# 7. Leitos por município
SELECT
    MUNICIPIO,
    SUM(LEITOS_EXISTENTES) AS leitos_existentes,
    SUM(LEITOS_SUS) AS leitos_sus
FROM leitos_hospitalares
GROUP BY MUNICIPIO
ORDER BY leitos_existentes DESC;


# 8. Top 10 municípios com mais leitos
SELECT
    MUNICIPIO,
    SUM(LEITOS_EXISTENTES) AS leitos_existentes,
    SUM(LEITOS_SUS) AS leitos_sus
FROM leitos_hospitalares
GROUP BY MUNICIPIO
ORDER BY leitos_existentes DESC
LIMIT 10;


# 9. Top 10 municípios com mais leitos SUS
SELECT
    MUNICIPIO,
    SUM(LEITOS_SUS) AS leitos_sus
FROM leitos_hospitalares
GROUP BY MUNICIPIO
ORDER BY leitos_sus DESC
LIMIT 10;


# 10. Leitos por tipo de unidade
SELECT
    DS_TIPO_UNIDADE,
    SUM(LEITOS_EXISTENTES) AS leitos_existentes,
    SUM(LEITOS_SUS) AS leitos_sus
FROM leitos_hospitalares
GROUP BY DS_TIPO_UNIDADE
ORDER BY leitos_existentes DESC;


# 11. Quantidade de unidades por tipo
SELECT
    DS_TIPO_UNIDADE,
    COUNT(*) AS quantidade_unidades
FROM leitos_hospitalares
GROUP BY DS_TIPO_UNIDADE
ORDER BY quantidade_unidades DESC;


# 12. Leitos por natureza jurídica
SELECT
    DESC_NATUREZA_JURIDICA,
    SUM(LEITOS_EXISTENTES) AS leitos_existentes,
    SUM(LEITOS_SUS) AS leitos_sus
FROM leitos_hospitalares
GROUP BY DESC_NATUREZA_JURIDICA
ORDER BY leitos_existentes DESC;


# 13. Quantidade de unidades por natureza jurídica
SELECT
    DESC_NATUREZA_JURIDICA,
    COUNT(*) AS quantidade_unidades
FROM leitos_hospitalares
GROUP BY DESC_NATUREZA_JURIDICA
ORDER BY quantidade_unidades DESC;


# 14. Leitos por bairro
SELECT
    NO_BAIRRO,
    SUM(LEITOS_EXISTENTES) AS leitos_existentes,
    SUM(LEITOS_SUS) AS leitos_sus
FROM leitos_hospitalares
GROUP BY NO_BAIRRO
ORDER BY leitos_existentes DESC
LIMIT 10;


# 15. Municípios com maior percentual de leitos SUS
SELECT
    MUNICIPIO,
    SUM(LEITOS_EXISTENTES) AS leitos_existentes,
    SUM(LEITOS_SUS) AS leitos_sus,
    ROUND(
        SUM(LEITOS_SUS) * 100.0 /
        NULLIF(SUM(LEITOS_EXISTENTES), 0),
        2
    ) AS percentual_sus
FROM leitos_hospitalares
GROUP BY MUNICIPIO
HAVING SUM(LEITOS_EXISTENTES) > 0
ORDER BY percentual_sus DESC;


# 16. Municípios com maior quantidade de leitos não SUS
SELECT
    MUNICIPIO,
    SUM(LEITOS_EXISTENTES) AS leitos_existentes,
    SUM(LEITOS_SUS) AS leitos_sus,
    SUM(LEITOS_EXISTENTES) - SUM(LEITOS_SUS) AS leitos_nao_sus
FROM leitos_hospitalares
GROUP BY MUNICIPIO
ORDER BY leitos_nao_sus DESC
LIMIT 10;


# 17. Resumo geral do projeto
SELECT
    COUNT(*) AS total_registros,
    SUM(LEITOS_EXISTENTES) AS total_leitos,
    SUM(LEITOS_SUS) AS total_leitos_sus,
    SUM(LEITOS_EXISTENTES) - SUM(LEITOS_SUS) AS total_leitos_nao_sus,
    ROUND(
        SUM(LEITOS_SUS) * 100.0 /
        NULLIF(SUM(LEITOS_EXISTENTES), 0),
        2
    ) AS percentual_sus
FROM leitos_hospitalares;

