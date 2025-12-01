# 🏥 **Hospital Emergency Room Dashboard – Excel Analytics Project**

This project is a complete **end-to-end Excel data analytics solution** built to analyze the performance of a hospital’s Emergency Room (ER).
It covers the **full lifecycle of analytics** — from raw data extraction to cleaning, transformation, modelling, DAX calculations, and interactive dashboard creation.

The focus of this project is not only on building visuals but also on generating **meaningful insights**, identifying **operational gaps**, and providing **actionable recommendations** that hospital management can use to improve efficiency and patient experience.

---

## 📊 **Final Dashboard Preview**

<p align="center">
  <img src="Images/Hospital_Dashboard_Final.jpg" width="900">
</p>

---

## 🎯 **Project Overview**

The Emergency Room is a highly dynamic environment where patient inflow, waiting time, staff availability, and referral patterns constantly change.
This project analyzes these factors using Excel’s advanced capabilities:

* **Power Query** was used for extensive data cleaning: removing errors, handling missing values, standardizing columns, calculating patient wait time, and generating a calendar dimension table.
* **Power Pivot** enabled a structured data model with proper relationships, ensuring reliable calculations and accurate filtering behavior across visuals.
* **DAX** measures were created to classify patients (e.g., age groups, timeliness), compute KPIs, and enhance analytical accuracy.
* A visually structured Excel Dashboard was designed to present patient load, demographics, wait time efficiency, satisfaction levels, referral departments, and key performance indicators.

---

## 🎯 **Objective of the Project**

The goal was to transform unorganized ER data into a decision-ready analytical dashboard that helps hospital administrators:

* Understand patient traffic patterns
* Identify waiting time issues and service delays
* Track age and gender-based inflow
* Analyze referral department volumes
* Monitor patient satisfaction
* Evaluate operational performance

The objective is to create insights that support **effective planning, better resource allocation, optimized triage workflows, and improved patient experience**.

---

## 🛠️ **Tools & Techniques Used**

Excel (Power Query + Power Pivot)

Data Modelling & Relationships

DAX for Calculated Fields

Interactive Excel Dashboarding

Data Cleaning & Transformation

---

## ⭐ **Key Insights**

### **1️⃣ High percentage of delayed patient handling**

Nearly **39% of patients** were not attended within the 30-minute benchmark.
This clearly points to **process slowdowns**, peak-hour overload, or insufficient staff allocation.

### **2️⃣ Major inflow comes from the 30–59 age range**

The **30–44 and 45–59** age groups dominate ER visits.
This age bracket may require more specialized staff such as internal medicine, orthopedic, and diagnostic support.

### **3️⃣ Referral trends highlight the busiest departments**

General Medicine and Orthopedics receive the highest referrals.
These departments must be prioritized for staff planning and resource distribution.

### **4️⃣ Patient satisfaction strongly correlates with waiting time**

Longer wait time directly lowers satisfaction levels.
Reducing even 5–10 minutes can significantly improve experience scores.

### **5️⃣ Gender distribution is balanced**

No demographic dominance, meaning ER planning shouldn’t rely on gender-specific assumptions.

These insights provide a foundation for targeted operational improvements.

---

## 💡 **Recommendations**

### **1️⃣ Optimize triage and initial assessment**

Implement faster triage or a “quick assessment desk” to reduce bottlenecks and streamline patient flow.

### **2️⃣ Increase staffing during high-demand time slots**

Especially for 30–59 age bracket hours and when referrals spike in General Medicine and Orthopedics.

### **3️⃣ Introduce a non-critical fast-track lane**

This will help reduce delays for low-severity cases and free staff for critical emergencies.

### **4️⃣ Monitor wait-time KPIs daily**

Dashboards can be used for quick decision-making on shift changes and load balancing.

### **5️⃣ Build department-level SLAs**

Assign performance targets for common referral departments to maintain consistency and reduce delays.

---

## 🧮 **Key DAX Measures Used**

### **Age Group Classification**

```
Age Group =
IF([Patient Age] >= 70, "70-79",
IF([Patient Age] >= 60, "60-69",
IF([Patient Age] >= 45, "45-59",
IF([Patient Age] >= 30, "30-44",
IF([Patient Age] >= 15, "15-29",
IF([Patient Age] >= 5, "05-14", "0-4"))))))
```

### **Timeliness Classification**

```
Attend Status =
IF([Patient Waittime] < 30, "Within Time", "Delayed")
```

### **Calendar Table (Power Query M Code)**

```
= List.Dates(#date(2023,01,01), 731, #duration(1,0,0,0))
```

These measures drive the KPIs and visuals in the dashboard.

---

## 📁 **Project Structure**

```
Hospital-ER-Dashboard/
│── Dashboard.xlsx
│
├── Data/
│   ├── Raw-Data.csv
│   ├── Cleaned-Data.xlsx
│   └── Calendar-Table.xlsx
│
├── Documentation/
│   └── END TO END DASHBOARD PROJECT IN EXCEL.pptx
│
├── Images/
│   └── Final-Dashboard.jpg
│
└── README.md
```

---

