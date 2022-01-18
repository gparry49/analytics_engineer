with posts as (
    select 
        * 
    from 
    {{ ref('stg_stackoverflow_posts') }}
)

select 
    *
from posts
    