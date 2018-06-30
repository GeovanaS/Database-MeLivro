USE MeLivro;

-- inserções na tabela generica 'PESSOA'
INSERT INTO PESSOA(CPF, NOME, EMAIL, SENHA,ADMIN)  
VALUES ('041.868.524-07', 'Geovana', 'gsdsilveira@inf.ufpel.edu.br', 'hfgdshj', '1'),
('021.274.785-44', 'Pedro Roque', 'pedromroque@gmail.com', '66666', '1'),
('081.924.648-93', 'Vitor', 'vitorgosmao@gmail.com', 'xscvb', '1'),
('019.372.432-53', 'Ana', 'marilza@inf.ufpel.edu.br', '567eih', '1'),
('019.872.232-50', 'Teste', 'mme.ufpel.edu.br', '1234', '0'),
('052.512.331-25', 'Carlos', 'carlos@hotmail.com', '12345677', '0'),
('013.772.232-57', 'Paulo', 'paulo@inf.ufpel.edu.br', '1234', '0'),
('011.812.331-28', 'Joaquim', 'Joaquim@hotmail.com', '1256', '0');

-- inserções na tabela 'USUARIO', que referencia o atributo cpf da tabela 'PESSOA' como chave estrangeira
INSERT INTO USUARIO(cidade, endereco, telefone, sexo, cpf) 
VALUES ('Pelotas', 'Visconde da Graça 457', '991876544', 'F', '041.868.524-07'),
('Pelotas', 'Goncalves Chaves 1001', '32221525', 'M', '021.274.785-44'),
('Pelotas', 'Goncalves Chaves 1002', '32221525', 'M', '081.924.648-93'),
('Pelotas', 'Goncalves Chaves 1003', '32821525', 'F', '019.372.432-53'),
('Pelotas', 'Goncalves Chaves 1004', '32221525', 'F', '019.872.232-50'),
('Pelotas', 'Quinze de novembro 2009', '97567867', 'M', '052.512.331-25'),
('Pelotas', 'Quinze de novembro 2100', '91276888', 'M', '013.772.232-57'),
('Pelotas', 'Gomes Carneiro 4080', '992456765', 'M', '011.812.331-28');


-- inserções na tabela generica 'PRODUTO'
INSERT INTO PRODUTO(CODPROD,TIPO_PRODUTO,DESCRICAO, IMAGEM, PRECO, TITULO) VALUES 
('1','Livro','Livro se encontra em excelente estado de conservação.','heuser.jpg', '35.50', 'Projeto de Banco de Dados'),
('2','Livro', 'Livro em ótimo estado de conservação. Sem sinais de uso e desgaste.', 'url2', '22.50', 'Sistemas de Bancos de Dados'),
('3','Livro','Brochura. Capa, lombada e miolo bem conservados.', 'url3', '45.00', 'A First Course in Database Systems'),
('4','Paper','Artigo sobre banco de dados', 'urlArtigo1', '20.50', 'A formal model of views for object oriented database systems'),
('5','Paper','Artigo de medicina', 'urlArtigo2', '15.50', 'Analise de DNA em medicina legal, banco de dados e controle de qualidade'),
('6','Paper','Artigo musical', 'urlArtigo2', '10.50', 'O Centro de Documentação Musical da UFPel no horizonte da multidisciplinaridade'),
('7','Paper','Artigo sobre algoritmo de reconhecimento de objeto','urlArtigo2', '42.00', 'Distinctive image features from scale-invariant keypoints.'),
('8','Revista','Revista cientifica em ótimo estado de conservação', 'caminhodoArquivo', '42.50', 'Nature'),
('9','Revista','Revista em ótimo estado.', 'urlminha', '35.50', 'National Geographic'),
('10','Revista','Revista seminova em otimas condições', 'urlminha', '80.50', 'IEEE/ACM Transactions on Networking'),
('11','Revista','Revista em perfeito estado', 'urlminha', '96.50', 'ACM Computing Reviews'),
('12','Livro','Em bom estado de conservação e com as páginas conservadas', 'url3', '27.90', 'A Revolução dos Bichos'),
('13','Livro','Bom estado de conservaçao mas a lombada superior e inferior danificadas', 'url3', '25.45', 'Alice no País das Maravilhas'),
('14','Livro','322pag. bom estado e edição de bolso.', 'url3', '49.90', 'O Andar do Bêbado'),
('15','Livro','Livro usado em perfeito estado', 'url3', '27.90', 'O Conto da Aia'),
('16','Livro','Capa com leves marcas do manuseio e as paginas em bom estado de conservação', 'url3', '24.20', 'Uma Breve História do Tempo'),
('17','Livro','Capa dura com desgastes. meio desbotando as letras, marcas nas bordas.s.', 'url3', '87.90', 'Crítica da Razão Pura'),
('18','Livro','Bom estado de capa e miolo um pouco amarelado.', 'url3', '60.20', 'Jogo Perigoso'),
('19','Livro','Livro em bom estado de conservação.', 'url2', '145.51', 'Sistemas de Bancos de Dados'),
('20','Revista','Revista cientifica em bom estado.', 'url2', '64.45', 'Icarus'),
('21','Revista','Em bom estado de convervação.', 'url2', '75.99', 'Physical Review'),
('22','Paper','Artigo que discute a complexidade no estudo da intersetorialidade.', 'url2', '89.59', 'The complexity of intersectionality');


