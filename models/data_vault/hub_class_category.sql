WITH source AS (

	SELECT 
		HASHBYTES('SHA1', LTRIM(RTRIM(cspd.CSPD_CAT))) class_category_hash_key,
		GETDATE() load_date, 
		'facets.cmc_cspd_desc' record_source,
		LTRIM(RTRIM(cspd.CSPD_CAT)) class_category_id
	FROM {{ source('hpXr_Stage', 'PSA_FACETS_CMC_CSPD_DESC') }} cspd
	WHERE cspd.IS_CURRENT = 1

), ret AS (

    SELECT 
        *
    FROM source

)

SELECT 
    *
FROM ret