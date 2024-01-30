INSERT INTO products(name, type, price)
SELECT CONCAT(w.last_name, ' ', 'specialty'),
	   'Cocktail',
       Ceil(w.salary * 0.01)
	FROM waiters AS w
    WHERE w.id > 6;