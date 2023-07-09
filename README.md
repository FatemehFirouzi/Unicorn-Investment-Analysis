# Unicorn-Investment-Analysis
This personal project involves utilizing the "Unicorn Startup Data Til September 2022" dataset to perform exploratory data analysis (EDA) using SQL in Microsoft SQL Server. The objective of this project is to gain insights and conduct market analysis by leveraging SQL queries to answer various analytical questions.

## Summary
After conducting data cleaning, including addressing inconsistent and invalid data for some columns, I proceeded with exploratory data analysis (EDA) using SQL, and have obtained the following result for these questions:
Which are the top ten countries with the most startups? Based on the provided result, the top ten countries with the most startups, in descending order, are:
United States
China
India
United Kingdom
Germany
Israel
France
Canada
Brazil
South Korea
### SQL code
SELECT TOP 10
  Country,
  COUNT(*) AS Startup_Count
FROM [GitHub-Project].[dbo].[World_Wide-Unicorn-Company-List]
GROUP BY
  Country
ORDER BY
  Startup_Count DESC;
### Tool Used
SQL code in Microsoft SQL Server

## Reference
https://www.kaggle.com/datasets/ramjasmaurya/unicorn-startups?resource=download

