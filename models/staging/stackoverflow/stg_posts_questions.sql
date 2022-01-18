with post_questions as (
    select
        id,
        title,
        answer_count,
        comment_count,
        creation_date,
        favorite_count,
        owner_user_id,
        parent_id,
        post_type_id,
        score,
        tags,
        view_count
    from {{ source('stackoverflow', 'posts_questions') }}
)

select * from post_questions