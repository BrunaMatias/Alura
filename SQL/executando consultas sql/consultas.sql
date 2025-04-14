-- 1. Consultas com WHERE e ORDER BY
SELECT * FROM HistoricoEmprego 
WHERE datatermino IS NULL
ORDER BY salario DESC
LIMIT 5;

-- 2. Filtros com LIKE
SELECT * FROM Treinamento
WHERE curso LIKE 'O poder %';

-- 3. IN
SELECT * FROM HistoricoEmprego
WHERE cargo IN ('Oftalmologista', 'Professor') AND datatermino IS NULL;

-- 4. Agregações simples
SELECT mes, MAX(faturamento_bruto) FROM faturamento;

SELECT SUM(numero_novos_clientes) AS 'Novos clientes 2023' FROM faturamento
WHERE mes LIKE '%2023';

SELECT COUNT(*) FROM Licencas
WHERE tipolicenca = 'férias';

-- 5. Agrupamentos e contagens
SELECT parentesco, COUNT(*) FROM Dependentes
GROUP BY parentesco;

SELECT instituicao, COUNT(curso) FROM Treinamento
GROUP BY instituicao;

-- 6. Agrupamento com HAVING
SELECT instituicao, COUNT(curso) FROM Treinamento
GROUP BY instituicao
HAVING COUNT(curso) > 2;

-- 7. Concatenação e funções de texto
SELECT LOWER('A pessoa de nome: ' || nome || ' de CPF ' || cpf || ' possui o seguinte endereço: ' || endereco) AS texto
FROM Colaboradores;

-- 8. Funções do tipo DATE
SELECT id_colaborador, JULIANDAY(datatermino) - JULIANDAY(datacontratacao)
FROM HistoricoEmprego
WHERE datatermino IS NOT NULL;

SELECT id_colaborador, STRFTIME('%Y/%m', datainicio) FROM Licencas;

-- 9. Funções matemáticas básicas
SELECT AVG(faturamento_bruto), ROUND(AVG(faturamento_bruto), 2) FROM faturamento;

SELECT CEIL(faturamento_bruto), CEIL(faturamento_bruto) FROM faturamento;

SELECT FLOOR(faturamento_bruto), FLOOR(faturamento_bruto) FROM faturamento;

-- 10. Concatenação com média formatada
SELECT ('O faturamento médio bruto foi: R$' || CAST(ROUND(AVG(faturamento_bruto), 2) AS TEXT))
FROM faturamento;

-- 11. CASE para categorização
SELECT id_colaborador, cargo, salario,
  CASE
    WHEN salario < 3000 THEN 'Baixo'
    WHEN salario BETWEEN 3000 AND 5000 THEN 'Médio'
    ELSE 'Alto'
  END AS categoria_salario
FROM HistoricoEmprego;

-- 12. Alteração de nome da tabela
ALTER TABLE HistoricoEmprego RENAME TO CargoColaboradores;
