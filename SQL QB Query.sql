select top (27) player, team, pass_yds, Pass_TD,INT,Rush_YDS,Rush_TD, Fantasy_Points_Per_Game
FROM [NFL Fantasy].[dbo].[QBstats]
where Pass_YDS > 1500
order by Fantasy_Points_Per_Game desc

select top (10) player,team, pos, Rush_YDS, Rush_TD
FROM [NFL Fantasy].[dbo].[QBstats]
order by Rush_TD desc

select top (22) player,team, pos, Pass_YDS, Pass_TD, INT,round(Pass_TD/int,2) as 'TD/INT Ratio'
FROM [NFL Fantasy].[dbo].[QBstats]
where INT != 0 and Pass_YDS > 2000 
order by [TD/INT Ratio] desc

select top (10) player,team, pos, Pct_Owned
FROM [NFL Fantasy].[dbo].[QBstats]
where pos = 'QB-R'

select top (10) player, team, Fumbles_Lost, SACKS
FROM [NFL Fantasy].[dbo].[QBstats]
order by SACKS desc




