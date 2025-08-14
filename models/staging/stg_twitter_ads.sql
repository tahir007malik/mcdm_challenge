with source as (
    select *
    from {{ ref('src_promoted_tweets_twitter_all_data') }}
),

renamed as (
    select
        cast(null as string) as ad_id,                          -- string
        cast(null as int64) as add_to_cart,                     -- int64
        cast(null as string) as adset_id,                       -- string
        cast(campaign_id as string) as campaign_id,             -- string
        cast('twitter' as string) as channel,                   -- string
        cast(clicks as int64) as clicks,                        -- int64
        cast(comments as int64) as comments,                    -- int64
        cast(null as string) as creative_id,                    -- string
        cast(date as date) as date,                             -- date
        cast(engagements as int64) as engagements,              -- int64
        cast(impressions as int64) as impressions,              -- int64
        cast(null as int64) as installs,                        -- int64
        cast(likes as int64) as likes,                          -- int64
        cast(url_clicks as int64) as link_clicks,                -- int64
        cast(null as string) as placement_id,                   -- string
        cast(null as int64) as post_click_conversions,          -- int64
        cast(null as int64) as post_view_conversions,           -- int64
        cast(null as int64) as posts,                           -- int64
        cast(null as int64) as purchase,                        -- int64
        cast(null as int64) as registrations,                   -- int64
        cast(null as int64) as revenue,                         -- int64
        cast(retweets as int64) as shares,                      -- int64
        cast(spend as int64) as spend,                          -- int64
        cast(null as int64) as total_conversions,               -- int64
        cast(video_total_views as int64) as video_views         -- int64
    from source
)

select * from renamed