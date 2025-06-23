SELECT 
        job_title_short AS title,
        job_location AS location,
        job_posted_date:: DATE as date
FROM job_postings_fact
LIMIT 100;

-- SQL Quary for Time Zone

SELECT
        job_title_short as title,
        job_location as location,
        job_posted_date at TIME ZONE 'UTC' at TIME ZONE 'EST' as date_time
FROM job_postings_fact
LIMIT 200;

--SQL Quary to Extract Data from Date data type

SELECT
        job_title_short as title,
        job_location as location,
        job_posted_date as date,
        EXTRACT(MONTH from job_posted_date) as Month
FROM job_postings_fact
LIMIT 200;

-- Quary For Number of Job_Posted in each Month

SELECT
        COUNT(job_id) as job_posted_count,
        EXTRACT(MONTH from job_posted_date) as month
FROM 
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY 
        month
ORDER BY
        job_posted_count DESC;