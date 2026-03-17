# FHIR Clinical Data Pipeline for Biomarker-Based Glycemic Risk Prediction

This project builds an end-to-end clinical data pipeline using FHIR healthcare data to extract metabolic biomarkers and train a predictive machine learning model for glycemic risk.

## Pipeline Architecture

FHIR Clinical Data
        ↓
FHIR API ingestion
        ↓
PostgreSQL clinical database
        ↓
LOINC-based biomarker extraction
        ↓
Feature engineering
        ↓
Machine learning model for glycemic risk prediction

## Technologies

- FHIR clinical interoperability standard
- PostgreSQL database
- LOINC biomarker coding
- Python data pipeline
- scikit-learn machine learning

## Project Components

### 1. Data Ingestion
FHIR resources are ingested and normalized into a relational clinical database.

### 2. Biomarker Extraction
Metabolic biomarkers such as glucose, triglycerides, creatinine, and BMI are extracted using LOINC-coded observations.

### 3. Feature Engineering
Patient-level feature tables are constructed for modeling.

### 4. Predictive Modeling
A logistic regression model predicts glycemic risk based on metabolic biomarkers.

## Research Direction

This project demonstrates a prototype pipeline for:

Clinical Data + Biomarkers + AI → Precision Nutrition and Metabolic Risk Prediction
