# Paid Ads Common Data Model Challenge

## Overview
This project is my solution to the [Paid Ads Common Data Model Challenge](https://github.com/kobzevvv/paid-ads-common-data-model-challenge).  
The goal is to transform raw advertising platform data from **Facebook**, **TikTok**, **Bing**, and **Twitter** into a **standardized common data model (MCDM)** using **dbt** and **BigQuery**, and then visualize it in **Looker Studio**.

The business question we want to answer:  
> Where do clicks perform better — Facebook or TikTok?

---

## Tech Stack
- **Google BigQuery** → Cloud data warehouse to store raw & transformed data  
- **dbt (Data Build Tool)** → Transformations, staging, and final models  
- **Looker Studio** → Dashboard & visualizations    

---

## Data Sources
- **Facebook Ads** → `src_ads_creative_facebook_all_data`
- **TikTok Ads** → `src_ads_tiktok_ads_all_data`
- **Bing Ads** → `src_ads_bing_all_data`
- **Twitter Ads** → `src_promoted_tweets_twitter_all_data`
- **MCDM Structure** → `mcdm_paid_ads_basic_performance_structure`

---

## Data Transformation Flow

### 1. **Raw Seeds → BigQuery**
- Run `dbt seed` to load raw CSVs into BigQuery.

### 2. **Staging Models**
- One staging model per platform (`stg_*`).
- Map platform-specific fields to **MCDM standard** columns.
- Apply **type casting** to ensure schema consistency for `UNION ALL`.

## Dashboard
[dashboard](https://lookerstudio.google.com/u/0/reporting/e76fe899-1819-4abc-9ac4-50598e79e3bd/page/tEnnC)
