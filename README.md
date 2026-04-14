TODO: UPDATE README 
# 📌 Introduction

This project analyzes the Data Analyst job market using SQL. The goal is to extract meaningful insights about:

Job demand
Salary trends
Required skills
High-paying opportunities

By working with real job posting data, this project demonstrates how SQL can be used to answer practical, career-focused questions.

🔍 For the queries, find them here: [project_query folder](/project_query/)

# 🧭 Background
The dataset consists of multiple tables:

job_postings_fact → job details (title, salary, location)
company_dim → company information
skills_job_dim → mapping between jobs and skills
skills_dim → skill names and types

The analysis focuses specifically on:

Remote jobs (job_location = 'Anywhere')
Data Analyst roles
Jobs with valid salary data.

Data was retrieved from [Google Drive](https://drive.google.com/drive/folders/1moeWYoUtUklJO6NJdWo9OV8zWjRn0rjN)
# 🛠️ Tools I Used
SQL (PostgreSQL) → core tool for querying and analysis

VSCode → used to execute sql query

pgAdmin / psql → running queries and managing database

GitHub → version control and project sharing
# 🔍 The Analysis
### 1️⃣ Top Paying Remote Data Analyst Jobs

The analysis identified the top 10 highest-paying remote Data Analyst positions based on average yearly salary.

📊 Findings:
The highest-paying roles are typically senior-level or specialized positions
These jobs are often offered by large, data-driven companies
There is a wide salary range, indicating variability based on experience, responsibilities, and company
💡 Insight:

Higher compensation is strongly associated with:

Advanced experience
Specialized analytical skills
Companies that rely heavily on data for decision-making

### 2️⃣ Skills Required for Top Paying Jobs

This step analyzed the skills listed in the top 10 highest-paying jobs.

📊 Findings:
High-paying roles consistently require multiple technical skills
Frequently appearing skills include:
SQL
Python
Data visualization tools (Tableau, Power BI)
Individual job postings often list several required skills, not just one
💡 Insight:

Top-paying roles demand:

A well-rounded skill set
Strong technical capabilities across tools
The ability to handle complex data tasks
### 3️⃣ Most In-Demand Skills

This analysis focused on identifying the top 5 most frequently requested skills in remote Data Analyst job postings.

📊 Findings:
A small group of skills appears in a large portion of job postings
The most common skills include:
SQL
Excel
Python
These skills form the foundation of most Data Analyst roles
💡 Insight:

To remain competitive in the job market, candidates should prioritize:

Core analytical tools
Widely used technologies that appear across many roles
### 4️⃣ Highest Paying Skills

This section analyzed which skills are associated with the highest average salaries.

📊 Findings:
Some skills are tied to significantly higher average salaries than others
Higher-paying skills tend to be:
More technical
Less common
Often used in advanced or specialized workflows
💡 Insight:

Not all skills contribute equally to salary:

Some drive higher demand
Others drive higher pay
The most valuable skills are those that balance both
### 5️⃣ Key Takeaway from the Analysis

By comparing demand and salary insights:

High-demand skills help you get more job opportunities
High-paying skills help you maximize earning potential

The best strategy is to develop skills that sit at the intersection of high demand and high salary, as these provide the strongest career advantage.
# 🔑 What I Learned

Throughout this project, I developed a deeper understanding of how SQL can be used to analyze real-world data and extract meaningful insights.


### Data Relationships Matter
I learned how to effectively use JOINs to connect multiple tables (jobs, companies, and skills) and build a complete picture of the dataset.

### Importance of Aggregation
Using GROUP BY with functions like COUNT() and AVG() helped me understand how to measure:
Skill demand (frequency)
Skill value (salary)
Filtering Shapes Results
Small differences in filters (e.g., job_title vs job_title_short) can significantly impact results. This reinforced the importance of precise conditions in analysis.
### Understanding Data Granularity
I learned how the level of grouping affects the output:
More grouping → more detailed results
Less grouping → more summarized insights
### Using CTEs for Clarity
Common Table Expressions (WITH) made complex queries easier to read, debug, and organize.
### Real-World Data is Messy
Issues like missing salaries and inconsistent job titles highlighted the importance of cleaning and filtering data before analysis.

# 🚀 Conclusion
This project demonstrates how SQL can be used to transform raw job posting data into actionable insights about the Data Analyst job market.

📊 Final Insights:
The job market is driven by a core set of high-demand skills such as SQL, Python, and Excel
Higher-paying roles tend to require more advanced and specialized skills
There is a clear distinction between:
Skills that are frequently requested
Skills that are associated with higher salaries
# 🎯 Overall Takeaway:

The most valuable skills are those that combine high demand with high earning potential.

By using SQL to analyze job data, this project provides a data-driven approach to understanding which skills to prioritize for career growth in data analytics.