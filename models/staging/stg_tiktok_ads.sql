with source as (
    select *
    from {{ ref('src_ads_tiktok_ads_all_data') }}
),

renamed as (
    select
        cast(ad_id as string) as ad_id,
        cast(add_to_cart as int64) as add_to_cart,
        cast(adgroup_id as string) as adset_id,
        cast(campaign_id as string) as campaign_id,
        cast('tiktok' as string) as channel,
        cast(clicks as int64) as clicks,
        cast(null as int64) as comments,
        cast(null as string) as creative_id,
        cast(date as date) as date,

        cast(coalesce(clicks,0) + coalesce(video_views,0) as int64) as engagements,

        cast(impressions as int64) as impressions,
        cast(coalesce(rt_installs,0) + coalesce(skan_app_install,0) as int64) as installs,
        cast(null as int64) as likes,
        cast(null as int64) as link_clicks,
        cast(null as string) as placement_id,
        cast(conversions as int64) as post_click_conversions,
        cast(skan_conversion as int64) as post_view_conversions,
        cast(null as int64) as posts,
        cast(purchase as int64) as purchase,
        cast(registrations as int64) as registrations,
        cast(null as int64) as revenue,
        cast(null as int64) as shares,
        cast(spend as int64) as spend,
        cast(coalesce(conversions,0) + coalesce(skan_conversion,0) as int64) as total_conversions,
        cast(video_views as int64) as video_views
    from source
)

select * from renamed
