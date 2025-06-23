-- To find the job posting offering yearly slary above than $70k and are in first quaeter
SELECT 
    job_title_short,
    job_location,
    job_posted_date:: DATE,
    job_via,
    salary_year_avg
FROM(
    SELECT *
    FROM january_jobs
    UNION ALL
    SELECT *
    FROM feburary_jobs
    UNION ALL
    SELECT *
    FROM march_jobs
) AS quaeter1_job_postings
WHERE
    salary_year_avg > 70000 AND
    job_title_short = 'Data Analyst'
ORDER BY
    salary_year_avg DESC