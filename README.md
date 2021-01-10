# Pewlett-Hackard-Analysis by Ketaki
## Overview of the analysis:
The pupose of this analysis is to determine two deliverables for Bobby's manager at Pewlett-Hackard.
1. How many Pewlett-Hackard employees are retiring this year per title.
2. Employees that are eligible to participate in a mentorship program.
This analysis is performed using postgres database and SQL queries.
## Results:
- From the above analysis, we find that there are about 90,398 employees that are retiring this year which is high and is approximately(38-40%) of the current employees.
- The retiring employess includes a high percentage(approx 69%) of Senior team(Engineers, Staff and Leaders).
- 
- There are around 1548+ employees eligibile for the mentorship program. Amongst the eligible employees, majority are Senior team members, including Senior Engineers, Staff and Leaders. 
## Summary:
- There are around 90,398 roles to be filled as the "silver tsunami" begins to impact.
This can be found by a query on the retiring_titles tables. 
select sum(count)
from retiring_titles;
- There are around 1549 employees that are eligible for mentorship program. However, the number of roles to be filled are almost 50 times higher than that of employees available to mentor the next generation of Pewlett Hackard employees.
