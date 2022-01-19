with questions as (

    select 
        id,
        title as post_title,
        answer_count,
        comment_count,
        creation_date,
        favorite_count,
        owner_user_id,
        score,
        tags,
        view_count

    from {{ source('stackoverflow', 'stackoverflow_posts') }}
    where answer_count = 0
)

select * from questions