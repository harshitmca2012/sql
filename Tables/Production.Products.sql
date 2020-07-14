CREATE TABLE [Production].[Products]
(
[productid] [int] NOT NULL IDENTITY(1, 1),
[productname] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[supplierid] [int] NOT NULL,
[categoryid] [int] NOT NULL,
[unitprice] [money] NOT NULL CONSTRAINT [DFT_Products_unitprice] DEFAULT ((0)),
[discontinued] [bit] NOT NULL CONSTRAINT [DFT_Products_discontinued] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [Production].[Products] ADD CONSTRAINT [CHK_Products_unitprice] CHECK (([unitprice]>=(0)))
GO
ALTER TABLE [Production].[Products] ADD CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED  ([productid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_categoryid] ON [Production].[Products] ([categoryid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_productname] ON [Production].[Products] ([productname]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_supplierid] ON [Production].[Products] ([supplierid]) ON [PRIMARY]
GO
ALTER TABLE [Production].[Products] ADD CONSTRAINT [FK_Products_Categories] FOREIGN KEY ([categoryid]) REFERENCES [Production].[Categories] ([categoryid])
GO
ALTER TABLE [Production].[Products] ADD CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY ([supplierid]) REFERENCES [Production].[Suppliers] ([supplierid])
GO
