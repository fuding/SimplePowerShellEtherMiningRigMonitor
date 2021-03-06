USE [Mining]
GO
/****** Object:  View [dbo].[vwMinerSummary]    Script Date: 12/10/2020 9:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[vwMinerSummary] as
	select M.time,
	   M.Miner, 
	   M.HashRate, 
	   M.TotalPower,
	   E.ReportedHashRate,
	   E.CurrentHashRate
	FROM 
	   MinerSummary M
	Left Outer Join
		EtherMineStats E
	on
		M.RunID = E.RunId
	and M.Miner = E.Miner

GO
