with tags as (
    select
        id,
        tag_name,
        `count`
    From
        {{ ref('stg_tags') }}
)

select * from tags