USE [Mining]
GO
/****** Object:  View [dbo].[vwEthValue]    Script Date: 12/10/2020 9:09:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[vwEthValue] as
Select max(time) time, min(USDBalance/EtherBalance) [x RATE] , min(USDBalance) USD, avg(EtherBalance) ETH
from EtherBalance where time > getdate() - 30 
group by cast(time as date), datepart(hour, time) 
GO
