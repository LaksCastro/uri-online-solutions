select candidate.name, cast((((score.math * 2) + (score.specific * 3) + (score.project_plan * 5)) / 10) as numeric(15, 2)) as avg
from candidate
join score on score.candidate_id = candidate.id
order by avg desc;
