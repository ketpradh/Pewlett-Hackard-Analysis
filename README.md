# Pewlett-Hackard-Analysis by Ketaki
## Overview of the analysis:
The pupose of this analysis is to determine two deliverables for Bobby's manager at Pewlett-Hackard.
1. How many Pewlett-Hackard employees are retiring this year per title.
2. Employees that are eligible to participate in a mentorship program.
This analysis is performed using postgres database and SQL queries.
## Results:
- From the above analysis, we find that there are about **90,398** employees that are retiring this year which is high and is approximately(**38-40%**) of the current employees.Hence, labeled as **"silver tsunami"**.
- The retiring employess includes a high percentage(approx 69%) of Senior team(Engineers, Staff and Leaders).![](https://github.com/ketpradh/Pewlett-Hackard-Analysis/blob/main/Retiring_Titles.PNG)
- There are approx. **1549** employees eligibile for the mentorship program across the company. Amongst the eligible employees, majority are Senior team members, including Senior Engineers, Staff and Leaders. ![](https://github.com/ketpradh/Pewlett-Hackard-Analysis/blob/main/Mentorship_data.png)
- The number of mentors available are not enough for the next generation of employees that will be hired.
## Summary:
- There are around 90,398 roles to be filled as the "silver tsunami" begins to impact.
This can be found by a query on the retiring_titles tables.  
-- [Query](https://github.com/ketpradh/Pewlett-Hackard-Analysis/blob/main/Retiring_employees_count.sql)
--  ![](https://github.com/ketpradh/Pewlett-Hackard-Analysis/blob/main/Total_Retiring_employees.PNG)
- There are around 1549 employees that are eligible for mentorship program. However, the number of roles to be filled are almost 50 times higher than that of employees available to mentor the next generation of Pewlett Hackard employees. Data - [Retiring_vs_MentoringEmployees](https://github.com/ketpradh/Pewlett-Hackard-Analysis/blob/main/Retiring_vs_Mentoring_EmpperDept.csv)
