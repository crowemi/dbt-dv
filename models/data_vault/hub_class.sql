WITH source AS (

	SELECT 
		HASHBYTES('SHA1', CONCAT(LTRIM(RTRIM(grgr.GRGR_ID)), LTRIM(RTRIM(cscs.CSCS_ID)))) class_hash_key,
        GETDATE() load_date,
        'facets.cmc_cscs_class' record_source,
		LTRIM(RTRIM(grgr.GRGR_ID)) grgr_id,
		LTRIM(RTRIM(cscs.CSCS_ID)) class_id
	FROM {{ source('hpXr_Stage', 'PSA_FACETS_CMC_CSCS_CLASS') }} cscs
        JOIN {{ source('hpXr_Stage', 'PSA_FACETS_CMC_GRGR_GROUP') }} grgr ON grgr.GRGR_CK = cscs.GRGR_CK    
            AND grgr.IS_CURRENT = 1
	WHERE cscs.IS_CURRENT = 1

), ret AS (

    SELECT 
        *
    FROM source

)

SELECT 
    *
FROM ret