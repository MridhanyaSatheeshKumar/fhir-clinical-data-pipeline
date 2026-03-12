SELECT
    patient_id,
    loinc_code,
    test_name,
    value,
    unit,
    observation_date
FROM observations
WHERE loinc_code IN (
    '2339-0',   -- Glucose
    '4548-4',   -- HbA1c
    '2571-8',   -- Triglycerides
    '38483-4',  -- Creatinine
    '6299-2',   -- Urea Nitrogen
    '2947-0',   -- Sodium
    '6298-4',   -- Potassium
    '39156-5',  -- BMI
    '29463-7'   -- Body Weight
)
ORDER BY patient_id, observation_date;
