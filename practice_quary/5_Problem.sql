-- Find top 5 skills required by the companies with remote work location

WITH remote_job_skill AS(
SELECT 
    skill_id,
    COUNT(*) AS skill_count
FROM skills_job_dim AS skill_to_job
INNER JOIN job_postings_fact AS job_posting ON job_posting.job_id = skill_to_job.job_id
WHERE 
    job_posting.job_work_from_home = True AND
    job_posting.job_title_short = 'Data Analyst'
GROUP BY
    skill_id
)
SELECT 
    skill.skill_id,
    skills as skill_name,
    skill_count
FROM remote_job_skill
INNER JOIN skills_dim AS skill ON remote_job_skill.skill_id = skill.skill_id
ORDER BY
    skill_count DESC
LIMIT 5