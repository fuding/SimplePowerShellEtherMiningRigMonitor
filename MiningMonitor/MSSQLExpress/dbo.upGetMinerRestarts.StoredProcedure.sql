USE [Mining]
GO
/****** Object:  StoredProcedure [dbo].[upGetMinerRestarts]    Script Date: 12/10/2020 9:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[upGetMinerRestarts] @JSON varchar(20), @RunID int = null as
begin
	select count(ID) RestartCount from MinerRestarts where Miner = @JSON and DateTime > dateadd(hour, -1, getdate())
end	

GO
