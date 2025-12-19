--Data Exploration - Check Distinct Values

Select Gender,count(Gender) as TotalCount,
count(Gender) * 100.00 /(Select Count(*) from stg_Churn) as Perecntage
From stg_Churn
Group by Gender;

Select Contract,count(Contract) as TotalCount,
count(Contract) * 100.00 /(Select Count(*) from stg_Churn) as Perecntage
From stg_Churn
Group by Contract;

Select Customer_Status, count(Customer_Status) as TotalCount,
Sum(Total_revenue) as TotalRev,
Sum(Total_revenue) / (Select Sum(Total_revenue) from stg_Churn) * 100 as RevPercentage
From stg_Churn
Group by Customer_Status;

Select State, count(State) as TotalCount,
count(State) * 100.0 / (Select count(*) from stg_Churn) as Percentage
From stg_Churn
Group by State
Order by Percentage desc;

Select Distinct internet_type
from stg_Churn;

