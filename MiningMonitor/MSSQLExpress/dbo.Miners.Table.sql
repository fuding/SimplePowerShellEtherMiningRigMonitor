USE [Mining]
GO
/****** Object:  Table [dbo].[Miners]    Script Date: 12/10/2020 9:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Miners](
	[Miner] [varchar](20) NOT NULL,
	[IPAddress] [varchar](16) NULL,
	[LastFound] [datetime] NULL,
	[LastRunID] [bigint] NULL,
	[time]  AS (dateadd(hour,(6),[LastFound])),
 CONSTRAINT [PK_Miners] PRIMARY KEY CLUSTERED 
(
	[Miner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
