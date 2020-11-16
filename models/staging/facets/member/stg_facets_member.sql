with cmc_meme_member as ( 
    
    select 
        *
    from {{ source('hpXr_Stage', 'PSA_FACETS_CMC_MEME_MEMBER') }}

), ret as (
    
    select 
        *
    from cmc_meme_member    

)

select 
    *
from ret