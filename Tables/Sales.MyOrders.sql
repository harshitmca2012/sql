CREATE TABLE [Sales].[MyOrders]
(
[orderid] [int] NOT NULL IDENTITY(1, 1),
[custid] [int] NULL,
[empid] [int] NOT NULL,
[orderdate] [datetime] NOT NULL,
[requireddate] [datetime] NOT NULL,
[shippeddate] [datetime] NULL,
[shipperid] [int] NOT NULL,
[freight] [money] NOT NULL,
[shipname] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[shipaddress] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[shipcity] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[shipregion] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[shippostalcode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[shipcountry] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[MyOrders] ADD CONSTRAINT [PK_MyOrders] PRIMARY KEY CLUSTERED  ([orderid]) ON [PRIMARY]
GO
