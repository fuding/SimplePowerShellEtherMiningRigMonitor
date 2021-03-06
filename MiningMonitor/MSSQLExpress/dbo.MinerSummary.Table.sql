USE [Mining]
GO
/****** Object:  Table [dbo].[MinerSummary]    Script Date: 12/10/2020 9:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MinerSummary](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[RunID] [int] NULL,
	[Miner] [varchar](20) NULL,
	[Latency] [decimal](8, 2) NULL,
	[StartUp] [datetime] NULL,
	[UpTime] [int] NULL,
	[LastUpdate] [datetime] NULL,
	[GPUs] [int] NULL,
	[HashRate] [decimal](18, 4) NULL,
	[Unit] [varchar](8) NULL,
	[Accepted] [int] NULL,
	[Submitted] [int] NULL,
	[TotalPower] [decimal](18, 4) NULL,
	[SwitchPower] [decimal](18, 4) NULL,
	[time]  AS (dateadd(hour,(6),[LastUpdate])),
 CONSTRAINT [PK_MinerSummary] PRIMARY KEY CLUSTERED 
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
/****** Object:  Index [IX_MinerSummary_1]    Script Date: 12/10/2020 9:09:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_MinerSummary_1] ON [dbo].[MinerSummary]
(
	[RunID] ASC,
	[time] ASC,
	[Miner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MinerSummary]  WITH CHECK ADD  CONSTRAINT [FK_MinerSummary_Miners] FOREIGN KEY([Miner])
REFERENCES [dbo].[Miners] ([Miner])
GO
ALTER TABLE [dbo].[MinerSummary] CHECK CONSTRAINT [FK_MinerSummary_Miners]
GO
