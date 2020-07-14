CREATE TABLE [Sales].[Shippers]
(
[shipperid] [int] NOT NULL IDENTITY(1, 1),
[companyname] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[phone] [nvarchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[Shippers] ADD CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED  ([shipperid]) ON [PRIMARY]
GO
