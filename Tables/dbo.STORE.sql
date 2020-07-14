CREATE TABLE [dbo].[STORE]
(
[PRODUCTID] [int] NOT NULL,
[PRODUCTNAME] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AVAILABLEQUANTITY] [int] NULL,
[DATE] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STORE] ADD CONSTRAINT [PK__STORE__34980AA285D5882F] PRIMARY KEY CLUSTERED  ([PRODUCTID]) ON [PRIMARY]
GO
