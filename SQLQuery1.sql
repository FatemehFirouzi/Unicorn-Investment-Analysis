/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Company]
      ,[Valuation_B]
      ,[Date_Joined]
      ,[Country]
      ,[City]
      ,[Industry]
      ,[Select_Investors]
  FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
SELECT TOP 10
  Country,
  COUNT(*) AS Startup_Count
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
GROUP BY
  Country
ORDER BY
  Startup_Count DESC;

SELECT TOP 10
  City,
  COUNT(*) AS Startup_Count
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
GROUP BY
  City
ORDER BY
  Startup_Count DESC;

SELECT
  Industry,
  COUNT(*) AS Unicorn_Count
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
WHERE
  Valuation_B = 1
GROUP BY
  Industry;

SELECT TOP 10
  Company,
  Valuation_B,
  Date_Joined,
  Country,
  City,
  Industry,
  Select_Investors
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
ORDER BY
  Valuation_B DESC;


SELECT
  YEAR(Date_Joined) AS Join_Year,
  COUNT(*) AS Unicorn_Count
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
WHERE
  Valuation_B >= 1
GROUP BY
  YEAR(Date_Joined)
ORDER BY
  Unicorn_Count DESC;

SELECT
  Industry,
  COUNT(*) AS Unicorn_Count
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
GROUP BY
  Industry;

SELECT TOP 1 *
FROM (
  SELECT TOP 1
    Select_Investors,
    COUNT(*) AS Investment_Count
  
 FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
  WHERE
    Select_Investors IS NOT NULL
  GROUP BY
    Select_Investors
  ORDER BY
    Investment_Count DESC
) AS T
ORDER BY Investment_Count DESC;
