# Churn Analysis Project

<img src="https://github.com/user-attachments/assets/13c06b68-f4e9-4ba8-8982-f295f02c1c56" alt="Screenshot 2024-12-25 201220" width="500" height="300">
<img width="500" height="300" alt="image" src="https://github.com/user-attachments/assets/36c51359-f53b-48f0-9cf8-38344ffe01fa" />


## Introduction
In today’s competitive business landscape, retaining customers is critical for long-term success. This project focuses on churn analysis, a technique used to identify patterns and reasons for customer attrition. By leveraging advanced data analytics and machine learning, this project predicts customers at risk of leaving and identifies key drivers of churn. The insights enable businesses to take proactive measures, improve customer satisfaction, and enhance loyalty.

## Project Objectives
Create a complete ETL process in SQL Server to handle customer data.
Build a Power BI dashboard to visualize customer demographics, geographic trends, and account information.
Develop a machine learning model to predict customer churn.
Provide actionable insights to improve customer retention and loyalty.

## Technologies Used
- Data Engineering: Microsoft SQL Server
- Data Visualization: Power BI
- Machine Learning: Python (Random Forest Classifier)
- Libraries: pandas, numpy, matplotlib, seaborn, scikit-learn
- Tools: Jupyter Notebook

## Project Workflow
### 1. ETL Process in SQL Server
- Load raw customer data into SQL Server using the Import Wizard.
- Perform data cleaning, null value handling, and transformation.
- Store cleaned data in production tables for further analysis.

### 2. Data Exploration
- Explore demographics, geographics, and account information.
- Analyze churn distribution by features like:
- Contract Type
- Payment Method
- Tenure Group

### 3. Power BI Dashboards
- Create dynamic visualizations for:
- Churn rates by demographics, services, and geography.
- Total Customers, Churn Rate, and Key Drivers.

### 4. Machine Learning for Churn Prediction
- Train a Random Forest Classifier to predict churn.
#### Key Steps:
- Encode categorical variables using LabelEncoder.
- Split data into training and testing sets.
- Evaluate using confusion matrix and feature importance.

### 5. Visualize Predictions in Power BI
- Import predictions into Power BI.
- Add new visualizations for predicted churners:
- Churn Count by State, Gender, and Contract Type.

## Key Metrics
- Total Customers
- Total Churners & Churn Rate
- New Joiners
- Revenue Contribution by Customer Status
- 
### Results
- Successfully identified high-risk customers with a predictive model.
- Delivered interactive dashboards for business decision-making.
- Provided actionable insights to target marketing campaigns and retention strategies.
