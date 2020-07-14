SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [Sales].[ProcessCustomer]
(
@custid AS INT
)
AS
PRINT 'Processing customer ' + CAST(@custid AS VARCHAR(10));
GO
