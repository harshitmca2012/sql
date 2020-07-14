CREATE TABLE [HR].[Employees]
(
[empid] [int] NOT NULL IDENTITY(1, 1),
[lastname] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[firstname] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[title] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[titleofcourtesy] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[birthdate] [datetime] NOT NULL,
[hiredate] [datetime] NOT NULL,
[address] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[city] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[region] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[postalcode] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[country] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[phone] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[mgrid] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [HR].[Employees] ADD CONSTRAINT [CHK_birthdate] CHECK (([birthdate]<=getdate()))
GO
ALTER TABLE [HR].[Employees] ADD CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED  ([empid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_lastname] ON [HR].[Employees] ([lastname]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_postalcode] ON [HR].[Employees] ([postalcode]) ON [PRIMARY]
GO
ALTER TABLE [HR].[Employees] ADD CONSTRAINT [FK_Employees_Employees] FOREIGN KEY ([mgrid]) REFERENCES [HR].[Employees] ([empid])
GO
