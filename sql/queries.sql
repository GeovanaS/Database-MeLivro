USE MeLivro;

--  SELECT * FROM PRODUTO
--   WHERE PRODUTO.TIPO_PRODUTO = "Livro";

--  SELECT * FROM PRODUTO
--   WHERE PRODUTO.TIPO_PRODUTO = "Paper";
 
--  SELECT * FROM PRODUTO
--   WHERE PRODUTO.TIPO_PRODUTO = "Revista";

--  Retorna o nome da pessoa, o titulo do produto, o tipo de produto e o preco do produto pedido pelo usuario
--  SELECT NOME,TITULO,TIPO_PRODUTO,PRECO
--   FROM ((PESSOA NATURAL JOIN PRODUTO_PEDIDO)NATURAL JOIN PRODUTO)
--   WHERE (PRODUTO.CODPROD = PRODUTO_PEDIDO.CODPROD);

--  Retorna o nome, o cpf e o titulo do produto de todas as pessoas que realizaram uma venda no dia 7 do mês de maio de 2018
--  SELECT NOME,PESSOA.CPF,TITULO
--   FROM (((PESSOA NATURAL JOIN VENDA) NATURAL JOIN PAGAMENTO) NATURAL JOIN PRODUTO)
--   WHERE DATA_VENDA = '2018-05-07' AND PESSOA.CPF = VENDA.CPF;

-- Retorna os nomes de todas as pessoas que não fizeram nenhuma venda
--  SELECT NOME 
--   FROM PESSOA U
--   WHERE NOT EXISTS(SELECT * FROM VENDA V WHERE U.CPF = V.CPF);
     
-- Seleciona ordenando por código do pedido o nome da pessoa que solicitou o produto, o numero do seu cpf e o titulo deste produto
--  SELECT DISTINCT PEDIDO.CODPEDIDO,PESSOA.CPF,NOME,TITULO
--   FROM PEDIDO,PESSOA,PRODUTO
--   ORDER BY CODPEDIDO;     

-- Retorna os nomes de todas as pessoas que não fizeram nenhum pedido
--  SELECT NOME 
--  FROM PESSOA U
--  WHERE NOT EXISTS(SELECT * FROM PEDIDO P WHERE U.CPF = P.CPF);

-- Retorna o titulo e a edicao de todos os livros do autor 'Navathe'
-- SELECT TITULO,EDICAO
--  FROM PRODUTO, LIVRO
--  WHERE AUTOR = 'Navathe' and LIVRO.CODPROD=PRODUTO.CODPROD;

-- Retorna o nome da pessoa que realizou o pedido,o valor da venda e a data da venda  
-- SELECT NOME,VALOR_VENDA,DATA_VENDA FROM ((PESSOA NATURAL JOIN VENDA_PEDIDO)NATURAL JOIN VENDA)
--  WHERE (VENDA.CODVENDA = VENDA_PEDIDO.CODVENDA);
 
-- Retorna o nome da pessoa, o titulo do produto e o status do anúncio cadastrado
--  SELECT NOME,TITULO,ATIVO 
--   FROM ANUNCIO,PRODUTO,PESSOA
--   WHERE ANUNCIO.CODPROD=PRODUTO.CODPROD;
 
 -- Retorna o titulo do produto que em sua venda não teve seu pagamento concretizado
 -- SELECT TITULO 
 --  FROM (PRODUTO NATURAL JOIN PAGAMENTO)
 --  WHERE CONCRETIZADO = '0';
 
-- Retorna a quantidade de pagamentos realizados atraves do metodo 'PayPal'
--  SELECT COUNT(*)
--  FROM PAGAMENTO
--   WHERE METODO_PAG='PayPal';
  
-- Retorna o nome da pessoa e nota recebida de todos os vendedores que tiveram nota acima de sete na avaliação recebida
--  SELECT NOME,NOTA
--  FROM PESSOA,AVALIACAO
--  WHERE PESSOA.CPF=AVALIACAO.CPF
--   GROUP BY PESSOA.CPF
--   HAVING AVG(NOTA)>7;

