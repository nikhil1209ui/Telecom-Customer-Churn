# Customer Churn Analysis
## Introduction
In today’s competitive business landscape, retaining customers is critical for long-term success. This project focuses on churn analysis, a technique used to identify patterns and reasons for customer attrition. By leveraging advanced data analytics and machine learning, this project predicts customers at risk of leaving and identifies key drivers of churn. The insights enable businesses to take proactive measures, improve customer satisfaction, and enhance loyalty.
## Business Context
[Business Case PPT](https://github.com/nikhil1209ui/Telecom-Customer-Churn/blob/main/Business%20Case.pptx)

A telecom firm, has observed a steady decline in customer retention rates, which directly impacts revenue and marketing ROI. Identifying at-risk customers and understanding the root causes of churn has become a top priority. By leveraging data-driven solutions, this project provides actionable insights and predictive capabilities to tackle churn and ensure sustainable growth.

<img width="800" alt="image" src="https://github.com/user-attachments/assets/a0d3d21c-8bac-48a6-a11b-5101c0b84d94" />
<img width="400" alt="image" src="https://github.com/user-attachments/assets/42413ec7-7865-4891-b148-87ecb014fc2d" />
<img width="400" alt="image" src="https://github.com/user-attachments/assets/163273bd-482d-40a8-b732-980017cd68d0" />
<img width="400" alt="image" src="https://github.com/user-attachments/assets/6be2cd31-40aa-4edc-a7e7-490247dfa51c" />
<img width="400" alt="image" src="https://github.com/user-attachments/assets/6858bd8b-1403-46a6-a334-85b7ef367ea5" />



## Key Achievements
- Improved Customer Retention: Successfully identified high-risk customers with a machine learning model achieving a precision score of 96.6% and accuracy score of 96.2%.
- Actionable Dashboards: Delivered interactive Power BI dashboards to visualize churn patterns and guide retention strategies.
- Data-Driven Marketing: Equipped the business with insights to optimize marketing campaigns and target at-risk customers effectively.
## Project Objectives
Created a complete ETL process in SQL Server to handle customer data.
Built a Power BI dashboard to visualize customer demographics, geographic trends, and account information.
Developed a machine learning model to predict customer churn.
Provided actionable insights to improve customer retention and loyalty.
## Technologies Used
- Data Engineering: Microsoft SQL Server
- Data Visualization: Power BI
- Python: Exploratory Data Analysis, Feature Engineering
- Machine Learning: Random Forest Classifier
- Libraries: pandas, numpy, matplotlib, seaborn, scikit-learn, imblearn
- Tools: Jupyter Notebook
## Project Workflow
### 1. Data Collection
- Gathered data from a confidential source and took a representative sample for analysis.
### 2. Data Preprocessing (SQL)
[Queries](https://github.com/nikhil1209ui/Telecom-Customer-Churn/tree/main/SQL-Queries)

- Database Loading: Imported the dataset into SQL Server Management Studio (SSMS).
- Data Cleaning: Preprocessed the data to remove inconsistencies and duplicates.
- Data Partitioning: Divided the data into two views:
- Training Data: Filtered customers based on their status ("Churned" or "Active").
- Testing Data: Contains customers with the status "Joined" for future predictions.
### 3. ETL Process
- Established a connection between the database and Power BI for data extraction.
- Created a dashboard in Power BI using the training data to understand historical trends and factors driving churn.
### 4. Data Exploration

[Code](https://github.com/nikhil1209ui/Telecom-Customer-Churn/blob/main/EDA-Model.ipynb)
- Explore demographics, geographics, and account information.
- Analyze churn distribution by features like:
- Contract Type
- Payment Method
- Tenure Group
### 5. Power BI Dashboards
- Create dynamic visualizations for:
- Churn rates by demographics, services, and geography.
- Total Customers, Churn Rate, and Key Drivers.

<img width="500" alt="image" src="https://github.com/user-attachments/assets/8c104b0b-eb9e-4002-b177-5057b95b5efe" />

### 6. Machine Learning for Churn Prediction
[Model](https://github.com/nikhil1209ui/Telecom-Customer-Churn/blob/main/EDA-Model.ipynb)

- Trained a Random Forest Classifier to predict churn.
#### Key Steps:
- Encoded categorical variables using OneHot Encoding.
- Splitted data into training and testing sets.
- Used SMOTEENN to upsample minority class to get unbiased result
- Normalised numeric columns
- Evaluated using confusion matrix and feature importance.

<img width="500" alt="image" src="https://github.com/user-attachments/assets/67bf43ec-abe8-4084-a278-d8a55a3d7155" />
<img width="392" alt="image" src="https://github.com/user-attachments/assets/2e752a4a-1f47-484a-8f8e-31cafcae28c3" />


### 7. Visualize Predictions in Power BI
- Imported predictions into Power BI.
- Added new visualizations for predicted churners:
- Churn Count by State, Gender, and Contract Type.

<img width="500" alt="image" src="https://github.com/user-attachments/assets/82f88a45-c78d-441a-81bd-80af3bc062e2" />

## Key Visual Insights
### Overview

<img width="598" alt="image" src="https://github.com/user-attachments/assets/252b7b1a-7a8c-4ebd-b925-156b5c29d58b" />
<img width="598" alt="image" src="https://github.com/user-attachments/assets/bb659976-7316-4bfa-8580-776f560fd767" />
<img width="598" alt="image" src="https://github.com/user-attachments/assets/1b53264c-cc12-4769-a55d-4912af1e1e87" />
<img width="598" alt="image" src="https://github.com/user-attachments/assets/718f7dfd-9db8-4aa5-9ae5-6f8f0c19ed87" />

### After Predictions Analysis
  
<img width="598" alt="image" src="https://github.com/user-attachments/assets/eaab2005-68c8-44e7-bf1d-76280013def0" />
<img width="598" alt="image" src="https://github.com/user-attachments/assets/61381852-3a5b-4faf-8d2f-4624d7822b08" />

### Results
- Successfully identified high-risk customers with a predictive model having precision score of 96.6% and accuracy score of 96.2%.
- Delivered interactive dashboards for business decision-making.
- Provided actionable insights to target marketing campaigns and retention strategies.
