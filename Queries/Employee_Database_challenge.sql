-- Create the Retiring Employees information with titles
select e.emp_no,
    e.first_name,
    e.last_name,
    t.title,
    t.from_date,
    t.to_date
    into retirement_titles
from employees as e
inner join titles as t
on e.emp_no = t.emp_no
where birth_date between '01-01-1952' and '12-31-1955'
Order by e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
    first_name,
    last_name,
    title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

--Retiring Titles employee information
select count(title), 
       title
into retiring_titles
from unique_titles
group by title
order by count(title) DESC;

--Deliverable 2 
--query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

select DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
into mentorship_eligibilty
from employees as e
inner join Dept_Emp as de
on e.emp_no = de.emp_no
inner join titles as t
on e.emp_no = t.emp_no
where de.to_date = '9999-01-01'
and e.birth_date between '01-01-1965' and '12-31-1965'
order by e.emp_no;

-- Please note: The above query is written as per instructions in the challenge, but is delivering inconsistent results 
-- in terms of the most current title of the employees. 
-- You can re-run the query a few times and see that the title of the first employee 100095 changes depending on sort on emp_no. 
-- I think the solution should include the titles from_date in the Order_By so we get the most current title -
-- **Please consider the following query as my solution to Deliverable 2**.
select DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
into mentorship_eligibilty
from employees as e
inner join Dept_Emp as de
on e.emp_no = de.emp_no
inner join titles as t
on e.emp_no = t.emp_no
where de.to_date = '9999-01-01'
and e.birth_date between '01-01-1965' and '12-31-1965'
order by e.emp_no, t.from_date DESC;