# Load sql for loading raw-data
CREATE TABLE IF NOT EXISTS raw_claim_line_837p (
     Claim_ID string
    ,Record_Type string
    ,Service_Line_Number string
    ,Date_Time_Qualifier string
    ,Date_Time_Period_Qualifier string
    ,Service_Date string
    ,Place_of_Service string
    ,Procedure_Code_Qualifier string
    ,Procedure_Code string
    ,Procedure_Modifier_1 string
    ,Procedure_Modifier_2 string
    ,Procedure_Modifier_3 string
    ,Procedure_Modifier_4 string
    ,Service_Line_Charge_Amount string
    ,Service_Line_Unit_Count string
    ,Unit_or_Basis_for_Measurement_Code string
    ,Service_Line_Revenue_Code string
    ,Diagnosis_Code_Pointer_1 string
    ,Diagnosis_Code_Pointer_2 string
    ,Diagnosis_Code_Pointer_3 string
    ,Diagnosis_Code_Pointer_4 string
    ,Service_Line_ID_Qualifier string
    ,Drug_Identification string
    ,Emergency_Indicator string
    )
USING PARQUET OPTIONS (header true, path '{parameters.claim_line_837p_path}')
CLUSTERED BY (claim_id) SORTED BY (claim_id) INTO {parameters.bucket_count} BUCKETS
