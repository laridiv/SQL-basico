CREATE TABLE tabelaclientes (
  ID_Cliente INT PRIMARY KEY,
  Nome_Cliente VARCHAR (250),
  Informacoes_de_Contato VARCHAR (250)
);

SELECT*FROM tabelaclientes;

ALTER TABLE tabelaclientes ADD Endereço_Cliente VARCHAR (250);
-- DROP TABLE tabelaclientes;

CREATE TABLE tabelacategorias (
  ID_Categoria INT PRIMARY KEY,
  Nome_Categoria VARCHAR (250),
  Descricao_Categoria TEXT
);


CREATE TABLE tabelaprodutos (
  ID_Produto INT PRIMARY KEY,
  Nome_do_Produto VARCHAR (250),
  Descrição TEXT,
  Categoria INT,
  Preco_de_Compra DECIMAL (10,2),
  Unidade Varchar (50),
  Fornecedor INT,
  Data_de_Inclusao DATE,
  FOREIGN KEY (Categoria) REFERENCES tabelacategorias (id_categoria),
  FOREIGN KEY (Fornecedor) REFERENCES tabelafornecedores (id)
  );
 
 
INSERT INTO tabelaclientes
(id_cliente,
nome_cliente,
informacoes_de_contato)
VALUES
('4', 'Ana Silva', 'ana.silva@email.com');

SELECT * FROM tabelaclientes;


INSERT INTO tabelaclientes
(id_cliente, nome_cliente, informacoes_de_contato)
VALUES
('22', 'João Santos', 'joao.santos@provedor.com'),
('23', 'Maria Fernandes', 'maria.fernandes@email.com'),
('24', 'Carlos Pereira', 'carlos.pereira@email.com'),
('25', 'Patricia Lima', 'patricia.lima@email.com'),
('26', 'Rodrigo Almeida', 'rodrigo.almeida@email.com'),
('27', 'Andrea Oliveira', 'andre.oliveira@email.com'),
('28', 'Isabela Rodrigues', 'isabela.rodrigues@email.com'),
('29', 'Ricardo Sousa', 'ricardo.sousa@email.com'),
('30', 'Luana Gomes', 'luana.gomes@email.com'),
('31', 'Juliano Costa', 'juliano.costa@email.com');


SELECT * FROM tabelaclientes;



CREATE TABLE tabelapedidosgold (
 ID_pedido_gold INT PRIMARY KEY,
 Data_Do_Pedido_gold DATE,
 Status_gold VARCHAR(50),
 Total_Do_Pedido_gold DECIMAL(10, 2),
 Cliente_gold INT,
 Data_De_Envio_Estimada_gold DATE,
 FOREIGN KEY (cliente_gold) REFERENCES tabelaclientes(id_cliente)
);



INSERT INTO tabelapedidosgold
    (ID_pedido_gold, 
     Data_Do_Pedido_gold, 
     Status_gold, 
     Total_Do_Pedido_gold, 
     Cliente_gold, 
     Data_De_Envio_Estimada_gold)
     
     
SELECT
    id,
    data_do_pedido,
    status,
    total_do_pedido,
    cliente,
    data_de_envio_estimada
FROM tabelapedidos
WHERE total_do_pedido >=400 ;


SELECT * FROM tabelapedidos WHERE total_do_pedido > 200;





SELECT * FROM tabelapedidos WHERE total_do_pedido >= 200 AND Status = 'Pendente';

SELECT * FROM tabelapedidos WHERE status = 'Pendente' OR status = 'Processando';

SELECT * FROM tabelapedidos WHERE NOT status = 'Pendente';

SELECT * FROM tabelapedidos WHERE data_de_envio_estimada BETWEEN '2023-08-01' AND '2023-09-01';


SELECT * FROM tabelapedidos WHERE data_de_envio_estimada BETWEEN '2023-08-01' AND '2023-09-01';


SELECT * FROM tabelaprodutos WHERE preco_de_compra BETWEEN 200 AND 600 ORDER BY fornecedor DESC;

SELECT * FROM tabelaprodutos;


SELECT informacoes_de_contato AS email_cliente FROM  tabelaclientes;


UPDATE tabelapedidos SET status = 'Enviado' WHERE status = 'Processando';

SELECT * FROM tabelapedidos;


UPDATE tabelaclientes SET informacoes_de_contato = 'j.santos@email.com', 
endereço_cliente = 'Rua dos paralelepipedos, 30 '
WHERE id_cliente = 2;
UPDATE tabelaclientes SET informacoes_de_contato = 'j.santos@email.com', 
endereço_cliente = 'Rua dos paralelepipedos, 30 '
WHERE id_cliente = 2;


SELECT * FROM tabelaclientes;

DELETE FROM tabelafornecedores WHERE pais_de_origem  = 'Turquia';

SELECT * FROM tabelafornecedores












