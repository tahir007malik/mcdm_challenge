with base as (
    select * from {{ ref('stg_facebook_ads') }}
    union all
    select * from {{ ref('stg_tiktok_ads') }}
    union all
    select * from {{ ref('stg_bing_ads') }}
    union all
    select * from {{ ref('stg_twitter_ads') }}
)

select
    *,
    case when clicks > 0 then spend / clicks else null end as cpc,  -- Cost per Click
    case when impressions > 0 then clicks / impressions else null end as ctr  -- Click Through Rate
from base