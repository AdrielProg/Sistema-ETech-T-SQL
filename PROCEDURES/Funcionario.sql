CREATE OR ALTER PROCEDURE [dbo].[SP_InserirNovoFuncionario]
	@IdCargo INT,
	@NomeCompleto VARCHAR(100),
	@Email VARCHAR(100),
	@CPF CHAR(14)
AS 
	/*
		Documentação
		Arquivo Fonte.....: Funcionario.sql
		Objetivo..........: Realiza o cadastro de um novo funcionario no Sistema
		Autor.............: Adriel Alexander de Sousa
		Data..............: 15/05/2024
		Ex................: BEGIN TRAN
							
							DECLARE @RET INT,
									@DATA_INIT DATETIME = GETDATE()
							
							EXEC  [dbo].[SP_RelatorioFuncionariosAtivos]

							EXEC @RET = [dbo].[SP_InserirNovoFuncionario]1, 'John Luiz', 'JohnLuiz@email.com', '481.852.452-55'
							
							SELECT @RET,
								   DATEDIFF(MILLISECOND, @DATA_INIT, GETDATE())

							EXEC  [dbo].[SP_RelatorioFuncionariosAtivos]

							ROLLBACK TRAN 
		Retorno...........: 0 - Sucesso
						    1 - Cargo não se encontra no sistema 
							2 - Formato do CPF para cadastro está incorreto
							3 - CPF já cadastrado
							4 - Email já cadastrado 
							5 - Erro ao inserir novo registro de Funcionario 

	*/
	BEGIN
		--Declaracao de variáveis 
		DECLARE @DataContratação DATE = GETDATE(),
				@ValidacaoCPF BIT = 0

		--verificar se o idcargo está cadastrado no banco 
		IF NOT EXISTS (
						SELECT TOP 1 1
								FROM [dbo].[Cargo] WITH(NOLOCK)
								WHERE Id = @IdCargo
					  )
			BEGIN
				RETURN 1
			END

		--valida o formato do CPF passado na execução do procedimento armazenado 
		IF @ValidacaoCPF <> ( SELECT [dbo].[FUNC_ValidaFormatoCPF](@CPF))
			BEGIN
				RETURN 2
			END
		
		--verifica se o cpf para cadastro de funcionário ja existe no sistema
		IF EXISTS (
					SELECT TOP 1 1
							FROM [dbo].[Funcionario] WITH (NOLOCK)
							WHERE CPF = @CPF
				   ) 
			BEGIN
				RETURN 3
			END
		--Verifica se o Email existe no sistema do banco 
		IF EXISTS (
					SELECT TOP 1 1
							FROM [dbo].[Funcionario] WITH (NOLOCK)
							WHERE Email = @Email
				   ) 
			BEGIN
				RETURN 4
			END

		INSERT INTO [dbo].[Funcionario] (IdCargo, Nome, Email, CPF, DataContratacao) 
			VALUES						(@IdCargo, @NomeCompleto, @Email, @CPF, @DataContratação)

		IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
			RETURN 5
	
		RETURN 0
	END
GO

CREATE OR ALTER PROCEDURE [dbo].[SP_AtualizarRegistroFuncionario]
	@IdFuncionario INT,
	@IdCargo INT = NULL,
	@NomeCompleto VARCHAR(100) = NULL,
	@Email VARCHAR(100) = NULL,
	@CPF CHAR(14) = NULL
AS 
	/*
		Documentação
		Arquivo Fonte.....: Funcionario.sql
		Objetivo..........: Realiza a atualização do cadastro de um funcionario existente no sistema 
							preenchendo apenas as variáveis que deverão ser utilizadas
		Autor.............: Adriel Alexander de Sousa
		Data..............: 15/05/2024
		Ex................: BEGIN TRAN
							
							DECLARE @RET INT,
									@DATA_INIT DATETIME = GETDATE()
							
							EXEC  [dbo].[SP_RelatorioFuncionariosAtivos]

							EXEC @RET = [dbo].[SP_AtualizarRegistroFuncionario]1, null, 'John Luiz', 'JohnLuiz@email.com', '481.852.452-55'
							
							SELECT @RET,
								   DATEDIFF(MILLISECOND, @DATA_INIT, GETDATE())

							EXEC  [dbo].[SP_RelatorioFuncionariosAtivos]			   
				
							ROLLBACK TRAN 
		Retorno...........: 0 - Sucesso
						    1 - Cargo não se encontra no sistema 
							2 - Formato do CPF para cadastro está incorreto
							3 - CPF já cadastrado
							4 - Email já cadastrado 

	*/
	BEGIN
		--Declaracao de variáveis 
		DECLARE @DataContratação DATE = GETDATE(),
				@ValidacaoCPF BIT = 0


		--valida o formato do CPF passado na execução do procedimento armazenado 
		IF @ValidacaoCPF <> ( SELECT [dbo].[FUNC_ValidaFormatoCPF](@CPF))
			BEGIN
				RETURN 2
			END
		
		--verifica se o cpf para cadastro de funcionário ja existe no sistema
		IF EXISTS (
					SELECT TOP 1 1
							FROM [dbo].[Funcionario] WITH (NOLOCK)
							WHERE CPF = @CPF
				   ) 
			BEGIN
				RETURN 3
			END

		--Verifica se o Email existe no sistema do banco 
		IF EXISTS (
					SELECT TOP 1 1
							FROM [dbo].[Funcionario] WITH (NOLOCK)
							WHERE Email = @Email
				   ) 
			BEGIN
				RETURN 4
			END

		--realização do update dos campos que foram passados como parametro
		UPDATE [dbo].[Funcionario]
			SET IdCargo = ISNULL(@IdCargo, IdCargo),
				Nome = ISNULL(@NomeCompleto, Nome),
				Email = ISNULL (@Email, Email),
				CPF = ISNULL (@CPF, CPF)
			WHERE Id = @IdFuncionario
	   --verificação de Erros
	   IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
			RETURN 5
	
	   RETURN 0
	END