-- Retorna a media de todas as avaliações realizadas pelos usuarios
--  SELECT AVG(NOTA)
--  FROM AVALIACAO;
    
-- Retorna todas os pedidos que tiveram seu status como efetuado
--  SELECT TITULO,NOME,PESSOA.CPF
--  FROM ((PRODUTO NATURAL JOIN PEDIDO)NATURAL JOIN PESSOA)
--  WHERE STATUS_PED = '1';
 
-- Retorna o titulo do produto e o valor da venda de todas os anuncios que já não estão mais ativos no sistema
--  SELECT TITULO,VALOR_VENDA
--  FROM ((PRODUTO NATURAL JOIN VENDA) NATURAL JOIN ANUNCIO)
--  WHERE ATIVO = '0';
  
-- Retorna o nome e o email de todos os administradores do sistema
--  SELECT NOME,EMAIL 
--  FROM PESSOA 
--  WHERE ADMIN = '1';
  
--  Retorna o cpf do comprador e o cpf do vendedor do produto
--  SELECT DISTINCT PEDIDO.CPF,ANUNCIO.CPF
--  FROM PEDIDO,ANUNCIO,PAGAMENTO
--  WHERE STATUS_PED = '1' AND ATIVO = '0' AND CONCRETIZADO = '1'; 
 

-- SELECT * FROM USUARIO
--  INNER JOIN VENDA
--   ON (USUARIO.CPF = VENDA.CPF);

-- SELECT NOME,VALOR_VENDA,CODPAG
--  FROM ((PESSOA NATURAL JOIN VENDA) NATURAL JOIN USUARIO)
--  WHERE (USUARIO.CPF = VENDA.CPF);
  
-- SELECT * FROM (PESSOA NATURAL JOIN USUARIO)
--  WHERE (USUARIO.CPF = PESSOA.CPF);
  
-- SELECT DISTINCT * FROM PAGAMENTO
--   INNER JOIN VENDA
--   ON (PAGAMENTO.CODPAG = VENDA.CODPAG);

--  SELECT NOME,CPF,EMAIL,SENHA
--    FROM PESSOA;

--  SELECT DISTINCT CODPEDIDO,PEDIDO.CPF,TITULO,VALOR_VENDA
--   FROM PEDIDO,PRODUTO,VENDA
--   WHERE TIPO_PRODUTO = "Livro"
--   ORDER BY CODVENDA;
       
       
-- SELECT PESSOA.NOME,PESSOA.EMAIL,USUARIO.TELEFONE,USUARIO.CIDADE,USUARIO.ENDERECO FROM USUARIO
--  INNER JOIN PESSOA ON PESSOA.CPF = USUARIO.CPF;      
       
-- SELECT DISTINCT PESSOA.*, USUARIO.* FROM PESSOA CROSS JOIN USUARIO;
       
-- SELECT USUARIO.* FROM USUARIO
-- LEFT JOIN PESSOA ON PESSOA.CPF=USUARIO.CPF;  
                 
-- SET SQL_SAFE_UPDATES=0;
-- UPDATE PRODUTO 
-- SET PRECO = '25.0' WHERE PRECO='35.50';
              
-- DELETE FROM PRODUTO
--  WHERE CODPROD IN
--  (SELECT CODPROD FROM LIVRO
--   WHERE AUTOR = 'Navathe');

-- Mostra os dado inseridos nas tabelas 
-- SELECT *FROM PESSOA;
-- SELECT *FROM USUARIO;
-- SELECT *FROM PRODUTO;
-- SELECT *FROM LIVRO;
-- SELECT *FROM REVISTA;
-- SELECT *FROM PAPER;
-- SELECT *FROM ANUNCIO;
-- SELECT *FROM PEDIDO;
-- SELECT *FROM VENDA;
-- SELECT *FROM PRODUTO_PEDIDO;
-- SELECT *FROM VENDA_PEDIDO;
-- SELECT *FROM PAGAMENTO;
-- SELECT *FROM AVALIACAO;
--  SELECT *FROM ARQUIVO;