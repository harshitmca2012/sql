CREATE TABLE [Sales].[MyOrderDetails]
(
[orderid] [int] NOT NULL,
[productid] [int] NOT NULL,
[unitprice] [money] NOT NULL,
[qty] [smallint] NOT NULL,
[discount] [numeric] (4, 3) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[MyOrderDetails] ADD CONSTRAINT [PK_MyOrderDetails] PRIMARY KEY CLUSTERED  ([orderid], [productid]) ON [PRIMARY]
GO
