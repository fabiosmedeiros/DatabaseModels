-- Parcial

USE DbFundamentals1;

GO

CREATE TABLE Cliente (
 IdCliente INT PRIMARY KEY IDENTITY NOT NULL,
 Cpf VARCHAR(11) NOT NULL,
 Nome VARCHAR(100) NOT NULL,
 Email VARCHAR(100),
 Telefone VARCHAR (15),
 Endereco VARCHAR(100),
 DataCadastro DATETIME
);

CREATE TABLE Veiculo (
 IdVeiculo INT PRIMARY KEY IDENTITY NOT NULL,
 IdCliente INT NOT NULL,
 Marca VARCHAR(50) NOT NULL,
 Modelo VARCHAR(50) NOT NULL,
 Placa VARCHAR(20) NOT NULL,
 DataCadastro DATETIME
);

ALTER TABLE Veiculo ADD CONSTRAINT VeiculoCliente_FK FOREIGN KEY (IdCliente) REFERENCES Cliente (IdCliente)

CREATE TABLE Funcionario (
 IdFuncionario INT PRIMARY KEY IDENTITY NOT NULL,
 Nome VARCHAR(100),
 Matricula VARCHAR(10),
 Especialidade VARCHAR(50),
 Endereco VARCHAR(100),
 DataCadastro DATETIME
);

CREATE TABLE ReferenciaServico (
 IdReferenciaServico INT PRIMARY KEY IDENTITY NOT NULL,
 Descricao VARCHAR(1000),
 Valor DECIMAL (6,2)
 );

CREATE TABLE OrdemServico (
 IdOrdemServico INT PRIMARY KEY IDENTITY NOT NULL,
 IdVeiculo INT NOT NULL,
 IdFuncionario INT NOT NULL,
 IdReferenciaServico INT NOT NULL,
 Descricao VARCHAR(100),
 DataEmissao DATETIME,
 DataConclusao DATETIME,
 ValorTotalServico DECIMAL(6,2)
);

ALTER TABLE OrdemServico ADD CONSTRAINT OrdemServicoVeiculo_FK FOREIGN KEY (IdVeiculo) REFERENCES Veiculo (IdVeiculo)
ALTER TABLE OrdemServico ADD CONSTRAINT OrdemServicoFuncionario_FK FOREIGN KEY (IdFuncionario) REFERENCES Funcionario (IdFuncionario)
ALTER TABLE OrdemServico ADD CONSTRAINT OrdemServicoReferenciaServ_FK FOREIGN KEY (IdReferenciaServico) REFERENCES ReferenciaServico (IdReferenciaServico)

CREATE TABLE Peca (
 IdPeca INT PRIMARY KEY IDENTITY NOT NULL,
 Marca VARCHAR(50) NOT NULL,
 Modelo VARCHAR(50) NOT NULL,
 ValorUnitario DECIMAL(6,2)
);

CREATE TABLE PecaServico (
 IdPecaServico INT PRIMARY KEY IDENTITY NOT NULL,
 IdOrdemServico INT NOT NULL,
 IdPeca INT NOT NULL,
 Quantidade INT,
 Valor DECIMAL(6,2)
);

ALTER TABLE PecaServico ADD CONSTRAINT PecaServicoPEca_FK FOREIGN KEY (IdPeca) REFERENCES Peca (IdPeca)
ALTER TABLE PecaServico ADD CONSTRAINT PecaServicoOS_FK FOREIGN KEY (IdOrdemServico) REFERENCES OrdemServico (IdOrdemServico)

-- Dropando Tabelas
--DROP TABLE PecaServico
--DROP TABLE Peca
--DROP TABLE OrdemServico
--DROP TABLE ReferenciaServico
--DROP TABLE Funcionario
--DROP TABLE Veiculo
--DROP TABLE Cliente
