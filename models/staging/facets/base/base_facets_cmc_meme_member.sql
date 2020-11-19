WITH source AS (

    SELECT 
        HPXR_UID,
        RECORD_UID,
        RECORD_HASH,
        DATA_SOURCE_ID,
        CHANGE_DT,
        IS_CURRENT,
        MEME_CK,
        GRGR_CK,
        SBSB_CK,
        MEME_SFX,
        MEME_REL,
        MEME_ID_NAME,
        LTRIM(RTRIM(MEME_LAST_NAME)) AS MEME_LAST_NAME,
        MEME_FIRST_NAME,
        MEME_MID_INIT,
        MEME_TITLE,
        MEME_ORIG_EFF_DT,
        MEME_SSN,
        MEME_SEX,
        MEME_BIRTH_DT,
        MEME_WRK_PHONE,
        MEME_WRK_PHONE_EXT,
        MEME_MCTR_STS,
        MEME_MCTR_LANG,
        MEME_RECORD_NO,
        MEME_LATE_ENR_IND,
        MEME_MARITAL_STATUS,
        MEME_HICN,
        MEME_MEDCD_NO,
        MEME_FAM_LINK_ID,
        SBAD_TYPE_HOME,
        SBAD_TYPE_MAIL,
        SBAD_TYPE_WORK,
        MEME_LAST_NAME_XLOW,
        MEME_CCC_START_DT,
        MEME_CCC_END_DT,
        MEME_PREX_EFF_DT,
        MEME_PRX_CRED_DAYS,
        MEME_EXC_CRED_DAYS,
        MEME_MCTR_ATYP,
        MEME_ELIG_DT,
        MEME_QUALIFY_DT,
        MEME_NEW_SIG_DT,
        MEME_PRBL_IND,
        MEME_PRBL_EFF_DT,
        MEME_EOI_TERM_DT,
        MEME_PREX_TERM_DT,
        MEME_PREX_LIMIT1,
        MEME_PREX_LIMIT2,
        MEME_PREX_LIMIT3,
        MCRL_MEME_CREL_CD,
        MEME_HIST_LINK_ID,
        MEME_CELL_PHONE,
        MEME_HEALTH_ID,
        MEME_LOCK_TOKEN,
        ATXR_SOURCE_ID,
        SYS_LAST_UPD_DTM,
        SYS_USUS_ID,
        SYS_DBUSER_ID,
        MEMM_ROW_ID,
        MEME_MCTR_RACE_NVL,
        MEME_MCTR_ETHN_NVL,
        MEME_EDI_RE_CODE_NVL,
        MEME_EDI_RE_SOURCE_NVL,
        MEME_MCTR_GENP_NVL
    FROM {{ source('hpXr_Stage', 'PSA_FACETS_CMC_MEME_MEMBER') }}


), ret AS (

    SELECT
        *
    FROM source 

)

SELECT * FROM ret
