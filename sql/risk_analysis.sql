-- How risky is our overall loan portfolio?
SELECT
    COUNT(*) AS total_loans,
    SUM(loan_status) AS total_defaults,
    AVG(CAST(loan_status AS FLOAT)) * 100 AS default_rate
FROM credit_risk;

-- default rate by grade
SELECT
    loan_grade,
    COUNT(*) AS total_loans,
    SUM(loan_status) AS defaults,
    AVG(CAST(loan_status AS FLOAT)) * 100 AS default_rate
FROM credit_risk
GROUP BY loan_grade
ORDER BY default_rate DESC;

-- default rate by loan purpose
SELECT
    loan_intent,
    COUNT(*) AS total_loans,
    SUM(loan_status) AS defaults,
    AVG(CAST(loan_status AS FLOAT)) * 100 AS default_rate
FROM credit_risk
GROUP BY loan_intent
ORDER BY default_rate DESC;

-- default rate by income group
SELECT
    income_risk,
    COUNT(*) AS total_loans,
    SUM(loan_status) AS defaults,
    AVG(CAST(loan_status AS FLOAT)) * 100 AS default_rate
FROM credit_risk
GROUP BY income_risk
ORDER BY default_rate DESC;

-- default rate by dept burden
SELECT
    high_debt_burden,
    COUNT(*) AS total_loans,
    SUM(loan_status) AS defaults,
    AVG(CAST(loan_status AS FLOAT)) * 100 AS default_rate
FROM credit_risk
GROUP BY high_debt_burden
ORDER BY default_rate DESC;

-- high risk portfolio exposure
SELECT
    high_debt_burden,
    COUNT(*) AS total_loans,
    SUM(loan_status) AS defaults,
    AVG(CAST(loan_status AS FLOAT)) * 100 AS default_rate
FROM credit_risk
GROUP BY high_debt_burden
ORDER BY default_rate DESC;

-- expected loss
-- Expected Loss = PD × LGD × EAD
-- PD = Probability of Default
-- LGD = Loss given Default
-- EAD = Exposure at default
-- let us assume LGD = 45%
-- Expected Loss = Probability of Default × 45% × Exposure
SELECT
    AVG(CAST(loan_status AS FLOAT)) AS pd,
    SUM(loan_amnt) AS ead,
    0.45 AS lgd,
    AVG(CAST(loan_status AS FLOAT))
        * 0.45
        * SUM(loan_amnt) AS expected_loss
FROM credit_risk;

-- Risk Segmentation
SELECT
    *,
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

