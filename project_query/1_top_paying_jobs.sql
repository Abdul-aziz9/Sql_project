-- What are the top 10 highest-paying remote Data Analyst jobs, including company name and job details?
SELECT  
    job_id,
    company_dim.name AS company_name,
    job_title,
    salary_year_avg,
    job_location,
    job_schedule_type,
    job_posted_date
FROM job_postings_fact jpc
LEFT JOIN company_dim ON jpc.company_id = company_dim.company_id
WHERE job_location = 'Anywhere' AND
    (job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL)
ORDER BY
    salary_year_avg DESC
LIMIT 10;