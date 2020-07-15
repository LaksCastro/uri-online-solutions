select concat('Approved: ', name) as name, grade from students 
where grade >= 7 
order by grade desc;
