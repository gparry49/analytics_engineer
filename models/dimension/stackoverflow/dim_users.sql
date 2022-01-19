with users as (
    select
        id,
        creation_date,
        reputation,
        up_votes,
        down_votes
    from
        {{ ref('stg_users') }}

)

select * from users