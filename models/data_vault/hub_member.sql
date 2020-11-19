WITH source AS (

	SELECT 
		HASHBYTES('SHA1', CONCAT(UPPER(LTRIM(RTRIM(sbsb.SBSB_ID))), meme.MEME_SFX)) member_hash_key,
		GETDATE() load_date,
		'facets.cmc_meme_member' record_source,
		UPPER(LTRIM(RTRIM(sbsb.SBSB_ID))) member_id,
		meme.MEME_SFX member_suffix
	FROM {{ source('hpXr_Stage', 'PSA_FACETS_CMC_MEME_MEMBER') }} meme
		JOIN {{ source('hpXr_Stage', 'PSA_FACETS_CMC_SBSB_SUBSC') }} sbsb ON sbsb.SBSB_CK = meme.SBSB_CK
			AND sbsb.IS_CURRENT = 1
	WHERE meme.IS_CURRENT = 1

), ret AS (

    SELECT 
        *
    FROM source

)

SELECT 
    *
FROM ret