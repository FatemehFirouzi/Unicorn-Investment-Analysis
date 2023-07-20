/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Company]
      ,[Valuation_B]
      ,[Date_Joined]
      ,[Country]
      ,[City]
      ,[Industry]
      ,[Select_Investors]
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]

  /****** Q1  ******/
SELECT TOP 10
  Country,
  COUNT(*) AS Startup_Count
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
GROUP BY
  Country
ORDER BY
  Startup_Count DESC;

  /****** Q2  ******/
SELECT TOP 10
  City,
  COUNT(*) AS Startup_Count
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
GROUP BY
  City
ORDER BY
  Startup_Count DESC;

    /****** Q3  ******/
SELECT
  Industry,
  COUNT(*) AS Unicorn_Count
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
WHERE
  Valuation_B = 1
GROUP BY
  Industry;

    /****** Q4  ******/
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

  /****** Q5  ******/
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

  /****** Q6  ******/
SELECT
  Industry,
  COUNT(*) AS Unicorn_Count
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
GROUP BY
  Industry;

  /****** Q7  ******/
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

  /****** Q8  ******/
  SELECT
  CASE
    WHEN Industry LIKE  '%Tech%' THEN 'Tech Firm'
    ELSE 'Non-Tech Firm'
  END AS Firm_Type,
  COUNT(*) AS Investment_Count
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
WHERE
  City LIKE '%San Francisco%'
GROUP BY
  CASE
    WHEN Industry LIKE  '%Tech%' THEN 'Tech Firm'
    ELSE 'Non-Tech Firm'
  END;

  SELECT
  CASE
    WHEN Industry LIKE  '%Tech%' THEN 'Tech Firm'
    ELSE 'Non-Tech Firm'
  END AS Firm_Type,
  COUNT(*) AS Investment_Count,   YEAR(Date_Joined) AS Join_Year
FROM [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
WHERE
  City LIKE '%San Francisco%'
GROUP BY
  CASE
    WHEN Industry LIKE  '%Tech%' THEN 'Tech Firm'
    ELSE 'Non-Tech Firm'
  END
  , YEAR(Date_Joined);


  /****** Q9  ******/

  SELECT
YEAR(Date_Joined) AS year,
COUNT(Valuation_B) AS count
FROM
  [GitHUb-Project].[dbo].[World_Wide-Unicorn-Company-List]
WHERE Date_Joined BETWEEN '2007-01-01' AND '2022-09-30'
AND country = 'China'
GROUP BY YEAR(Date_Joined)
ORDER BY YEAR(Date_Joined) DESC;
