select name, 
cast(EXTRACT(day from payday) as int) as day
from loan;
