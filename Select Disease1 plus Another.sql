SELECT * FROM Disease_1_PresentBW
WHERE ([DISEASE_GROUPING_2] = 1 OR [DISEASE_GROUPING_3] = 1 OR [DISEASE_GROUPING_4] = 1 OR [DISEASE_GROUPING_5] = 1 OR [DISEASE_GROUPING_6] = 1 OR HTN = 1 OR IMMUNOCOMPROMISED = 1 OR OTHER = 1)
and PATIENT_VISIT_IDENTIFIER = 73;