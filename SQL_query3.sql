-- Data Exploration � Check Nulls

SELECT 'Customer_ID_Null_Count' AS Column_Name, SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Null_Count
FROM Customer_Data
UNION ALL
SELECT 'Gender_Null_Count', SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Age_Null_Count', SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Married_Null_Count', SUM(CASE WHEN Married IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'State_Null_Count', SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Number_of_Referrals_Null_Count', SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Tenure_in_Months_Null_Count', SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Value_Deal_Null_Count', SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Phone_Service_Null_Count', SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Multiple_Lines_Null_Count', SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Internet_Service_Null_Count', SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Internet_Type_Null_Count', SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Online_Security_Null_Count', SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Online_Backup_Null_Count', SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Device_Protection_Plan_Null_Count', SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Premium_Support_Null_Count', SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Streaming_TV_Null_Count', SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Streaming_Movies_Null_Count', SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Streaming_Music_Null_Count', SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Unlimited_Data_Null_Count', SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Contract_Null_Count', SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Paperless_Billing_Null_Count', SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Payment_Method_Null_Count', SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Monthly_Charge_Null_Count', SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Total_Charges_Null_Count', SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Total_Refunds_Null_Count', SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Total_Extra_Data_Charges_Null_Count', SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Total_Long_Distance_Charges_Null_Count', SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Total_Revenue_Null_Count', SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Customer_Status_Null_Count', SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Churn_Category_Null_Count', SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data
UNION ALL
SELECT 'Churn_Reason_Null_Count', SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END)
FROM Customer_Data;