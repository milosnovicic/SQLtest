ALTER TABLE tabela2
ADD COLUMN count_number INTEGER;

UPDATE tabela2
SET count_number = (SELECT COUNT (*) FROM tabela2
WHERE job_title LIKE '%iOS%'
AND job_title NOT LIKE '%Manager%')
WHERE job_title LIKE '%iOS%'
AND job_title NOT LIKE '%Manager%';

UPDATE tabela2
SET count_number = (SELECT COUNT (*) FROM tabela2
WHERE job_title LIKE '%Android%'
AND job_title NOT LIKE '%Manager%')
WHERE job_title LIKE '%Android%'
AND job_title NOT LIKE '%Manager%';

UPDATE tabela2
SET count_number = (SELECT COUNT (*) FROM tabela2
WHERE job_title LIKE '%Mobile%'
AND job_title NOT LIKE '%Architect%'
AND job_title NOT ILIKE '%Manager%'
AND job_title NOT LIKE '%Head of%'
AND job_title NOT LIKE '%Consultant%'
AND job_title NOT LIKE '%Director%'
AND job_title NOT LIKE '%Analyst%'
AND job_title NOT LIKE '%Security%'
AND job_title NOT LIKE '%President%'
AND job_title NOT LIKE '%Solutions%'
AND job_title NOT LIKE '%VP %')
WHERE job_title LIKE '%Mobile%'
AND job_title NOT LIKE '%Architect%'
AND job_title NOT ILIKE '%Manager%'
AND job_title NOT LIKE '%Head of%'
AND job_title NOT LIKE '%Consultant%'
AND job_title NOT LIKE '%Director%'
AND job_title NOT LIKE '%Analyst%'
AND job_title NOT LIKE '%Security%'
AND job_title NOT LIKE '%President%'
AND job_title NOT LIKE '%Solutions%'
AND job_title NOT LIKE '%VP %';

UPDATE tabela2
SET count_number= (SELECT COUNT(*) FROM tabela2
WHERE (job_title ILIKE '%Engineer' or job_title ILIKE '%Developer') AND count_number IS NULL
AND job_title NOT ILIKE '%Lead%'
AND job_title NOT ILIKE '%Manager%'
AND job_title NOT ILIKE '%President%'
AND job_title NOT LIKE '%VP%'
AND job_title NOT ILIKE '%Project%'
)
WHERE (job_title LIKE '%Engineer' or job_title LIKE '%Developer') AND count_number IS NULL
AND job_title NOT ILIKE '%Lead%'
AND job_title NOT ILIKE '%Manager%'
AND job_title NOT ILIKE '%President%'
AND job_title NOT LIKE '%VP%'
AND job_title NOT ILIKE '%Project%';
