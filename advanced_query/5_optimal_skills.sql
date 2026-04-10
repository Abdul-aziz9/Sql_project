-- What are the top 25 most in-demand skills for remote Data Analyst jobs, along with their average salaries, where the demand is greater than 10 job postings?
-- CTE version
WITH skills_demand AS(
    SELECT 
        skills_job_dim.skill_id,
        skills,
        COUNT(skills_job_dim.job_id) AS job_count
    FROM job_postings_fact jpc
    INNER JOIN skills_job_dim ON jpc.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE 
        job_title_short = 'Data Analyst' AND
        job_work_from_home = TRUE AND
        salary_year_avg IS NOT NULL
    GROUP BY
        skills_job_dim.skill_id,skills

), average_salary AS (
    SELECT 
        skills_job_dim.skill_id,
        skills,
        ROUND(AVG(salary_year_avg),0) AS avg_salary
    FROM job_postings_fact jpc
    INNER JOIN skills_job_dim ON jpc.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE  
        job_location = 'Anywhere' AND
        (job_title_short = 'Data Analyst' AND
        salary_year_avg IS NOT NULL)
    GROUP BY
        skills_job_dim.skill_id,skills
)

SELECT
    skills_demand.skill_id,
    skills_demand.skills,
    skills_demand.job_count AS demand_count,
    average_salary.avg_salary
FROM skills_demand
INNER JOIN average_salary ON skills_demand.skill_id = average_salary.skill_id
WHERE job_count > 10
ORDER BY 
    avg_salary DESC,
    demand_count DESC
    

LIMIT 25


--- Non-CTE version

SELECT
    skills_job_dim.skill_id,
    skills,
    COUNT(skills_job_dim.job_id) AS job_count,
    ROUND(AVG(jpc.salary_year_avg),0) AS avg_salary
FROM job_postings_fact jpc
INNER JOIN skills_job_dim ON jpc.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE  

    (job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL)
GROUP BY
    skills_job_dim.skill_id,skills
HAVING
    COUNT(skills_job_dim.job_id) > 10
ORDER BY 
    avg_salary DESC,
    job_count DESC
LIMIT 25