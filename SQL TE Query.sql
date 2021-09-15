select Player, Team,Fantasy_Points, Fantasy_Points_Per_Game, ADP
FROM [NFL Fantasy].[dbo].[TEstats]
where ADP is not null and Fantasy_Points_Per_Game != 0
order by Fantasy_Points_Per_Game desc

select top (20) player, team, Rec
FROM [NFL Fantasy].[dbo].[TEstats]
order by rec desc

select top (20) player, team, Rec_TD
FROM [NFL Fantasy].[dbo].[TEstats]
order by rec_TD desc

select player, team,Round((REC/games),2) as Rec_Per_Game, Round(([REC Yds]/Games),2) as Recieving_Yds_per_Game, ADP
FROM [NFL Fantasy].[dbo].[TEstats]
where games != 0 and [rec yds] != 0 and rec != 0 and ADP is not null
order by Recieving_Yds_per_Game desc

select top (50) player, team, [Rec Yds], [Y/R], LG
FROM [NFL Fantasy].[dbo].[TEstats]
where [rec yds] !=0
order by [Rec Yds] desc


