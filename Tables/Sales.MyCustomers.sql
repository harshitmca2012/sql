CREATE TABLE [Sales].[MyCustomers]
(
[custid] [int] NOT NULL IDENTITY(1, 1),
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
ALTER TABLE [Sales].[MyCustomers] ADD CONSTRAINT [PK_MyCustomers] PRIMARY KEY CLUSTERED  ([custid]) ON [PRIMARY]
GO
