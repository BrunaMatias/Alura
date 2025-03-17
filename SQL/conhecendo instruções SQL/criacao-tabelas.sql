CREATE TABLE tabelaclientes (
    ID_cliente INT PRIMARY KEY,
    nome_cliente VARCHAR(150),
    Infos_de_contato VARCHAR(250),
    Endereco_cliente VARCHAR(150)
);

CREATE TABLE tabelacategoria (
    ID_categoria INT PRIMARY KEY,
    nome_categoria VARCHAR(150),
    descricao_categoria TEXT
);

CREATE TABLE tabelaprodutos (
    ID_produto INT PRIMARY KEY,
    Nome_do_produto VARCHAR(150),
    Descricao TEXT,
    Categoria INT,
    Preco_de_compra DECIMAL(10,2),
    Unidade VARCHAR(50),
    Fornecedor INT, 
    Data_de_inclusao DATE,
    FOREIGN KEY (Categoria) REFERENCES tabelacategoria (ID_categoria),
    FOREIGN KEY (Fornecedor) REFERENCES tabelafornecedores (ID)
);

CREATE TABLE tabelapedidosgold(
  ID_gold INT PRIMARY KEY,
  Data_do_Pedido_gold DATE,
  Status_gold TEXT,
  Total_do_Pedido_gold REAL,
  Cliente_gold INT,
  data_de_envio_estimada_gold DATE,
  FOREIGN KEY (Cliente_gold) REFERENCES tabelapedidos(cliente)
);

CREATE TABLE tabelafuncionarios(	
  ID INT PRIMARY KEY,	
  Nome VARCHAR(100),
  Departamento VARCHAR(100),
  Salario FLOAT
);

DELETE FROM tabelafornecedores WHERE país_de_origem = 'Turquia';

DELETE FROM tabelafuncionarios WHERE salario < 4000;

CREATE TABLE tabelaprojetos(
    ID_projeto INT PRIMARY KEY,
    Nome_do_projeto VARCHAR(100),
    id_gerente INT,
    FOREIGN KEY (id_gerente) REFERENCES tabelafuncionarios(id)
 );

DROP TABLE tabelafuncionarios;