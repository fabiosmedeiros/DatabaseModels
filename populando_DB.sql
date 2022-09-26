-- Parcial

-- Populando Cliente
INSERT Cliente (Cpf, Nome, Email, Telefone, Endereco, DataCadastro) VALUES ('02255524451', 'Francisco Oliveira', 'foliveira123@gmail.com', '21999987766', 'Rua ABC, Bairro ERT. Centro', GETDATE());
INSERT Cliente (Cpf, Nome, Email, Telefone, Endereco, DataCadastro) VALUES ('45785635241', 'Luana Rodrigues da Concei��o', 'luarod@gmail.com', '21998567541', 'Rua Bar�o da Torre', GETDATE());
INSERT Cliente (Cpf, Nome, Email, Telefone, Endereco, DataCadastro) VALUES ('52265358745', 'Jo�o Nunes', 'jnunes@yahoo.com.br', '2199652487', 'Rua da Ajuda, 11', GETDATE());
--SELECT * FROM Cliente

-- Populando Veiculo
INSERT Veiculo (IdCliente, Marca, Modelo, Placa, DataCadastro) VALUES (1, 'Ford', 'KA', 'ADF9875', '20220502');
INSERT Veiculo (IdCliente, Marca, Modelo, Placa, DataCadastro) VALUES (2, 'GM', 'Corsa', 'RQD1986', '20220204');
INSERT Veiculo (IdCliente, Marca, Modelo, Placa, DataCadastro) VALUES (3, 'VW', 'Gol', 'OKD5768', '20220615');
--SELECT * FROM Veiculo

-- Populando Funcionario
INSERT Funcionario (Nome, Matricula, Especialidade, Endereco, DataCadastro) VALUES ('Jos� da Cunha', 'A4578', 'Geral', 'Rua do O, 10', '20200106');
INSERT Funcionario (Nome, Matricula, Especialidade, Endereco, DataCadastro) VALUES ('Fernando Dutra', 'A1247', 'El�trica', 'Avenida das Na��es, 1000', '20190509');
--SELECT * FROM Funcionario  

-- Populando ReferenciaServico
INSERT ReferenciaServico (Descricao, Valor) VALUES ('Troca Bateria', 50.00);
INSERT ReferenciaServico (Descricao, Valor) VALUES ('Ilumina��o Dianteira', 150.00);
INSERT ReferenciaServico (Descricao, Valor) VALUES ('Inje��o Eletr�nica', 250.00);
INSERT ReferenciaServico (Descricao, Valor) VALUES ('Ar-Condicionado', 200.00);
--SELECT * FROM ReferenciaServico

-- Populando OrdemServico
INSERT OrdemServico (IdVeiculo, IdFuncionario, IdReferenciaServico, Descricao, DataEmissao, DataConclusao, ValorTotalServico) 
VALUES (1, 1, 3, 'Inje��o com problema', GETDATE(), GETDATE(), 250.00);
INSERT OrdemServico (IdVeiculo, IdFuncionario, IdReferenciaServico, Descricao, DataEmissao, DataConclusao, ValorTotalServico) 
VALUES (2, 2, 1, 'Bateria descarregada', GETDATE(), GETDATE(), 50.00);
--SELECT * FROM OrdemServico

-- Populando Peca
INSERT Peca (Marca, Modelo, ValorUnitario) VALUES ('Moura', 'M143', 120.00);
INSERT Peca (Marca, Modelo, ValorUnitario) VALUES ('XDRE', 'AA7', 80.00);
--SELECT * FROM Peca

-- Populando PecaServico
INSERT PecaServico (IdOrdemServico, IdPeca, Quantidade, Valor) VALUES (1, 1, 1, 120.00);
INSERT PecaServico (IdOrdemServico, IdPeca, Quantidade, Valor) VALUES (2, 2, 1, 80.00);
--SELECT * FROM PecaServico
