select Player, Team, Fantasy_Points_Per_Game
FROM [NFL Fantasy].[dbo].[kstats]
order by Fantasy_Points_Per_Game desc

select Player, Team,Fantasy_Points
FROM [NFL Fantasy].[dbo].[kstats]
order by fantasy_points desc

select Player, team, ADP
FROM [NFL Fantasy].[dbo].[kstats]
where adp is not null
order by ADP asc

select Player, team, round((XPT/XPA),2) as Extra_Point_Pct
FROM [NFL Fantasy].[dbo].[kstats]
order by Extra_Point_Pct desc

select player, team, [0-19],[20-29],[30-39],[40-49], [50+]
FROM [NFL Fantasy].[dbo].[kstats]
