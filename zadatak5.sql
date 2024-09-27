SELECT company_name, COUNT(*) FROM tabela2
GROUP BY company_name
HAVING COUNT(*) >= 50
ORDER BY COUNT(*) DESC;