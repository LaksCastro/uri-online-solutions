SELECT name,
       cast(EXTRACT(DAY
                    FROM payday) AS int) AS DAY
FROM loan;
