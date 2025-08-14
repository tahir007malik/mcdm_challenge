with source as (
    select *
    from {{ ref('src_ads_creative_facebook_all_data') }}
),

renamed as (
    select
        cast(ad_id as string) as ad_id,
        cast(add_to_cart as int64) as add_to_cart,
        cast(adset_id as string) as adset_id,
        cast(campaign_id as string) as campaign_id,
        cast('facebook' as string) as channel,
        cast(clicks as int64) as clicks,
        cast(comments as int64) as comments,
        cast(creative_id as string) as creative_id,
        cast(date as date) as date,

        cast(
            coalesce(likes,0) + coalesce(comments,0) + coalesce(shares,0) + coalesce(views,0)
            as int64
        ) as engagements,

        cast(impressions as int64) as impressions,
        cast(mobile_app_install as int64) as installs,
        cast(likes as int64) as likes,
        cast(inline_link_clicks as int64) as link_clicks,
        cast(null as string) as placement_id,
        cast(null as int64) as post_click_conversions,
        cast(null as int64) as post_view_conversions,
        cast(null as int64) as posts,
        cast(purchase as int64) as purchase,
        cast(complete_registration as int64) as registrations,
        cast(purchase_value as int64) as revenue,
        cast(shares as int64) as shares,
        cast(spend as int64) as spend,
        cast(coalesce(purchase,0) + coalesce(complete_registration,0) as int64) as total_conversions,
        cast(views as int64) as video_views
    from source
)

select * from renamed