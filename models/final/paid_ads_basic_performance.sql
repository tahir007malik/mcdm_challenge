select * from {{ ref('stg_facebook_ads') }}
union all
select * from {{ ref('stg_tiktok_ads') }}
union all
select * from {{ ref('stg_bing_ads') }}
union all
select * from {{ ref('stg_twitter_ads') }}