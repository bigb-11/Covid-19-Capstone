WITH No_Admissions AS (
    SELECT
        PATIENT_VISIT_IDENTIFIER,
        WINDOW,
        ICU,
        ROW_NUMBER() OVER (PARTITION BY PATIENT_VISIT_IDENTIFIER ORDER BY CASE 
                                                                    WHEN WINDOW = '0-2' THEN 1
                                                                    WHEN WINDOW = '2-4' THEN 2
                                                                    WHEN WINDOW = '4-6' THEN 3
                                                                    WHEN WINDOW = '6-12' THEN 4
                                                                    WHEN WINDOW = 'ABOVE_12' THEN 5
                                                                    END) AS Window_Rank
    FROM 
        Kaggle_Sirio_Libanes_ICU_Prediction
    WHERE 
        ICU = 0
)
SELECT
    PATIENT_VISIT_IDENTIFIER,
    WINDOW AS No_ICU_Admission_Window
FROM
    No_Admissions
WHERE
    Window_Rank = 1
ORDER BY
    PATIENT_VISIT_IDENTIFIER;
