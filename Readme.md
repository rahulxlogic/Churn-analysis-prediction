# Power BI End-to-End Churn Analysis Portfolio Project

## 📌 Project Overview
This project is a complete end-to-end data analysis solution designed to analyze customer churn for a Telecom company. It spans the entire data lifecycle: from **ETL (Extract, Transform, Load)** using SQL Server, to **Data Visualization** in Power BI, and finally **Predictive Analytics** using a Machine Learning model (Random Forest) in Python.

The goal is to understand historical churn patterns, visualize key metrics, and predict future churners to enable proactive retention strategies.

## 🛠 Tech Stack
* **Database:** Microsoft SQL Server (SSMS)
* **Business Intelligence:** Microsoft Power BI
* **Programming Language:** Python (Jupyter Notebook)
* **Libraries:** `pandas`, `numpy`, `scikit-learn` (Random Forest Classifier)
* **Data Source:** Telecom Customer Churn dataset (CSV)

## 🔄 Project Workflow

### Step 1: Data Engineering (SQL Server)
* **Data Loading:** Imported raw CSV data into a staging table (`stg_Churn`) in SQL Server.
* **Data Exploration:** Performed SQL queries to understand data distribution, identifying total customers, gender ratios, and churn percentages.
* **Data Cleaning:** * Identified and handled `NULL` values.
    * Created a production-ready table (`prod_Churn`) with clean data.
* **View Creation:** Created specific views for Power BI and Python ingestion:
    * `vw_ChurnData`: For historical analysis and model training.
    * `vw_JoinData`: For predicting churn on new customers.

### Step 2: Data Visualization (Power BI - Summary Dashboard)
* **Data Transformation:** Used Power Query to create conditional columns (e.g., Churn Status, Age Groups, Tenure Groups).
* **DAX Measures:** Created explicit measures for key metrics:
    * Total Customers
    * New Joiners
    * Total Churn
    * Churn Rate (%)
* **Visualizations:**
    * **Demographics:** Gender distribution, Age group analysis.
    * **Account Info:** Payment methods, Contract types, Tenure distribution.
    * **Geography:** Top 5 states with the highest churn rates.
    * **Churn Distribution:** Analysis of Churn Categories and specific Churn Reasons (using tooltips).
    * **Service Usage:** Matrix view of services (Internet, Phone, Streaming, etc.) significantly impacting churn.

### Step 3: Machine Learning (Python & Random Forest)
* **Data Connection:** Connected Jupyter Notebook to SQL Server to fetch training data (`vw_ChurnData`).
* **Preprocessing:**
    * Dropped irrelevant columns (Customer ID, etc.).
    * **Label Encoding:** Converted categorical variables (Gender, Contract, etc.) into numeric format.
    * **Train-Test Split:** Split data (80% training, 20% testing).
* **Model Building:** Trained a **Random Forest Classifier**.
* **Evaluation:**
    * Assessed model performance using Confusion Matrix and Classification Report (Precision, Recall, F1-Score).
    * Analyzed **Feature Importance** to understand which factors most heavily influence churn.
* **Prediction:**
    * Loaded new data (`vw_JoinData`).
    * Applied the trained model to predict "Customer Status".
    * Exported the results (Customer IDs with predicted Churn Status) to a CSV file.

### Step 4: Churn Prediction Dashboard (Power BI)
* Imported the Python prediction CSV into Power BI.
* Visualized the profile of **predicted churners**:
    * Count of customers predicted to churn.
    * Demographic and account breakdowns of the "at-risk" group.
* Created a unified navigation experience between the "Executive Summary" and "Churn Prediction" pages.

## 📊 Key Insights & Dashboard Features
* **Churn Rate Analysis:** The dashboard highlights an overall churn rate of ~17.5%.
* **Demographic Factors:** High churn observed in the "Female" and "Senior Citizen" demographic.
* **Contract Influence:** "Month-to-Month" contracts showed significantly higher churn compared to 1 or 2-year contracts.
* **Service Gaps:** Customers *without* services like "Online Security" and "Device Protection" were more likely to churn.
* **Competitor Analysis:** A major churn reason was competitors offering better devices or offers.

## 🚀 How to Replicate
1. **Database Setup:**
    * Install SQL Server.
    * Run the provided SQL scripts to create the database, import the raw data, clean it, and create views.
2. **Power BI (Part 1):**
    * Connect Power BI to your SQL Server instance.
    * Load `prod_Churn` and build the "Summary" page visuals and measures.
3. **Python Modeling:**
    * Install required libraries: `pip install pandas scikit-learn pyodbc`.
    * Run the Jupyter Notebook to train the model and generate the `predictions.csv`.
4. **Power BI (Part 2):**
    * Import `predictions.csv` into Power BI.
    * Build the "Churn Prediction" page to visualize future churners.

## 🔗 Credits & Resources
* **Original Tutorial:** [Power BI End to End Churn Analysis Portfolio Project (YouTube)](https://www.youtube.com/watch?v=QFDslca5AX8)
* **Channel:** Pivotalstats