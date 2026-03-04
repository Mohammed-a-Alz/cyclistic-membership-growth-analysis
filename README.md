# 🚴 Cyclistic Bike-Share Analysis
### Converting Casual Riders into Annual Members Using Behavioral Data

---

## Executive Summary

Cyclistic's marketing director believes the company's future growth depends on converting casual riders into annual members — a segment finance analysts have confirmed is significantly more profitable. Using 12 months of trip data, I analyzed how casual riders and annual members use Cyclistic differently across ride timing, day of week, and ride duration.

The analysis revealed one consistent story: **members ride with purpose, casual riders ride for pleasure.** Members show classic commute patterns — weekday dominance and rush hour spikes — while casuals cluster on weekends and afternoons. Casual riders also take rides nearly twice as long as members, meaning they pay more per minute on a pay-per-use plan than they would on a membership.

Based on these findings, I recommend the marketing team targets casual riders with a weekend conversion campaign, a weekday commute trial, and time-targeted digital ads — each directly tied to a behavioral insight from the data.

---

## Business Problem

> *"How do annual members and casual riders use Cyclistic bikes differently?"*

Cyclistic offers three pricing tiers: single-ride passes, full-day passes, and annual memberships. Customers on passes are **casual riders**; subscription customers are **members**.

Rather than targeting entirely new customers, the marketing director sees a more efficient opportunity: convert existing casual riders who already know and use the product. The business question driving this analysis is understanding *what* separates casual rider behavior from member behavior — and using that gap to design a targeted conversion strategy.

---

## Methodology

The analysis followed the six-phase data analysis process: **Ask → Prepare → Process → Analyze → Share → Act**

**Data Source:** 12 months of Cyclistic historical trip data made available by Motivate International Inc. under public license. Each record contains ride start/end timestamps, station information, bike type, and rider classification (casual vs member).

| Tool | Purpose |
|------|---------|
| **Excel** | Single-month exploration — verified structure, created `ride_length` and `day_of_week` columns, built initial pivot tables |
| **Python (pandas)** | Combined all 12 CSVs, cleaned data, engineered features (`hour`, `season`, `ride_length_mins`), produced EDA visualizations |
| **SQL** | Queried cleaned dataset for aggregated summary statistics by rider type and time dimension |
| **Tableau** | Built final polished dashboard for stakeholder presentation |

**Cleaning steps included** removing rides under 1 minute (false starts), rides over 24 hours (data errors), and null values in key columns.

---

## Skills

**Python** — pandas, matplotlib, seaborn, feature engineering, EDA  
**SQL** — CTEs, GROUP BY, aggregate functions, filtering  
**Excel** — pivot tables, calculated columns, data familiarization  
**Tableau** — dashboard design, interactive filtering, data visualization  
**Data Storytelling** — hypothesis-driven analysis, translating findings into business recommendations

---

## Results & Business Recommendations

### Finding 1 — Weekend vs Weekday Split
Members ride consistently Monday through Friday. Casual riders spike sharply on Saturday and Sunday. This single pattern confirms the core behavioral divide: members use Cyclistic as a commute tool, casuals use it as a leisure activity.

### Finding 2 — Commute Spikes vs Afternoon Leisure
Members show two sharp peaks at 8am and 5pm — textbook rush hour commuting. Casual riders build gradually through the day with one afternoon peak and no morning spike. Members ride on a schedule; casuals ride when they feel like it.

### Finding 3 — Casual Riders Take Nearly Twice as Long Per Ride
Casual riders average **23.51 minutes** per ride vs **12.57 minutes** for members. Since casuals pay per ride, they are spending more per minute than a member would on an annual plan. This is the strongest cost-savings argument for conversion.

---

### 📌 Recommendations

**1. Weekend Conversion Campaign**  
Target casual riders at stations on Saturdays and Sundays with real-time messaging showing a personalized cost comparison — *"You've taken X rides this month. A membership would have saved you $Y."* Hit them while they're already on the platform and engaged.

**2. Weekday Commute Trial**  
Challenge casual riders to try Cyclistic on one weekday commute. Experiencing the product as a daily utility — not just a weekend activity — is the fastest way to shift their perception and lower the psychological barrier to committing to a membership.

**3. Afternoon Digital Ad Targeting**  
Casual riders peak between 2–6pm and cluster near parks, waterfronts, and tourist areas. Target digital ads to those specific stations and time windows rather than broad city-wide campaigns. Precision beats volume for a conversion audience.

---

## Next Steps

- **A/B test** weekend campaign messaging variations before full rollout
- **Station-level analysis** to map the top casual rider hotspots for targeted physical and digital promotions
- **Weather data enrichment** to quantify how seasonality affects casual vs member retention differently
- **Cost savings calculator** — model personalized membership savings per rider profile to sharpen the conversion pitch
- **Track campaign performance** — measure email open rates, click-through rates, and conversion lift post-campaign

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
│   └── cyclistic_queries.sql # Aggregation queries
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

*Data made available by Motivate International Inc. under public license. Completed as part of the Google Data Analytics Professional Certificate.*
