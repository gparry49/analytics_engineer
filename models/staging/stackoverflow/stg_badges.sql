with badges as (
    select
        id,
        `name`,
        `date`,
        `user_id`
    from {{ source('stackoverflow', 'badges') }}
)

select * from badges