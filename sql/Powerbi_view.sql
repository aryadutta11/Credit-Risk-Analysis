CREATE VIEW vw_credit_risk_dashboard
AS

SELECT
    person_age,
    person_income,
    person_home_ownership,
    person_emp_length,
    loan_intent,
    loan_grade,
    loan_amnt,
    loan_int_rate,
    loan_status,
    loan_percent_income,
    cb_person_default_on_file,
    cb_preson_cred_hist_length,

    income_loan_ratio,
    monthly_income,
    loan_income_ratio,

    income_risk,
    loan_size_category,
    age_group,
    employment_category,

    previous_default,
    high_debt_burden,
    high_interest_rate,

    CASE
        WHEN loan_grade IN ('A', 'B')
             AND high_debt_burden = 0
             AND previous_default = 0
            THEN 'Low Risk'

        WHEN loan_grade IN ('C', 'D')
             OR high_debt_burden = 1
            THEN 'Medium Risk'

        ELSE 'High Risk'
    END AS risk_segment

FROM credit_risk;