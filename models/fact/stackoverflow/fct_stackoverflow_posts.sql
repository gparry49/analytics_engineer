with posts as (
    select
        id,
        post_title,
        answer_count,
        comment_count,
        creation_date,
        favorite_count,
        owner_user_id,
        score,
        tags,
        view_count
    from 
    {{ ref('stg_stackoverflow_posts') }}
)

select 
    *
from posts
    