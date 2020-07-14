CREATE TABLE [dbo].[Transactions]
(
[actid] [int] NOT NULL,
[tranid] [int] NOT NULL,
[val] [money] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Transactions] ADD CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED  ([actid], [tranid]) ON [PRIMARY]
GO
