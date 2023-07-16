# Unicorn-Investment-Analysis
This project collaboration involves utilizing the "Unicorn Startup Data Til September 2022" dataset to perform exploratory data analysis (EDA) using SQL in Microsoft SQL Server. The objective of this project is to gain insights and conduct market analysis by leveraging SQL queries to answer various analytical questions.

## Summary
After conducting data cleaning, including addressing inconsistent and invalid data for some columns, we proceeded with exploratory data analysis (EDA) using SQL, and have obtained the following result for these questions:
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

6- What is the global unicorn activity by industry Global unicorn activity by industry?
| Industry                            | Unicorn_Count | 
|-------------------------------------|---------------|
| Fintech                             | 251           |
| Edtech                              | 32            |
| Auto & Transportation               | 38            | 
| Health                              | 95            | 
| Supply Chain, logistics, & delivery | 67            |
| Consumer & retail                   | 30            | 
| Artificial intelligence             | 89            | 
| Mobile & telecommunications         | 39            |
| Hardware                            | 40            |
| E-commerce & direct-to-consumer     | 107           | 
| Travel                              | 14            |
| Cybersecurity                       | 58            |
| Other                               | 65            |
| Internet software & services        | 229           |
| Data management & anlaytics         | 45            |


7- Which VC firm is most active/present in the data set?
Among all venture capital firms, General Atlantic is the most active in this dataset with three investments.

8- Do Bay Area VC firms (San Francisco) primarily tend to invest in Tech firms? Is the trend changing?
Out of the total 171 investments made by Bay Area VC firms, approximately 51 (29.8%) were allocated to technology companies. This suggests a significant inclination towards the tech sector in their investment portfolio.
Analyzing the investment trends during the specified period, it is evident that there has been a consistent growth in both tech and non-tech investments made by Bay Area VC firms.
| Firm_Type       | Investment_Count | Join_Year| 
|-----------------|------------------|----------|
| Non_Tech Firm   | 2                | 2013     |
| Non_Tech Firm   | 1                | 2014     |
| Tech Firm       | 1                | 2014     |
| Non_Tech Firm   | 2                | 2015     |
| Tech Firm       | 1                | 2015     |
| Non_Tech Firm   | 4                | 2017     |
| Non_Tech Firm   | 6                | 2018     |
| Tech Firm       | 4                | 2018     |
| Non_Tech Firm   | 10               | 2019     |
| Tech Firm       | 5                | 2019     |
| Non_Tech Firm   | 12               | 2020     |
| Tech Firm       | 2                | 2020     |
| Non_Tech Firm   | 60               | 2021     |
| Tech Firm       | 27               | 2021     |
| Non_Tech Firm   | 23               | 2022     |
| Tech Firm       | 11               | 2022     |

### Tool Used
SQL code in Microsoft SQL Server

## Reference
https://www.kaggle.com/datasets/ramjasmaurya/unicorn-startups?resource=download

