CREATE TABLE credit_risk_predictions (
    
    person_age INT,
    
    person_income FLOAT,
    
    person_home_ownership VARCHAR(50),
    
    person_emp_length FLOAT,
    
    loan_intent VARCHAR(50),
    
    loan_grade VARCHAR(10),
    
    loan_amnt FLOAT,
    
    loan_int_rate FLOAT,
    
    loan_status INT,
    
    loan_percent_income FLOAT,

    pd_probability FLOAT,

    predicted_default INT,

    risk_band VARCHAR(20),

    expected_loss FLOAT
);

DROP TABLE credit_risk_predictions;

CREATE TABLE credit_risk_predictions (
    person_age INT,
    person_income DOUBLE,
    person_home_ownership VARCHAR(50),
    person_emp_length DOUBLE,
    loan_intent VARCHAR(50),
    loan_grade VARCHAR(10),
    loan_amnt DOUBLE,
    loan_int_rate DOUBLE,
    loan_status INT,
    loan_percent_income DOUBLE,
    cb_person_default_on_file VARCHAR(10),
    cb_person_cred_hist_length INT,
    income_loan_ratio DOUBLE,
    monthly_income DOUBLE,
    loan_income_ratio DOUBLE,
    income_risk VARCHAR(50),
    loan_size_category VARCHAR(50),
    age_group VARCHAR(50),
    employment_category VARCHAR(50),
    previous_default INT,
    high_debt_burden INT,
    high_interest_rate INT,
    pd_probability DOUBLE,
    predicted_default INT,
    risk_band VARCHAR(50),
    expected_loss DOUBLE
);

DESCRIBE credit_risk_predictions;