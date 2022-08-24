select s.name,g.grade,s.marks from students s join grades g on s.marks>=g.min_mark and s.marks<=g.max_mark where g.grade>=8 order by g.grade desc,name asc;
select NULL,g.grade,s.marks from students s join grades g on s.marks>=g.min_mark and s.marks<=g.max_mark where g.grade<8 order by g.grade desc,s.marks asc;
