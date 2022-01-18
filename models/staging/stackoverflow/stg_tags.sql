with tags as (
    select
        id,
        tag_name,
        `count`
    From
        {{ source('stackoverflow', 'tags') }}
)

select * from tags