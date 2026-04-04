#!/bin/bash

echo "Starting FHIR ingestion..."

python3 ingestion/fhir_ingest.py

echo "Loading terminology mapping..."

sudo -u postgres psql -d fhir_db -f biomarker_extraction/loinc_terminology.sql

echo "Extracting biomarkers..."

sudo -u postgres psql -d fhir_db -f biomarker_extraction/metabolic_biomarkers.sql

echo "Exporting feature table..."

sudo -u postgres psql -d fhir_db -c "\COPY patient_features TO 'data/patient_features.csv' CSV HEADER"

echo "Running ML model..."

python3 modeling/glycemic_risk_model.py

echo "Pipeline complete."
