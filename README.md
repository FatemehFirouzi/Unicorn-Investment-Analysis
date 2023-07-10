# Unicorn-Investment-Analysis
This personal project involves utilizing the "Unicorn Startup Data Til September 2022" dataset to perform exploratory data analysis (EDA) using SQL in Microsoft SQL Server. The objective of this project is to gain insights and conduct market analysis by leveraging SQL queries to answer various analytical questions.

## Summary
After conducting data cleaning, including addressing inconsistent and invalid data for some columns, I proceeded with exploratory data analysis (EDA) using SQL, and have obtained the following result for these questions:
### Questions
1- Which are the top ten countries with the most startups? Based on the provided result, the top ten countries with the most startups, in descending order, are:
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

2- Which are the three cities with the most startups? 
City	Startup_Count
San Francisco with total 169 startups, following by Newyork with 115 and Beijing with 62 Startups.

3- How many Unicorns are there in Artificial intelligence industry and Auto & transportation industry? ← (They’re all unicorns valued at $1B each)
| Industry                   | Unicorn_Count |
|----------------------------|---------------|
| Artificial intelligence    | 25            |
| Auto & transportation      | 3             |

4- Which are the most valuable unicorn?
ByteDance with 140 Valuation ($B).

5- How many companies have joined the club of unicorns each year? In which year do we have the most unicorns?
| Join_Year | Unicorn_Count | 
|-----------|---------------|
| 2021      | 524           |
| 2022      | 252           |
| 2020      | 106           | 
| 2019      | 102           | 
| 2018      | 97            |
| 2017      | 42            | 
| 2015      | 34            | 
| 2016      | 21            |
| 2014      | 12            |
| 2012      | 4             | 
| 2013      | 3             |
| 2011      | 2             |

6- Which VC firm is most active/present in the data set?
Among all venture capital firms, General Atlantic is the most active in this dataset with three investments.

### Tool Used
SQL code in Microsoft SQL Server

## Reference
https://www.kaggle.com/datasets/ramjasmaurya/unicorn-startups?resource=download

