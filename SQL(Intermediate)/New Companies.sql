select c.company_code, c.founder, count(distinct lead_manager_code), count(distinct senior_manager_code), count(distinct manager_code), count(distinct employee_code)
from employee e
left join company c on e.company_code = c.company_code
group by 2, 1
order by 1