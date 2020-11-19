WITH source AS (

	SELECT 
		HASHBYTES('SHA1', LTRIM(RTRIM(grgr.GRGR_ID))) group_hash_key,
		GETDATE() load_date,
		'facets.cmc_grgr_group' record_source,
		UPPER(LTRIM(RTRIM(grgr.GRGR_ID))) group_id
	FROM {{ source('hpXr_Stage', 'PSA_FACETS_CMC_GRGR_GROUP') }} grgr
	WHERE grgr.IS_CURRENT = 1

), ret AS (

    SELECT 
        *
    FROM source

)

SELECT 
    *
FROM ret