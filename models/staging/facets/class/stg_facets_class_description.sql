with source as ( 
    
    select 
        *
    from {{ source('hpXr_Stage', 'PSA_FACETS_CMC_CSPD_DESC') }}

), ret as (
    
    select 
        *
    from source    

)

select 
    *
from ret