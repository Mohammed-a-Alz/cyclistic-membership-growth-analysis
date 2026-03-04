# 🚴 Cyclistic Bike-Share Analysis
### How Do Casual Riders & Annual Members Use Cyclistic Differently?

---

## 1. Executive Summary

Cyclistic is a Chicago-based bike-share company with 5,800+ bicycles across 692 stations. The marketing director believes the company's future growth depends on converting casual riders into annual members, as members are significantly more profitable.

This analysis examines 12 months of Cyclistic trip data to identify behavioral differences between casual riders and annual members. Three clear patterns emerged — differences in day of week, time of day, and ride length — each pointing to the same conclusion: **casual riders ride for leisure, members ride with purpose.** These insights directly inform three targeted marketing recommendations to drive membership conversion.

---

## 2. Business Problem

> *"How do annual members and casual riders use Cyclistic bikes differently?"*

Cyclistic offers three pricing tiers: single-ride passes, full-day passes, and annual memberships. Customers on passes are classified as **casual riders**; subscription customers are **members**.

Finance analysis has confirmed that annual members generate significantly more revenue than casual riders. Rather than targeting entirely new customers, the marketing director sees an opportunity to convert existing casual riders — people who already know and use the product — into paying members.

The challenge: understand what separates casual rider behavior from member behavior, and use those insights to design a conversion strategy.

---

## 3. Methodology

The analysis followed the six-phase data analysis process: **Ask → Prepare → Process → Analyze → Share → Act**

**Data Source**
12 months of Cyclistic historical trip data (made available by Motivate International Inc. under public license). Each record contains ride start/end time, station information, bike type, and rider type (casual vs member).

**Tools Used**

| Tool | Purpose |
|------|---------|
| Excel | Initial data exploration on a single month subset — verified column structure, created `ride_length` and `day_of_week` columns |
| Python (pandas) | Cleaned and combined all 12 monthly CSV files into a single dataframe, removed invalid rides, engineered features |
| SQL | Queried the cleaned dataset to generate aggregated summary statistics by rider type |
| Tableau | Built final polished visualizations for stakeholder presentation |

**Data Cleaning Steps (Python)**
- Converted `started_at` and `ended_at` to datetime
- Calculated `ride_length` in minutes
- Removed rides under 1 minute (false starts) and over 1,440 minutes (24 hours)
- Extracted `hour`, `day_of_week`, `month`, and `season` columns
- Removed null values in key columns

---

## 4. Skills

- **Python** — pandas, matplotlib, seaborn (data cleaning, EDA, visualization)
- **SQL** — aggregations, GROUP BY, filtering, summary statistics
- **Excel** — pivot tables, calculated columns, data familiarization
- **Tableau** — interactive dashboard design
- **Data Storytelling** — translating findings into actionable business recommendations
- **Critical Thinking** — hypothesis formation before analysis, filtering insights by business relevance

---

## 5. Results & Business Recommendations

### Finding 1 — Casual Riders Peak on Weekends, Members on Weekdays
Members ride consistently Monday through Friday, indicating commute-driven behavior. Casual riders spike on Saturday and Sunday, revealing leisure-driven usage. The gap between these two patterns is the core conversion opportunity.

### Finding 2 — Members Show Commute Spikes, Casuals Build Gradually
Members show two sharp peaks at 8am and 5pm — classic rush hour commute patterns. Casual riders build slowly through the day with a single afternoon peak and no morning spike. This confirms members treat Cyclistic as a utility while casuals treat it as entertainment.

### Finding 3 — Casual Riders Take Longer Rides
Casual riders average **23.51 minutes** per ride compared to **12.57 minutes** for members — nearly double. Since casuals pay per ride, they are effectively paying more per minute than members would. This creates a compelling cost-savings argument for membership.

---

### 📌 Recommendations

**1. Weekend Conversion Campaign**
Target casual riders in real time on Saturdays and Sundays with station-level messaging showing a personalized cost comparison — *"You rode X times this month. A membership would have saved you $Y."* Strike while they are already engaged.

**2. Commute Trial Campaign**
Challenge casual riders to try Cyclistic once on a weekday commute. Experiencing the product as a daily utility — rather than a weekend leisure activity — is the fastest way to shift their perception and lower the commitment barrier to membership.

**3. Afternoon Digital Ad Targeting**
Casual riders are most active between 2–6pm, clustering near parks, waterfronts, and tourist areas. Target digital ads to those specific stations and time windows rather than running city-wide campaigns. Precision over volume.

---

## 6. Next Steps

- **Enrich the dataset** with weather data to quantify how temperature affects casual vs member ridership differently
- **Station-level analysis** to identify the top casual rider hotspots for targeted physical promotions
- **Cost modeling** — calculate actual savings per casual rider profile to personalize the membership pitch
- **A/B test** the weekend conversion campaign messaging before full rollout
- **Build a Tableau Public dashboard** for interactive stakeholder exploration of the findings

---

## 📁 Repository Structure

```
cyclistic-bike-share-analysis/
│
├── data/
│   ├── raw/                  # Original monthly CSV files
│   └── cleaned/              # Cleaned combined dataset
│
├── notebooks/
│   └── cyclistic_eda.ipynb   # Full Python analysis notebook
│
├── sql/
│   └── cyclistic_queries.sql # Summary queries
│
├── visualizations/
│   ├── rides_by_hour_of_day.png
│   ├── ride_count_by_day.png
│   └── avg_ride_length.png
│
├── presentation/
│   └── Cyclistic_Analysis.pptx
│
└── README.md
```

---

*Data made available by Motivate International Inc. under public license. This is a capstone project completed as part of the Google Data Analytics Professional Certificate.*