-- inserções na tabela 'LIVRO', que contem como chave estrangeira o atributo 'CODPROD' que referencia a tabela 'PRODUTO'
INSERT INTO LIVRO(AUTOR, CODPROD, EDICAO, ISBN)
VALUES ('Heuser', '1', '4', '9788577803828'),
('Navathe', '2', '6', '9788579360855'),
('Ullaman', '3', '3', '978-0136006374'),
('George Orwell', '12', '1', '0-452-28424-4'),
('Lewis Carroll', '13', '1', '8578671635'),
('Leonard Mlodinow', '14', '1', '8537807672'),
('Margaret Atwood', '15', '1', ' 8580576466'),
('Stephen Hawking', '16', '1', ' 8580576466'),
('Immanuel Kant', '17', '1', '8532643248'),
('Stephen King', '18', '1', '8573022310'),
('Navathe', '19', '4', '9788588639171');

-- inserções na tabela 'REVISTA', que contem como chave estrangeira o atributo 'CODPROD' que referencia a tabela 'PRODUTO'
INSERT INTO REVISTA(ISSN, EDITORA, CODPROD)
VALUES ('0028-0836', 'Nature Publishing Group', '8'),
('1044-6613', 'Abril', '9'),
('1063-6692', 'IEEE/ACM', '10'),
('1530-6586', 'ACM', '11'),
('0019-1035', 'Varig', '20'),
('1098-0121', 'APS', '21')
;

-- inserções na tabela 'PAPER', que contem como chave estrangeira o atributo 'CODPROD' que referencia a tabela 'PRODUTO'
INSERT INTO PAPER(AUTOR, COAUTOR, AREA_CONHECIMENTO,ANO_PUBLICACAO,INSTITUICAO,CODPROD)
VALUES ('Giovanna Guerrini', 'Elisa Bertino','Exatas', '1997', 'Universita di Genova', '4'),
('Edna Iwamura', 'Daniel Munoz','Saúde', '2003', 'USP', '5'),
('Fábio Cerqueira', 'Francisca Nogueira Micheolon','Humanas', '2008', 'UFPEL', '6'),
('David Lowe', '','Exatas', '2004', 'UBC', '7'),
('Leslie McCall', '','Humanas', '2005', 'UCP', '22');


-- Inserções na tabela 'ANUNCIO'
INSERT INTO ANUNCIO(CODANUNCIO,ATIVO,DATA_PUBLICACAO,CPF,CODPROD) 
VALUES('0','0','2018-05-12' ,'041.868.524-07','9'),
('2','0','2018-02-12' ,'021.274.785-44','3'),
('3','1','2018-04-25',  '019.872.232-50','4'),
('4','0','2018-07-27' ,'052.512.331-25','5'),
('5','1','2018-05-31' ,'019.372.432-53','6'),
('6','0','2018-08-26' ,'021.274.785-44','7'),
('7','1','2018-06-20' ,'011.812.331-28','15');

-- Inserções na tabela 'PEDIDO'
INSERT INTO PEDIDO(CODPEDIDO,STATUS_PED,DATA_PEDIDO,CPF) 
VALUES('0','0','2018-06-20','041.868.524-07'),
('2','0','2018-03-17','019.872.232-50'),
('3','1','2018-02-12','052.512.331-25'),
('4','0','2018-04-29','021.274.785-44'),
('5','0','2018-05-07','041.868.524-07'),
('6','0','2017-02-15','013.772.232-57'),
('7','1','2017-08-30','081.924.648-93');


-- Inserções na tabela do 'PAGAMENTO'
INSERT INTO PAGAMENTO(CODPAG,METODO_PAG,VALOR,CONCRETIZADO,CODPROD)
VALUES
('1','Boleto','80.50',0,'10'),
('2','PayPal','20.50',1,'4'),
('3','Cartão','35.50',0,'1'),
('4','Transferência','27.90',0,'15'),
('5','PayPal','75.99',1,'21') ;

-- Inserções na tabela 'VENDA'
INSERT INTO VENDA(CODVENDA,VALOR_VENDA,DATA_VENDA,CPF,CODPAG) 
VALUES ('1','80.59','2018-05-07','019.372.432-53','1'),
('2','20.50','2018-07-29','019.872.232-50', '2'),
('3','35.50','2018-03-18','021.274.785-44','3'),
('4','27.90','2018-06-29','041.868.524-07','4'),
('5','75.99','2018-03-15','021.274.785-44','5');


-- Inserções na tabela do relacionameto entre as tabelas 'VENDA' e 'PEDIDO'
INSERT INTO VENDA_PEDIDO(CODPEDIDO,CODVENDA) 
VALUES ('2','3'),
('5','5'),
('7','1'),
('6','2');


-- Inserções na tabela do relacionamento entre as tabelas 'PRODUTO' e 'PEDIDO'
INSERT INTO PRODUTO_PEDIDO(CODPROD,CODPEDIDO) 
VALUES('15','5'),
('2','1'),
('4','2'),
('8','3'),
('9','4'),
('5','6'),
('14','7');


-- Inserções na tabela 'AVALIACAO'
INSERT INTO AVALIACAO(CODAVALIACAO,NOTA,COMENTARIO,CPF) 
VALUES ('1', 10, 'Excelente vendedora', '019.372.432-53'),
('2', 8, 'Nao obtive nenhum problema durante o processo de compra do produto', '041.868.524-07'),
('3', 2, 'Paguei o produto mas nao o recebi ainda', '011.812.331-28'),
('4', 9, 'Confiavel.', '021.274.785-44'),
('5', 5, 'Descrição do produto não correspondia com a realidade', '013.772.232-57');
