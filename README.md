# SQL Challenge

## Objective
This is a research project on employees of a corporation from the 1980s and 1990s. Six CSV files contain all the relevant information. The objective is to create a data engineering and data analysis.

## Data Engineering
The following picture shows the relationships between each one of the available tables.
![Figure](EmployeeSQL/ERD_Diagram.png)



## Data Analysis
* List the following details of each employee: employee number, last name, first name, sex, and salary.

![Figure](EmployeeSQL/Images/Data_Analysis_1.png)

* List first name, last name, and hire date for employees who were hired in 1986.

![Figure](EmployeeSQL/Images/Data_Analysis_2.png)

* List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

![Figure](EmployeeSQL/Images/Data_Analysis_3.png)


* List the department of each employee with the following information: employee number, last name, first name, and department name.

![Figure](EmployeeSQL/Images/Data_Analysis_4.png)


* List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

![Figure](EmployeeSQL/Images/Data_Analysis_5.png)


* List all employees in the Sales department, including their employee number, last name, first name, and department name.

![Figure](EmployeeSQL/Images/Data_Analysis_6.png)

* List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![Figure](EmployeeSQL/Images/Data_Analysis_7.png)

* In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

![Figure](EmployeeSQL/Images/Data_Analysis_8.png)



## Bonus
The most common salary ranges are between $40,000 and $50,000 for about 160,000 employees. 

![Figure](EmployeeSQL/Images/Bonus_1.png)

The graph below presents the average salaries by titles. The Senior Engineer position earns less in average than the engineer, and the assistant engineer earns more than higher ranked engineers which is counter-intuitive. Also staff and Senior Staff earn more than the manager, which should be better analyzed depending on the company's structure.
The data seems to have flaws.

![Figure](EmployeeSQL/Images/Bonus_2.png)

Finally, when looking for the employee # 499942, the first and last name appear as "April Foolsday" clearly indicating a fake database.

