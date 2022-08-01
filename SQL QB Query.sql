create or replace view  qb_view as
select *,
case when team in ('(NYJ) ','(BUF) ','(MIA) ',' (NE) ') then 'AFC East'
	 when team 
     in ('(CIN) ','(BAL) ','(PIT) ','(CLE) ') then 'AFC North'
     when team in ('(TEN) ','(IND) ','(JAC) ','(HOU) ') then 'AFC South'
     when team in ('(LAC) ',' (KC) ',' (LV) ','(DEN) ') then 'AFC West'
     when team in ('(DAL) ','(PHI) ','(WAS) ','(NYG) ') then 'NFC East'
     when team in (' (GB) ','(MIN) ','(DET) ','(CHI) ') then 'NFC North'
     when team in (' (TB) ','(ATL) ','(CAR) ',' (NO) ') then 'NFC South'
     when team in ('(LAR) ','(ARI) ',' (SF) ','(SEA) ') then 'NFC West'
	else 'Free Agent'
    end as 'Division',
    round(pass_td/inter,2) as 'TD/Int Ratio'
    from qbstats;

