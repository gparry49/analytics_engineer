with users as (
    select
        id,
        age,
        creation_date,
        reputation,
        up_votes,
        down_votes,
        `views`
    from
        {{ source('stackoverflow', 'users') }}
)

select * from users