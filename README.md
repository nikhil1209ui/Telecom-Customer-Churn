# 📊 Telecom Customer Churn Prediction – End-to-End MLOps & Business Intelligence System  

---

### 🚀 Overview  
In today’s hyper-competitive telecom market, **customer retention** is as crucial as acquisition.  
This project delivers a **production-grade Machine Learning + MLOps pipeline** that predicts customer churn, identifies key drivers, and provides **real-time monitoring and BI dashboards**.  

💡 Integrated Stack:  
- **Data Engineering**: SQL Server  
- **Machine Learning**: Random Forest + SMOTEENN  
- **MLOps**: GCP, Docker, Terraform, CI/CD  
- **Monitoring**: Prometheus + Grafana  
- **Visualization**: Power BI  

---

## 🧠 Introduction  
Customer churn directly impacts telecom profitability.  
This project leverages **advanced ML pipelines** and **MLOps automation** to:  
- Predict which customers are at risk  
- Identify *why* they are churning  
- Empower business teams with actionable insights  

---

## 💼 Business Context  
A leading telecom provider faced a rising churn rate impacting revenue and marketing ROI.  
The business goal:  
> Build a predictive system that identifies potential churners early and recommends retention strategies.

This end-to-end solution merges **data analytics, cloud automation, and BI dashboards** to deliver strategic, real-time intelligence.  

---

## 🏆 Key Achievements  

✅ **96.6% precision** & **96.2% accuracy** using Random Forest (SMOTEENN balanced).  
✅ **Fully automated MLOps pipeline** with Terraform, Docker, and CI/CD.  
✅ **Deployed to GCP Cloud Run** with containerized scaling.  
✅ **Live monitoring stack** using Prometheus & Grafana.  
✅ **Executive Power BI dashboards** visualizing churn, retention, and profitability.  

---

## ⚙️ System Architecture  

```plaintext
                  ┌────────────────────────────┐
                  │   Telecom Churn Dataset    │
                  └────────────┬───────────────┘
                               │
                    Data Ingestion (SQL/GCS)
                               │
                    ┌──────────▼───────────┐
                    │ Data Preprocessing   │
                    │  (Feature Engg, EDA) │
                    └──────────┬───────────┘
                               │
                     Model Training (Sklearn)
                               │
                    ┌──────────▼───────────┐
                    │ Model Registry (GCS) │
                    └──────────┬───────────┘
                               │
                 CI/CD (GitHub Actions + Docker)
                               │
                     Cloud Deployment (GCP Run)
                               │
                    ┌──────────▼───────────┐
                    │ Monitoring Stack     │
                    │ Prometheus + Grafana │
                    └──────────┬───────────┘
                               │
                    📊 Power BI Visualization
```
---

## 🧩 Technologies Used

| **Category** | **Tools & Technologies** |
|---------------|---------------------------|
| **Programming** | Python, SQL |
| **Libraries** | Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn, Imbalanced-learn |
| **ML Algorithm** | Random Forest Classifier |
| **Data Engineering** | SQL Server, Azure Data Factory |
| **Cloud & Infra** | GCP (Cloud Run, GCS, IAM), Terraform |
| **Containerization** | Docker |
| **CI/CD** | GitHub Actions |
| **Monitoring** | Prometheus, Grafana |
| **Visualization** | Power BI |
| **App Framework** | Streamlit |

---

## 🔁 Project Workflow

---

### **1️⃣ Data Collection & Preprocessing**

- Imported raw telecom data into **SQL Server**.  
- Cleaned and standardized fields, removed duplicates.  
- Split data into **training (active/churned customers)** and **testing (new customers)** sets.

---

### **2️⃣ Exploratory Data Analysis (EDA)**

- Visualized key churn patterns using **Seaborn** and **Matplotlib**.  
- Identified top churn indicators:
  - Month-to-month contracts 📉  
  - Electronic check payments 💳  
  - Short tenure customers ⏳  

🖼️ *[Insert EDA Visualizations — e.g., `images/eda_visuals.png`]*  

---

### **3️⃣ ETL & Power BI Pipeline**

- Automated data flow from **SQL → Power BI** using direct queries.  
- Dashboards highlight:
  - Churn Rate by State, Contract, and Gender  
  - Customer Lifetime Value (LTV)  
  - Total Revenue vs Retention  

🖼️ *[Insert Power BI Dashboard Image — e.g., `images/powerbi_dashboard.png`]*  

---

### **4️⃣ Machine Learning Model**

- **Algorithm**: Random Forest Classifier  
- **Sampling Strategy**: SMOTEENN for class balancing  
- **Preprocessing**: OneHotEncoding + normalization  

#### 🧮 Evaluation Metrics

| **Metric** | **Score** |
|-------------|-----------|
| Accuracy | 96.2% |
| Precision | 96.6% |
| Recall | 95.9% |
| F1-Score | 96.2% |

🖼️ *[Insert Feature Importance Plot — e.g., `images/feature_importance.png`]*  

---

### **5️⃣ MLOps Automation**

- Containerized **Streamlit app + Model API** with Docker.  
- **Terraform** provisions GCP infra (GCS, Cloud Run, IAM).  
- **GitHub Actions** automates CI/CD pipelines.  

#### 🧰 CI/CD Workflow Example:
```yaml
name: CI/CD - Build and Deploy
on: [push]
jobs:
  build:
    steps:
      - Checkout
      - Build & Push Docker Image
      - Deploy to Cloud Run

