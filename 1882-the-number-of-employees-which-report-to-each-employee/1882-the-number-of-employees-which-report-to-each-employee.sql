# Write your MySQL query statement below
select e1.employee_id as employee_id, e1.name as name, count(e2.employee_id) as reports_count, 
round(sum(e2.age)/count(e2.employee_id)) as average_age
from Employees e1
left join Employees e2
on e1.employee_id = e2.reports_to
group by e1.employee_id
having count(e2.reports_to) >= 1
order by e1.employee_id