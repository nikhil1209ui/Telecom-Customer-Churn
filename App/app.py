import streamlit as st
import pandas as pd
from helper import rf_sm, preprocess_test_data

st.title("Customer Churn Predictor")
st.write("This app predicts whether a customer is likely to churn based on their details.")



gender = st.selectbox("Gender:", ["","Female", "Male"])
age = st.number_input("Age:", min_value=18, max_value=100, step=1)
married = st.selectbox("Married:", ["","Yes", "No"])
state = st.selectbox("State:", ['','Andhra Pradesh', 'Telangana', 'Haryana', 'Tamil Nadu',
       'Uttar Pradesh', 'Karnataka', 'Chhattisgarh', 'Bihar', 'Rajasthan',
       'West Bengal', 'Jharkhand', 'Assam', 'Delhi', 'Uttarakhand',
       'Maharashtra', 'Jammu & Kashmir', 'Odisha', 'Punjab',
       'Madhya Pradesh', 'Gujarat', 'Kerala', 'Puducherry'])  # Add all required states
number_of_referrals = st.number_input("Number of Referrals:", min_value=0, step=1)
tenure = st.number_input("Tenure in Months:", min_value=1, max_value=120, step=1)

value_deal = st.selectbox("Value Deal:", ["","Deal 1", "Deal 2", "Deal 3", "Deal 4", "Deal 5"])
phone_service = st.selectbox("Phone Service:", ["","Yes", "No"])
multiple_lines = st.selectbox("Multiple Lines:", ["","Yes", "No"])
internet_service = st.selectbox("Internet Service:", ["","Yes", "No"])
internet_type = st.selectbox("Internet Type:", ["","Fiber Optic", "DSL", "Cable"])
online_security = st.selectbox("Online Security:", ["","Yes", "No"])
online_backup = st.selectbox("Online Backup:", ["","Yes", "No"])
device_protection = st.selectbox("Device Protection Plan:", ["","Yes", "No"])
premium_support = st.selectbox("Premium Support:", ["","Yes", "No"])
streaming_tv = st.selectbox("Streaming TV:", ["","Yes", "No"])
streaming_movies = st.selectbox("Streaming Movies:", ["","Yes", "No"])
streaming_music = st.selectbox("Streaming Music:", ["","Yes", "No"])
unlimited_data = st.selectbox("Unlimited Data:", ["","Yes", "No"])
contract = st.selectbox("Contract:", ["","Month-to-Month", "One Year", "Two Year"])
paperless_billing = st.selectbox("Paperless Billing:", ["","Yes", "No"])
payment_method = st.selectbox("Payment Method:", ["","Bank Withdrawal", "Credit Card", "Mailed Check"])

# Numeric inputs
monthly_charge = st.number_input("Monthly Charge:", min_value=0.0, step=0.01, value=50.0)
total_charges = st.number_input("Total Charges:", min_value=0.0, step=0.01, value=200.0)
total_refunds = st.number_input("Total Refunds:", min_value=0.0, step=0.01)
total_extra_data_charges = st.number_input("Total Extra Data Charges:", min_value=0, step=1)
total_long_distance_charges = st.number_input("Total Long Distance Charges:", min_value=0.0, step=0.01)
total_revenue = st.number_input("Total Revenue:", min_value=0.0, step=0.01)


data ={
    "Gender": gender,
    "Age": age,
    "Married": married,
    "State": state,
    "Number_of_Referrals": number_of_referrals,
    "Tenure_in_Months": tenure,
    "Value_Deal": value_deal,
    "Phone_Service": phone_service,
    "Multiple_Lines": multiple_lines,
    "Internet_Service": internet_service,
    "Internet_Type": internet_type,
    "Online_Security": online_security,
    "Online_Backup": online_backup,
    "Device_Protection_Plan": device_protection,
    "Premium_Support": premium_support,
    "Streaming_TV": streaming_tv,
    "Streaming_Movies": streaming_movies,
    "Streaming_Music": streaming_music,
    "Unlimited_Data": unlimited_data,
    "Contract": contract,
    "Paperless_Billing": paperless_billing,
    "Payment_Method": payment_method,
    "Monthly_Charge": monthly_charge,
    "Total_Charges": total_charges,
    "Total_Refunds": total_refunds,
    "Total_Extra_Data_Charges": total_extra_data_charges,
    "Total_Long_Distance_Charges": total_long_distance_charges,
    "Total_Revenue": total_revenue,
    }

if st.button("Preview Input"):
    st.write("Input Data:")
    st.json(data)

if st.button("Predict"):
    df = pd.DataFrame(data,index=[0])
    df = preprocess_test_data(df)
    if rf_sm.predict(df)[0] == 1:
        st.write("**Customer is likely to churn**")
    else:
        st.write("**Customer will stay**")


