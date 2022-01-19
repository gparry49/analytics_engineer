with convert_tags_to_array as (
    select 
        *, 
        SPLIT(tags,'|') as array_tags 
    from
        {{ ref('stg_stackoverflow_posts') }}
)

select
    GENERATE_UUID() as id_surrogate_key,
    id,
    single_tag
from convert_tags_to_array,
UNNEST(array_tags) as single_tag