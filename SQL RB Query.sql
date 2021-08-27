SELECT Player, Team, Pos, Pct_Owned,ADP
FROM [NFL Fantasy].[dbo].[RBstats]
where Pos ='RB - R'

select Player, Team, Rush_YDS, Rush_TD, Rec, Rec_YDS, REC_TD,Fantasy_Points, [Fantasy_Points Per Game], ADP
FROM [NFL Fantasy].[dbo].[RBstats]
where ADP is not null and [Fantasy_Points Per Game] != 0
order by [Fantasy_Points Per Game] desc

select player, team,Rush_Att,Round((Rush_Att/games),2) as Rush_Per_Game, Round((Rush_Yds/Games),2) as Rushing_Yds_per_Game, ADP
FROM [NFL Fantasy].[dbo].[RBstats]
where games != 0 and rush_yds != 0 and rush_att != 0 and ADP is not null
order by Rushing_Yds_per_Game desc

select player, team,Round((REC/games),2) as Rec_Per_Game, Round((REC_Yds/Games),2) as Recieving_Yds_per_Game, ADP
FROM [NFL Fantasy].[dbo].[RBstats]
where games != 0 and rec_yds != 0 and rec != 0 and ADP is not null
order by Recieving_Yds_per_Game desc

Select top (20) Player, Team, Rush_TD
FROM [NFL Fantasy].[dbo].[RBstats]
order by Rush_TD desc

Select top (20) Player, Team,REC ,Rec_TD
FROM [NFL Fantasy].[dbo].[RBstats]
order by Rec desc

Select top (20) Player, Team, Round(((Rush_Att+REC)/games),2) as Touches_Per_Game,Round(((Rush_YDS+REC_YDS)/games),2) as Total_Yards_Per_Game, ADP
FROM [NFL Fantasy].[dbo].[RBstats]
where games != 0 and rec_yds != 0 and rec != 0 and ADP is not null
order by Touches_Per_Game desc


