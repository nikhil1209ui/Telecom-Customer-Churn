import pandas as pd
import numpy as np
import joblib


X_train = pd.read_csv('X_train.csv')
scaler = joblib.load('scaler.pkl')
rf_sm = joblib.load('model.pkl')

def binning_age(age):
    if age >= 18 and age < 31:
        return '18-30'
    elif age >= 31 and age < 51:
        return '31-50'
    elif age >= 51 and age < 71:
        return '51-70'
    else:
        return '70+'
    
def preprocess_test_data(test):

    # Replacing missing values
    test['Value_Deal'].fillna("No Deal", inplace=True)
    test['Internet_Type'].fillna(test['Internet_Type'].mode()[0], inplace=True)

    # Binning age and tenure
    test['Age_group'] = test['Age'].apply(binning_age)
    labels = ['{0}-{1}'.format(i, i + 11) for i in range(1, 36, 12)]
    test['Tenure_group'] = pd.cut(test.Tenure_in_Months, range(1, 40, 12), labels=labels)

    # Dropping unnecessary columns
    test.drop(columns=['Age', 'Tenure_in_Months'], axis=1, inplace=True)

    # Creating dummy variables
    test_dummy = pd.get_dummies(test, dtype='int')

    # Adding dummy columns from training data for consistency
    dummy_columns = [col for col in X_train.columns]
    for col in dummy_columns:
        if col not in test_dummy.columns:
            test_dummy[col] = 0

    # Ensuring the same column order as the training data
    test_dummy = test_dummy[X_train.columns]

    # Normalizing numeric columns
    num_cols = ['Number_of_Referrals', 'Monthly_Charge', 'Total_Charges', 
                'Total_Refunds', 'Total_Extra_Data_Charges', 
                'Total_Long_Distance_Charges', 'Total_Revenue']
    test_dummy[num_cols] = scaler.transform(test_dummy[num_cols])

    return test_dummy
