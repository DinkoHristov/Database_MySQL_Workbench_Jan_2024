SELECT DISTINCT department_id, salary AS third_highest_salary
	FROM (SELECT e.department_id, e.salary,
	DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS myRank
	FROM employees AS e) AS k
WHERE k.myRank = 3;