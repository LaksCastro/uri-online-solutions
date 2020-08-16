  (SELECT concat('Podium: ', team)
   FROM league
   WHERE POSITION <= 3)
UNION ALL
  (SELECT concat('Demoted: ', team)
   FROM league
   WHERE POSITION >= 14);
