CREATE TABLE january_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH from job_posted_date) = 1;

-- Table for feburary

CREATE TABLE feburary_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH from job_posted_date) = 2;

-- Table for March 

CREATE TABLE march_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH from job_posted_date) = 3;

SELECT job_posted_date
FROM march_jobs;

-- Case Statement for some Data Cleaning 

SELECT
    job_title_short,
    job_location,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
        END AS location_category
FROM
    job_postings_fact;

--Further Analysis on location category

SELECT
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
        END AS location_category
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY 
    location_category;