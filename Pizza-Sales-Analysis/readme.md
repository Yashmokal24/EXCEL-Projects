# 🍕 Pizza Sales Analysis Dashboard (SQL + Excel)

## 📌 Project Overview

This project analyzes pizza sales data to uncover key business insights such as sales trends, top and bottom performing pizzas, revenue contribution, and order behavior.
The solution uses **MySQL for data validation and transformation** and **Excel for dashboarding and visualization**.

The goal of this project is to demonstrate an **end-to-end data analysis workflow**, from raw data to insights-driven dashboard.

---



## 📊 Dashboard Preview

![Pizza Sales Dashboard](https://raw.githubusercontent.com/Yashmokal24/EXCEL-Projects/master/Pizza-Sales-Analysis/Dashboard/pizza_sales_dashboard.png)




---

## 🛠 Tools & Technologies

* **MySQL Workbench** – Data validation, aggregation, KPI calculations
* **Microsoft Excel** – Data modeling, pivot tables, charts, and dashboard design
* **Git & GitHub** – Version control and project showcase

---

## 🔄 Project Workflow

```
Raw Data (Excel)
      ↓
MySQL (Data validation & KPI calculations)
      ↓
Cleaned / Aggregated Results
      ↓
Excel (Pivot Tables & Dashboard Visualization)
```

---

## 📁 Dataset

* Source: Pizza sales transactional dataset
* Format: Excel
* Key fields include:

  * Order date & time
  * Pizza category & size
  * Quantity sold
  * Total price

---

## 🧠 Key KPIs & Analysis

The following metrics were calculated using SQL and visualized in Excel:

* Total Revenue
* Total Orders
* Total Pizzas Sold
* Average Order Value
* Sales trend by day and month
* Sales distribution by pizza category and size
* Best and worst selling pizzas

---

## 🗄️ Data Handling (MySQL → Excel)

### Importing data into MySQL

1. Created a database in **MySQL Workbench**
2. Created required tables
3. Used **Table Data Import Wizard** to import Excel data
4. Verified row counts and values using SQL queries

### Using SQL

* Data consistency checks
* KPI calculations using `SUM`, `COUNT`, `AVG`
* Aggregations for trends and category analysis

### Exporting to Excel

* Query results were imported into Excel
* Used as the base for Pivot Tables and dashboard visuals

---

## 📈 Dashboard Features (Excel)

* KPI cards for quick business overview
* Trend charts to identify sales patterns
* Category and size-based distribution charts
* Top & bottom pizza performance analysis
* Interactive slicers and timelines for filtering

---

## 🎯 Business Value

This dashboard helps stakeholders:

* Identify peak sales periods
* Understand customer preferences
* Optimize menu offerings
* Improve sales strategy using data-driven insights

---

## 📂 Project Structure

```
Pizza-Sales-Analysis/
│
├── Dashboard/
│   └── Pizza sales Dashboard.png
│
├── Data/
│   └── pizza_sales.xlsx
│
├── Excel/
│   └── Pizza Sales Dashboard.xlsx
│
├── MySQL/
│   ├── pizza sales analysis query.sql
│   └── SQL_Validation_Document.docx
│
└── README.md
```

---





