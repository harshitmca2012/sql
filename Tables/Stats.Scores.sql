CREATE TABLE [Stats].[Scores]
(
[testid] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[studentid] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[score] [tinyint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Stats].[Scores] ADD CONSTRAINT [CHK_Scores_score] CHECK (([score]>=(0) AND [score]<=(100)))
GO
ALTER TABLE [Stats].[Scores] ADD CONSTRAINT [PK_Scores] PRIMARY KEY CLUSTERED  ([testid], [studentid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_nc_testid_score] ON [Stats].[Scores] ([testid], [score]) ON [PRIMARY]
GO
ALTER TABLE [Stats].[Scores] ADD CONSTRAINT [FK_Scores_Tests] FOREIGN KEY ([testid]) REFERENCES [Stats].[Tests] ([testid])
GO
