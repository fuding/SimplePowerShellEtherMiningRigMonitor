USE [Mining]
GO
/****** Object:  View [dbo].[vwMinerRestarts]    Script Date: 12/10/2020 9:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[vwMinerRestarts] as
select ID, Miner, time, SuccessFlag from MinerRestarts
GO
