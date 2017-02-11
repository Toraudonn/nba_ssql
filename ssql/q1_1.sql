SELECT d.name, e.name, e.salary
FROM dept d, employee e
WHERE d.manager = e.id ;
