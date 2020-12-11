USE [Mining]
GO
/****** Object:  Table [dbo].[MinerGPUs]    Script Date: 12/10/2020 9:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MinerGPUs](
	[ID] [int] NULL,
	[Miner] [varchar](20) NOT NULL,
	[GPUIDX] [int] NOT NULL
) ON [PRIMARY]
GO
