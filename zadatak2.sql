CREATE TABLE tabela2 (
	EMAIL_ADDRESS VARCHAR(100),
	JOB_TITLE VARCHAR(100),
	COMPANY_COUNTRY VARCHAR(100),
	COMPANY_STATE VARCHAR(100),
	COMPANY_NAME VARCHAR(100)
);

COPY tabela2 FROM 'C:\Users\Mike\Desktop\SQL\sql_assignments\data2.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM tabela2
WHERE (job_title LIKE '%Chief Technology Officer%'
or job_title LIKE '% CTO %'
or job_title LIKE 'CTO'
or job_title LIKE '% CTO%'
or job_title LIKE '%CTO %'
or job_title LIKE '%/CTO%'
or job_title LIKE '%CTO/%')
AND job_title NOT LIKE '%Assistant%'
AND job_title NOT LIKE '%Associate%'
AND job_title NOT LIKE '%of the CTO%'
AND job_title NOT LIKE '%to the CTO%'
AND job_title NOT LIKE '%to CTO%'
AND job_title NOT LIKE '%Student%'
AND job_title NOT LIKE '%Coordinator%'
AND job_title NOT LIKE '%Student%'
AND job_title NOT LIKE '%CTO Office%'
AND job_title NOT LIKE '%at CTO%'
AND job_title NOT LIKE '%advisor%'
AND job_title NOT LIKE '%Services%'
AND job_title NOT LIKE '% OCTO Technology%'