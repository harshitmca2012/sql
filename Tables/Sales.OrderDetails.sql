CREATE TABLE [Sales].[OrderDetails]
(
[orderid] [int] NOT NULL,
[productid] [int] NOT NULL,
[unitprice] [money] NOT NULL CONSTRAINT [DFT_OrderDetails_unitprice] DEFAULT ((0)),
[qty] [smallint] NOT NULL CONSTRAINT [DFT_OrderDetails_qty] DEFAULT ((1)),
[discount] [numeric] (4, 3) NOT NULL CONSTRAINT [DFT_OrderDetails_discount] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[OrderDetails] ADD CONSTRAINT [CHK_discount] CHECK (([discount]>=(0) AND [discount]<=(1)))
GO
ALTER TABLE [Sales].[OrderDetails] ADD CONSTRAINT [CHK_qty] CHECK (([qty]>(0)))
GO
ALTER TABLE [Sales].[OrderDetails] ADD CONSTRAINT [CHK_unitprice] CHECK (([unitprice]>=(0)))
GO
ALTER TABLE [Sales].[OrderDetails] ADD CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED  ([orderid], [productid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_orderid] ON [Sales].[OrderDetails] ([orderid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_productid] ON [Sales].[OrderDetails] ([productid]) ON [PRIMARY]
GO
ALTER TABLE [Sales].[OrderDetails] ADD CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY ([orderid]) REFERENCES [Sales].[Orders] ([orderid])
GO
ALTER TABLE [Sales].[OrderDetails] ADD CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY ([productid]) REFERENCES [Production].[Products] ([productid])
GO
