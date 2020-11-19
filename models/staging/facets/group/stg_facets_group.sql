with source as ( 
    
    select 
        *
    from {{ source('hpXr_Stage', 'PSA_FACETS_CMC_GRGR_GROUP') }}

), ret as (
    
    select 
        *
    from source    

)

select 
    *
from ret