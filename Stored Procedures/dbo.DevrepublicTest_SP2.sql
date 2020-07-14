SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author		: Harshit Bhadiyadra
-- Create date	: 19-JUNE-2020
-- Description	:	To get search wise sps and functions
-- exec DevrepublicTest_SP2 'update'

/*
FN = SQL scalar function
IF = SQL inline table-valued function
TF = SQL table-valued-function
P = SQL Stored Procedure

*/

-- =============================================
CREATE PROCEDURE [dbo].[DevrepublicTest_SP2]
	@SearchString varchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY 
		
		SELECT O.TYPE,O.TYPE_DESC, O.NAME
		FROM SYS.OBJECTS O
		INNER JOIN SYS.SQL_MODULES M
			ON M.OBJECT_ID = O.OBJECT_ID
		WHERE O.TYPE IN ('FN','IF','TF','P')
		AND M.DEFINITION LIKE '%'+@SearchString+'%'
		ORDER BY TYPE DESC
	
	END TRY 
	BEGIN CATCH 
	END CATCH 
END

--exec DevrepublicTest_SP2 'Sale'
--Select distinct type from sys.objects where type_desc like '%stored_procedure%' or type_desc like '%Function%'

--Select * from sys.objects where type in ('FN','IF','TF','P')
--Select * from sys.sql_modules 


--sp_helptext BI_InvoiceArticles
GO
