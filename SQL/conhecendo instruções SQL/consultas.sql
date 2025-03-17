SELECT * FROM tabelaclientes;
SELECT * FROM tabelaprodutos;
SELECT * FROM tabelaclientes;
SELECT * FROM tabelafornecedores;
SELECT * FROM tabelaprojetos;

SELECT * FROM tabelapedidos WHERE Status = 'Pendente' OR 'Processando';

SELECT infos_de_contato AS email_cliente FROM tabelaclientes;

SELECT * FROM tabelafuncionarios WHERE departamento = 'Vendas';

SELECT * FROM tabelafuncionarios WHERE salario > 5000;

SELECT DISTINCT Departamento FROM tabelafuncionarios;

SELECT nome, salario FROM tabelafuncionarios WHERE departamento = 'Vendas' AND salario > 6000;

SELECT * FROM tabelaprojetos WHERE id_gerente = 3;