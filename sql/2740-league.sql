(select concat('Podium: ', team) from league where position <= 3)
union all
(select concat('Demoted: ', team) from league where position >= 14);
