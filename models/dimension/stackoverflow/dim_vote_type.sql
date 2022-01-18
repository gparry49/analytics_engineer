with votes as (
    select
        vote_type_id,
        vote_type_name
    from
        {{ source('dbt_gparry49', 'src_vote_type') }}
)

select * from votes