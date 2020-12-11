USE [Mining]
GO
/****** Object:  Table [dbo].[MinerRestarts]    Script Date: 12/10/2020 9:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MinerRestarts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RunID] [int] NULL,
	[Miner] [varchar](20) NULL,
	[RestartType] [varchar](20) NULL,
	[DateTime] [datetime] NULL,
	[SuccessFlag] [bit] NULL,
	[time]  AS (dateadd(hour,(6),[DateTime])),
 CONSTRAINT [PK_MinerRestarts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [IX_MinerRestarts]    Script Date: 12/10/2020 9:09:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_MinerRestarts] ON [dbo].[MinerRestarts]
(
	[RunID] ASC,
	[Miner] ASC,
	[time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
