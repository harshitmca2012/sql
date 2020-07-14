CREATE TABLE [Production].[Suppliers]
(
[supplierid] [int] NOT NULL IDENTITY(1, 1),
[companyname] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[contactname] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[contacttitle] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[address] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[city] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[region] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[postalcode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[country] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[phone] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fax] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Production].[Suppliers] ADD CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED  ([supplierid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_companyname] ON [Production].[Suppliers] ([companyname]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_postalcode] ON [Production].[Suppliers] ([postalcode]) ON [PRIMARY]
GO
