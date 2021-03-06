USE [Mining]
GO
/****** Object:  View [dbo].[vwMiningGPUs]    Script Date: 12/10/2020 9:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[vwMiningGPUs] as
select isnull(time, getdate()) time
	, G.GPUIDX
	, isnull(T.Performance,0) Performance
	, G.Miner
	, isnull(T.Consumption,0) Consumption
	, isnull(T.Temp,0) Temp
	, isnull(T.Accepted,0) Accepted
	, isnull(T.Submitted,0) Submitted 
from MinerGPUs G
left outer join (select   time
						, GPUIDX
						, Performance
						, S.Miner
						, Consumption
						, Temp
						, M.Accepted
						, M.Submitted 
				from		MinerGPUDetail M
				inner join	[dbo].[MinerSummary] S on S.ID = M.MinerSummaryID
				inner join	(select top 1 
									LastRunID, LastFound 
								from Miners 
								order by LastFound desc) t
						on t.LastRunID = M.RunID ) T
on	T.Miner = G.Miner 
and T.GPUIDX = G.GPUIDX
GO
