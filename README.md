# Credit Risk Analysis & Default Prediction

An end-to-end Credit Risk Analytics project using **Python, Machine Learning, MySQL, SQL, and Power BI** to analyze borrower risk, predict probability of default (PD), classify loans into risk bands, estimate expected loss, and build an interactive credit-risk dashboard.

---

## 📌 Project Overview

Credit risk analysis is a critical component of lending, helping financial institutions identify borrowers who are more likely to default and quantify the potential financial impact of those defaults.

This project builds an end-to-end credit risk analytics pipeline:

**Raw Credit Data → Data Cleaning → Feature Engineering → Exploratory Data Analysis → Machine Learning → Probability of Default → Risk Bands → Expected Loss → MySQL/SQL Analytics → Power BI Dashboard**

The project combines **data analytics, machine learning, SQL, and business intelligence** to demonstrate how credit-risk data can be transformed into actionable portfolio insights.

---

## 🎯 Business Objectives

The main objectives of this project are to:

- Analyze borrower and loan characteristics
- Identify factors associated with loan default
- Predict the Probability of Default (PD)
- Compare Logistic Regression and Random Forest models
- Segment borrowers into risk bands
- Estimate Expected Loss
- Analyze high-risk loan exposure
- Store and analyze prediction results using MySQL
- Build an interactive Power BI credit-risk dashboard
- Generate business recommendations for credit-risk monitoring

---

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Python | Data cleaning, feature engineering, EDA, machine learning |
| Pandas | Data manipulation and preprocessing |
| NumPy | Numerical analysis |
| Matplotlib | Data visualization |
| Scikit-learn | Machine learning and model evaluation |
| MySQL | Data storage and SQL analytics |
| SQL | Risk analysis and analytical views |
| Power BI | Interactive dashboard and reporting |
| Git & GitHub | Version control and project portfolio |

---

# 📂 Project Structure

```text
credit-risk-analysis/
│
├── data/
│   └── credit_risk_predictions.csv
│
├── python/
│   ├── data_cleaning.py
│   ├── eda.py
│   ├── model_training.py
│   └── predictions.py
│
├── sql/
│   ├── create_database.sql
│   ├── create_table.sql
│   └── credit_risk_views.sql
│
├── powerbi/
│   └── Credit_Risk_Dashboard.pbix
│
├── screenshots/
│   ├── page1_overview.png
│   ├── page2_drivers.png
│   ├── page3_high_risk.png
│   └── page4_model_performance.png
│
├── README.md
└── .gitignore
