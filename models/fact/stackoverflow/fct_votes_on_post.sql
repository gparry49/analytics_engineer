with votes as (
    select
        post_id,
        vote_type_id
    from {{ ref('stg_votes') }}
),
posts as (
    select
        id
    from {{ ref('stg_stackoverflow_posts') }}
),
_output as (
select 
    votes.post_id,
    votes.vote_type_id,
    count(*) as num_votes
from votes
join posts on posts.id = votes.post_id
group by 1,2
)
select
    GENERATE_UUID() as id_surrogate_key,
    *
from _output
