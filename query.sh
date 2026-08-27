#!/bin/bash
PSQL="psql --username=postgres --dbname=AML_MULTICURRENCY"

echo '--- Customer Demographic Analysis ---'
$PSQL -f sql/01_cust_demographic.sql
echo '--- Finance Profile Analysis ---'
$PSQL -f sql/02_finance_prof.sql
echo '--- AML Risk Analysis ---'
$PSQL -f sql/03_aml_risk_analysis.sql