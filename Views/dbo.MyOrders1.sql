SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create VIEW [dbo].[MyOrders1] 
AS
SELECT shipname,shipaddress,shipcity,freight ,orderid
FROM sales.MyOrders
GO
