-- portfolio overview
SELECT

    COUNT(*) AS total_loans,

    SUM(loan_amnt) AS total_exposure,

    SUM(loan_status) AS total_defaults,

    AVG(CAST(loan_status AS FLOAT)) AS actual_default_rate,

    AVG(pd_probability) AS average_predicted_pd,

    SUM(expected_loss) AS total_expected_loss

FROM credit_risk_predictions;

-- Risk Band Analysis
SELECT

    risk_band,

    COUNT(*) AS loan_count,

    SUM(loan_amnt) AS total_exposure,

    AVG(pd_probability) AS average_pd,

    SUM(expected_loss) AS total_expected_loss

FROM credit_risk_predictions

GROUP BY risk_band

ORDER BY average_pd DESC;

-- Actual vs Predicted risk
SELECT

    risk_band,

    COUNT(*) AS loan_count,

    AVG(pd_probability) AS predicted_pd,

    AVG(CAST(loan_status AS FLOAT))
        AS actual_default_rate

FROM credit_risk_predictions

GROUP BY risk_band

ORDER BY predicted_pd;

-- Risk by Loan Grade
SELECT

    loan_grade,

    COUNT(*) AS loan_count,

    SUM(loan_amnt) AS exposure,

    AVG(pd_probability) AS predicted_pd,

    AVG(CAST(loan_status AS FLOAT))
        AS actual_default_rate,

    SUM(expected_loss) AS expected_loss

FROM credit_risk_predictions

GROUP BY loan_grade

ORDER BY loan_grade;

-- Risk by Loan Purpose
SELECT

    loan_intent,

    COUNT(*) AS loan_count,

    SUM(loan_amnt) AS exposure,

    AVG(pd_probability) AS predicted_pd,

    AVG(CAST(loan_status AS FLOAT))
        AS actual_default_rate,

    SUM(expected_loss) AS expected_loss

FROM credit_risk_predictions

GROUP BY loan_intent

ORDER BY predicted_pd DESC;

-- High Risk Portfolio
SELECT

    COUNT(*) AS high_risk_loans,

    SUM(loan_amnt) AS high_risk_exposure,

    AVG(pd_probability) AS average_high_risk_pd,

    SUM(expected_loss) AS high_risk_expected_loss

FROM credit_risk_predictions

WHERE risk_band IN ('High', 'Very High');