-- Deliverable 1: The Number of Retiring Employees by Title

-- Constructing retirement_titles.csv
SELECT e.emp_no,
	   e.first_name,
       e.last_name,
	   ti.title,
	   ti.from_date,
	   ti.to_date	   
INTO retirement_title
FROM employees as e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;
-- Stepts 1 through 7 were completed


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	   rt.first_name,
       rt.last_name,
	   rt.title
INTO unique_titles
FROM retirement_title AS rt
WHERE rt.to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;
-- Stepts 8 through 15 were completed


-- Retrieve the number of employees by their most recent job title
SELECT COUNT(ut.title),	  
	  ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY title
ORDER BY COUNT(title) DESC;
-- Stepts 16 through 22 were completed


-- Deliverable 2: Mentorship Eligibility Table
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	   e.first_name,
       e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   ti.title	   
INTO mentorship_eligibility
FROM employees as e
LEFT JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;
-- Stepts 1through 11 were completed