# Paid Ads Common Data Model Challenge

## Overview
This project is my solution to the [Paid Ads Common Data Model Challenge](https://github.com/kobzevvv/paid-ads-common-data-model-challenge).  
The goal is to transform raw advertising platform data from **Facebook**, **TikTok**, **Bing**, and **Twitter** into a **standardized common data model (MCDM)** using **dbt** and **BigQuery**, and then visualize it in **Looker Studio**.

The business question we want to answer:  
> Where do clicks perform better — Facebook or TikTok?

---

## Aim
Building the underlying model

## Tech Stack
- **Google BigQuery** → Cloud data warehouse to store raw & transformed data  
- **dbt (Data Build Tool)** → Transformations, staging, and final models  
- **Looker Studio** → Dashboard & visualizations    

---

## Data Sources (All of these are present in the `seeds/` of the main repo)
- **Facebook Ads** → `src_ads_creative_facebook_all_data`
- **TikTok Ads** → `src_ads_tiktok_ads_all_data`
- **Bing Ads** → `src_ads_bing_all_data`
- **Twitter Ads** → `src_promoted_tweets_twitter_all_data`
- **MCDM Structure** → `mcdm_paid_ads_basic_performance_structure`

---

## My Approach
1. Forked the original repo into my account
2. Created a dataset in Google BigQuery `paid_ads_challenge`
3. Created a project in dbt cloud: `cdmc_challenge`
4. Integrated dbt cloud with Google BigQuery
5. Ran `dbt seed` (This will create tables in BigQuery)
6. Created staging models (renaming columns from raw seeds into standard ones mentioned in `mcdm_paid_ads_basic_performance_structure`) & at last calculate the metrics for CPC, clicks & spends etc
7. Created new folder models/staging/
8. For each Facebook, Twitter, Bing and TikTok: Create its model for eg. stg_facebook_ads.sql, stg_tiktok_ads.sql, stg_bing_ads.sql, stg_twitter_ads 
9. After that in dbt IDE CLI: dbt run --select stg_facebook_ads stg_tiktok_ads stg_bing_ads stg_twitter_ads (This would create mapped tables)
Note: Make sure every column in all staging models: has the same type, is explicitly cast to that type

10. Once you are done with staging by mapping all 4 ads_source according to `mcdm_paid_ads_basic_performance_structure` union them into `paid_ads_basic_performance.sql`
11. Run > dbt run --select paid_ads_basic_performance
12. Go to BigQuery again and select `paid_ads_basic_performance` table
13. Look for open with option and select Looker Studio
14. Make the dashboard according to the given .gif provided in the original repo 

## Dashboard
[Looker](https://lookerstudio.google.com/u/0/reporting/e76fe899-1819-4abc-9ac4-50598e79e3bd/page/tEnnC)
