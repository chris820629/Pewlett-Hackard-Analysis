select e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
into retirement_titles
from employees as e
join titles as t
on e.emp_no = t.emp_no
where e.birth_date between '1952-01-01' and '1955-12-31'
order by e.emp_no

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO nameyourtable
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

select count(title), title
into retiring_titles
from nameyourtable
group by title
order by count(title) desc

select distinct on(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
into mentorship_eligibility
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join titles as t
on e.emp_no = t.emp_no
where (e.birth_date between '1965-01-01' and '1965-12-31') and (de.to_date='9999-01-01')
order by e.emp_no

