SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[MyOrders] 
WITH schemabinding 
AS
SELECT shipname,shipaddress,shipcity,freight ,orderid
FROM sales.MyOrders
GO
CREATE UNIQUE CLUSTERED INDEX [idx_on_ord] ON [dbo].[MyOrders] ([orderid]) ON [PRIMARY]
GO
