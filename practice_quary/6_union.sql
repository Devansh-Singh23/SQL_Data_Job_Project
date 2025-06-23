-- Get jobs and companies from January
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs

UNION

--Get jobs and companies from Febuary

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    feburary_jobs

UNION

--Get jobs and companies from march

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    march_jobs

-- UNION ALL

-- Get jobs and companies from January
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs

UNION ALL

--Get jobs and companies from Febuary

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    feburary_jobs

UNION ALL

--Get jobs and companies from march

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    march_jobs