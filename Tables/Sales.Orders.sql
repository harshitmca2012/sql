CREATE TABLE [Sales].[Orders]
(
[orderid] [int] NOT NULL IDENTITY(1, 1),
[custid] [int] NULL,
[empid] [int] NOT NULL,
[orderdate] [datetime] NOT NULL,
[requireddate] [datetime] NOT NULL,
[shippeddate] [datetime] NULL,
[shipperid] [int] NOT NULL,
[freight] [money] NOT NULL CONSTRAINT [DFT_Orders_freight] DEFAULT ((0)),
[shipname] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[shipaddress] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[shipcity] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[shipregion] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[shippostalcode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[shipcountry] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[Orders] ADD CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED  ([orderid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_custid] ON [Sales].[Orders] ([custid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_empid] ON [Sales].[Orders] ([empid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_orderdate] ON [Sales].[Orders] ([orderdate]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_shippeddate] ON [Sales].[Orders] ([shippeddate]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_shipperid] ON [Sales].[Orders] ([shipperid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_shippostalcode] ON [Sales].[Orders] ([shippostalcode]) ON [PRIMARY]
GO
ALTER TABLE [Sales].[Orders] ADD CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([custid]) REFERENCES [Sales].[Customers] ([custid])
GO
ALTER TABLE [Sales].[Orders] ADD CONSTRAINT [FK_Orders_Employees] FOREIGN KEY ([empid]) REFERENCES [HR].[Employees] ([empid])
GO
ALTER TABLE [Sales].[Orders] ADD CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY ([shipperid]) REFERENCES [Sales].[Shippers] ([shipperid])
GO
