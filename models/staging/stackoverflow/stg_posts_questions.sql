with questions as (

    select 
        *

    from {{ source('stackoverflow', 'posts_questions') }}
)

select * from questions