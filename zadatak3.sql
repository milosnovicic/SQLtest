ALTER TABLE tabela2
ADD Persona VARCHAR (100);
UPDATE tabela2
SET Persona = 'Executive'
WHERE job_title LIKE '%C_O%'
AND job_title NOT ILIKE '%advisor%'
AND job_title NOT LIKE '%Assist_n%'
AND job_title NOT LIKE '%DIRECTOR%'
AND job_title NOT ILIKE '%Manager%'
AND job_title NOT LIKE '%COORD_N%'
AND job_title NOT ILIKE '%Office%'
AND job_title NOT LIKE '%SOCIO%'
AND job_title NOT LIKE '%EA %'
AND job_title NOT ILIKE '%Student%'
AND job_title NOT ILIKE '%support%'
AND job_title NOT LIKE '%Coach%'
AND job_title NOT LIKE '%PA %'
AND job_title NOT LIKE '%Chief of%'
AND job_title NOT LIKE '%Mainframe Storage  Administrator%'
AND job_title NOT LIKE '%FACTORS%'
AND job_title NOT LIKE '%INSTRUCTOR%'
AND job_title NOT LIKE '%Consultant%'
AND job_title NOT LIKE '%Chief of%'
AND job_title NOT LIKE '%INFORMATIQUE%'
AND job_title NOT LIKE '%Coordinator%'
AND job_title NOT LIKE '%PRODUCTEUR%'
AND job_title NOT LIKE '%RACCORDEMENT%'
AND job_title NOT LIKE '%MICROSOFT%'
AND job_title NOT LIKE '%POC - Global Sourscing%'
AND job_title NOT LIKE '%Analyst%'
AND job_title NOT LIKE '%Secretary%'
AND job_title NOT LIKE '%FACTORY%'
AND job_title NOT LIKE '%IT Expert Testing in COO%'
AND job_title NOT LIKE '%scientist%'
AND job_title NOT ILIKE '%designer%'
AND job_title NOT ILIKE '%Engineer %'
AND job_title NOT ILIKE '%to c_o%';

UPDATE tabela2
SET Persona = 'Executive'
WHERE job_title LIKE '%President%'
AND job_title NOT LIKE '%Assistant%'
AND job_title NOT LIKE '%Consultant%'
AND job_title NOT LIKE '%Assi_tant%'
AND job_title NOT LIKE '%Associate%';

UPDATE tabela2
SET Persona = 'Executive'
WHERE job_title LIKE '%VP%'
AND job_title NOT LIKE '%Assistant%'
AND job_title NOT LIKE '%AVP %'
AND job_title NOT LIKE '%PA %';

UPDATE tabela2
SET Persona = 'Executive'
WHERE job_title LIKE '%Chief%Officer%'
AND job_title NOT LIKE '%Assistant%'
AND job_title NOT LIKE '%PA%'
AND job_title NOT LIKE '%EA%'
AND job_title NOT LIKE '%Lead%';

UPDATE tabela2
SET Persona = 'Management'
WHERE (job_title LIKE '%Director%'
AND job_title NOT LIKE '%Assist_nt%'
AND job_title NOT LIKE '%PA %'
AND job_title NOT LIKE '%EA %'
AND job_title NOT LIKE '%Secretary%'
AND job_title NOT LIKE '%Advisor%'
AND job_title NOT LIKE '%Assistant%'
AND job_title NOT LIKE '%Assistant%')
AND Persona IS NULL;

UPDATE tabela2
SET Persona = 'Management'
WHERE (job_title LIKE '%Head%'
AND job_title NOT LIKE '%EA %'
AND job_title NOT LIKE '%PA %'
AND job_title NOT LIKE '%Assist_nt%'
)
AND Persona IS NULL;

UPDATE tabela2
SET Persona = 'Management'
WHERE job_title ILIKE '%Manager%'
AND Persona IS NULL;

UPDATE tabela2
SET Persona = 'Developer'
WHERE job_title ILIKE '%Engineer%' AND Persona IS NULL;

UPDATE tabela2
SET Persona = 'Developer'
WHERE job_title ILIKE '%Designer%' AND Persona IS NULL;

UPDATE tabela2 
SET Persona = 'Developer'
WHERE job_title ILIKE '%Developer' AND Persona IS NULL;

UPDATE tabela2
SET Persona = 'Developer'
WHERE job_title ILIKE '%Admin%' AND Persona IS NULL;

UPDATE tabela2
SET Persona = 'Other'
WHERE Persona IS NULL;













