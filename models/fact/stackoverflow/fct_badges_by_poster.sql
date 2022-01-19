with badges as (
    select
        *
    From {{ ref('stg_badges') }}
),

posts as (
    select 
        id,
        creation_date,
        owner_user_id
    from {{ ref('stg_stackoverflow_posts') }}
),
cte as (
select 
    posts.id,
    badges.`user_id`,
    count(*) as num_badges
from posts
LEFT JOIN badges ON badges.`user_id` = posts.owner_user_id
AND badges.`date` <= posts.creation_date
GROUP BY 1,2)

select 
    GENERATE_UUID() as id_surrogate_key,
    cte.id,
    cte.`user_id`,
    case when `user_id` is not null then cte.num_badges
    else 0
    end as num_badges
from cte