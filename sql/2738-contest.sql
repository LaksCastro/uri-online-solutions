SELECT candidate.name,
       cast((((score.math * 2) + (score.specific * 3) + (score.project_plan * 5)) / 10) AS numeric(15, 2)) AS AVG
FROM candidate
JOIN score ON score.candidate_id = candidate.id
ORDER BY AVG DESC;