GO


CREATE OR ALTER PROCEDURE [dbo].[RealizarDemissaoFuncionario]
	@IdFuncionario INT
AS 
	/*
		Documentação
		Arquivo Fonte.....: Funcionario.sql
		Objetivo..........: Realiza o cadastro de um novo funcionario no Sistema
		Autor.............: Adriel Alexander de Sousa
		Data..............: 15/05/2024
		Ex................: BEGIN TRAN
							
							DECLARE @RET INT,
									@DATA_INIT DATETIME = GETDATE()

							EXEC  [dbo].[SP_RelatorioFuncionariosAtivos]
							EXEC [dbo].[SP_RelatorioFuncionariosDemitidos]

							EXEC @RET = [dbo].[RealizarDemissaoFuncionario] 1
							
							SELECT @RET,
								   DATEDIFF(MILLISECOND, @DATA_INIT, GETDATE())

							EXEC  [dbo].[SP_RelatorioFuncionariosAtivos]
							EXEC [dbo].[SP_RelatorioFuncionariosDemitidos]
								   				
							ROLLBACK TRAN 
		Retorno...........: 0 - Sucesso
						    1 - Funcionario não existe no sistema - Cargo não se encontra no sistema 
							2 - Erro ao atualizar registro de funcionario 
	*/
	BEGIN
		
		--Declaracao de variáveis 
		DECLARE @DataDemissao DATE = GETDATE()

		--verifia se o funcionario existe antes de preencher a data de demissao do mesmo 
		IF NOT EXISTS (
						SELECT TOP 1 1
								FROM [dbo].[Funcionario] WITH(NOLOCK)
								WHERE Id = @IdFuncionario
					  )
			BEGIN 
				RETURN 1
			END
		--realiza o incremento da data de demissão na tabela de Funcionarios
		UPDATE [dbo].[Funcionario]
			SET DataRescisao = @DataDemissao
			WHERE Id = @IdFuncionario
		
		--Verifica se ocorreu algum erro ao fazer o UPDATE
		IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
			BEGIN
				RETURN 2
			END
		RETURN 0
	END
GO


CREATE OR ALTER PROCEDURE [dbo].[SP_RelatorioFuncionariosAtivos]
AS 
    /*
		Documentação
		Arquivo Fonte.....: Funcionario.sql
		Objetivo..........: Realiza o cadastro de um novo funcionario no Sistema
		Autor.............: Adriel Alexander de Sousa
		Data..............: 15/05/2024
		Ex................: BEGIN TRAN
							
							DECLARE @RET INT,
									@DATA_INIT DATETIME = GETDATE()
							SELECT TOP 20 *  
								FROM [dbo].[Funcionario] WITH(NOLOCK)

							EXEC  [dbo].[SP_RelatorioFuncionariosAtivos]
							
							SELECT DATEDIFF(MILLISECOND, @DATA_INIT, GETDATE())
   */
   BEGIN
		--Consulta no banco para registros de funcionário que não possuem data de recisao
		SELECT  f.Id,
				C.nome AS Cargo,
				C.Salario,
				f.Nome,
				f.Email,
				f.CPF, 
				f.DataContratacao
			FROM [dbo].[Funcionario] f WITH (NOLOCK)
				INNER JOIN [dbo].[Cargo] c WITH (NOLOCK)
					ON c.Id = f.IdCargo
			WHERE f.DataRescisao IS NULL
   END
								   

GO
								   
CREATE OR ALTER PROCEDURE [dbo].[SP_RelatorioFuncionariosDemitidos]
AS 
    /*
		Documentação
		Arquivo Fonte.....: Funcionario.sql
		Objetivo..........: Realiza o cadastro de um novo funcionario no Sistema
		Autor.............: Adriel Alexander de Sousa
		Data..............: 15/05/2024
		Ex................: BEGIN TRAN
							
							DECLARE @DATA_INIT DATETIME = GETDATE()
							
							EXEC [dbo].[SP_RelatorioFuncionariosDemitidos]

							SELECT DATEDIFF(MILLISECOND, @DATA_INIT, GETDATE())
   */
   BEGIN
		--Consulta no banco para registros de funcionário que possuem data de recisao
		SELECT  f.Id,
				C.nome AS Cargo,
				C.Salario,
				f.Nome,
				f.Email,
				f.CPF, 
				f.DataContratacao AS "Data Contratação",
				f.DataRescisao AS "Data Rescisão"
			FROM [dbo].[Funcionario] f WITH (NOLOCK)
				INNER JOIN [dbo].[Cargo] c WITH (NOLOCK)
					ON c.Id = f.IdCargo
			WHERE f.DataRescisao IS NOT NULL
   END
			