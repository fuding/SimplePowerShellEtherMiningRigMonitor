USE [Mining]
GO
/****** Object:  View [dbo].[vwMinerCountByTime]    Script Date: 12/10/2020 9:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwMinerCountByTime] as
select max(time) time, count(Miner) Miners from MinerSummary group by RunID
GO
