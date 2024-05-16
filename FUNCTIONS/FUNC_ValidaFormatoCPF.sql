CREATE OR ALTER FUNCTION [dbo].[FUNC_ValidaFormatoCPF](@CPF CHAR(14))
	RETURNS BIT 
AS 
	/*
		Documentação
		Arquivo Fonte.....: Funcionario.sql
		Objetivo..........: Realiza o cadastro de um novo funcionario no Sistema
		Autor.............: Adriel Alexander de Sousa
		Data..............: 15/05/2024
		Ex................: DBCC DROPCLEANBUFFERS
							

							
							SELECT [dbo].[FUNC_ValidaFormatoCPF]('111.222.333-44')
								
 
	*/
	BEGIN
		
		--setando o @Resultado como 1 e esperando mudança para 0 caso ele seja valido 
		DECLARE @Resultado BIT = 1

		IF @CPF LIKE '[0-9][0-9][0-9].[0-9][0-9][0-9].[0-9][0-9][0-9]-[0-9][0-9]'
			BEGIN 
				--Caso @CPF em formato CHAR esteja em conformidade com o bit do resultado será 0
				SET @Resultado = 0 
			END
		RETURN @Resultado 
	END

