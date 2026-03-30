![SQL](https://img.shields.io/badge/SQL-BigQuery-blue)
![Excel](https://img.shields.io/badge/Excel-green)
![Python](https://img.shields.io/badge/Python-3.x-blue)
![Pandas](https://img.shields.io/badge/Pandas-green)
![Seaborn](https://img.shields.io/badge/Seaborn-orange)


# Cyclistic Membership Growth Analysis

## Executive Summary

Cyclistic is a Chicago-based bike-share company operating a large fleet of bicycles and offering flexible ride options, including single-ride passes and annual memberships.

The company’s long-term growth strategy focuses on increasing the number of annual members. Analysis of trip-level ride data reveals clear behavioral differences between annual members and casual riders. Members exhibit commuter-driven usage patterns, while casual riders demonstrate leisure-oriented behavior.

These differences highlight defined conversion opportunities among high-frequency casual riders and support a targeted membership redesign strategy.

**Key Findings:**
- Casual riders have ~50% longer average ride durations than members
- Members peak during commute hours; casuals peak on weekend afternoons
- High-frequency casual riders with weekday usage patterns represent the highest conversion opportunity

This analysis enables Cyclistic to focus on high-probability conversion segments, improving marketing efficiency and increasing membership adoption.

---

## 📊 Dashboard Preview

This dashboard visualizes key behavioral differences between annual members and casual riders, highlighting ride patterns, usage trends, and segmentation insights.

![Dashboard Overview](images/dashboard_all.png)

---

## Dataset
Public trip data provided by Motivate International Inc. via the City of Chicago.
Covers ride-level records including start/end times, station info, and rider type.

[Download the data here](https://divvy-tripdata.s3.amazonaws.com/index.html)

---

## Business Problem

Cyclistic believes future growth depends on maximizing annual memberships. Rather than focusing solely on acquiring new customers, the company aims to convert existing casual riders into annual members.

The key question:

**How can Cyclistic identify and target casual riders whose behavior aligns with the value of annual membership?**

Understanding behavioral differences between rider segments is essential for designing effective conversion strategies.

---

## Methodology

### Skills

**Excel**
- Data inspection  
- Pivot analysis  
- Validation checks  

**SQL**
- BigQuery SQL 
- Aggregate functions  
- GROUP BY and ORDER BY  
- Exploratory analysis by rider type, weekday, and month  

**Python**
- Pandas (data cleaning & transformation)  
- Feature engineering  
- Data visualization (Matplotlib, Seaborn)  
- Behavioral analysis

---

### Data Preparation

1. Combined and validated trip-level datasets  
2. Removed unrealistic or invalid ride duration values  
3. Engineered analytical features:   
   - Ride length
   - Day of week
   - Hour of day

---

### Segmentation

Riders were behaviorally segmented into two primary groups:

1. **Commuter-oriented riders**  
   - Weekday ride concentration  
   - Commute-hour usage patterns  

2. **Leisure-focused riders**  
   - Weekend-heavy usage  
   - Longer average ride durations  

This segmentation framework helped identify riders with the highest conversion potential.

---

## Insights

### Members Ride for Commuting, Casuals Ride for Leisure

![Rides by Hour of Day](images/membervscasuals1.png)

Annual members demonstrate strong weekday usage patterns consistent with commuter behavior.

Casual riders show increased weekend concentration and seasonal spikes, indicating leisure-oriented usage.

Casual rides are significantly longer on average, reinforcing the behavioral distinction between rider segments.

---

### Members Follow a Classic Commuter Pattern

![Rides by Hour of Day](images/Rides_hour_of_day1.png)

Members exhibit pronounced peaks during traditional commute hours (morning and evening).

Casual riders display a gradual afternoon increase without sharp commute spikes.

---
### Growth Requires Redesigning Membership Around Leisure Usage

A subset of casual riders demonstrates repeat ride patterns that align with the economic value of annual membership.

These behavioral differences reveal clear segmentation and defined conversion opportunities.

![Behavioral Insight](images/Insight1.png)

---

## Recommendation

Analysis indicates that a subset of casual riders demonstrates repeat usage patterns similar to annual members, particularly during weekdays and peak commuting hours.

The highest-impact growth opportunities include:

- Targeting high-frequency casual riders who exhibit weekday riding behavior with personalized membership offers
- Launching seasonal campaigns during peak summer and weekend periods to capture leisure-driven demand
- Positioning membership value around cost savings for riders with recurring usage patterns
- Introducing limited-time trial memberships to reduce conversion friction among frequent casual users

Focusing on behavior-based targeting rather than broad acquisition will improve conversion efficiency and increase membership adoption.

---

## Next Steps

- Define high-frequency casual rider criteria based on ride count, duration, and weekday usage patterns
- Track rider cohorts over time to identify consistent usage behavior and conversion readiness
- Test targeted membership offers on identified segments and measure conversion rates
- Monitor performance of campaigns and refine targeting strategy based on observed behavior
