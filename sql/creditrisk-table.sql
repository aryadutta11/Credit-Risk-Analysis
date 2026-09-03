CREATE Database CreditRiskDB;
use CreditRiskDB;

CREATE TABLE credit_risk (
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
    cb_person_default_on_file VARCHAR(5),
    cb_preson_cred_hist_length FLOAT,
    income_loan_ratio FLOAT,
    monthly_income FLOAT,
    loan_income_ratio FLOAT,
    income_risk VARCHAR(50),
    loan_size_category VARCHAR(50),
    age_group VARCHAR(50),
    employment_category VARCHAR(50),
    previous_default INT,
    high_debt_burden INT,
    high_interest_rate INT
);

