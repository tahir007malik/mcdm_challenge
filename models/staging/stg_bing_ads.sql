with source as (
    select *
    from {{ ref('src_ads_bing_all_data') }}
),

renamed as (
    select
        cast(ad_id as string) as ad_id,
        cast(null as int64) as add_to_cart,
        cast(adset_id as string) as adset_id,
        cast(campaign_id as string) as campaign_id,
        cast('bing' as string) as channel,
        cast(clicks as int64) as clicks,
        cast(null as int64) as comments,
        cast(null as string) as creative_id,
        cast(date as date) as date,

        cast(clicks as int64) as engagements,

        cast(imps as int64) as impressions,
        cast(null as int64) as installs,
        cast(null as int64) as likes,
        cast(null as int64) as link_clicks,
        cast(null as string) as placement_id,
        cast(conv as int64) as post_click_conversions,
        cast(null as int64) as post_view_conversions,
        cast(null as int64) as posts,
        cast(null as int64) as purchase,
        cast(null as int64) as registrations,
        cast(revenue as int64) as revenue,
        cast(null as int64) as shares,
        cast(spend as int64) as spend,
        cast(conv as int64) as total_conversions,
        cast(null as int64) as video_views
    from source
)

select * from renamed
