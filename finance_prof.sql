#Average annual income in USD?
\echo '=== Question 8: What is the average annual income in USD? ==='
SELECT AVG(annual_income_usd) AS average_annual_income_USD FROM income_cust;

#Average estimated savings in USD?
\echo '=== Question 9: What is the average estimated savings in USD? ==='
SELECT AVG(estimated_savings_usd) AS average_estimated_savings_USD FROM income_cust;

#Average amount of inheritance?
\echo '=== Question 10: What is the average amount of inheritance? ==='
SELECT AVG(inheritance_amount_local) AS average_inheritance_amount_local FROM income_cust;

#Most amount of inheritance?
\echo '=== Question 11: What is the most amount of inheritance? ==='
SELECT MAX(inheritance_amount_local) AS most_inheritance_amount_local FROM income_cust;

#Highest networth in USD?
\echo '=== Question 12: What is the highest net worth in USD? ==='
SELECT MAX(net_worth_usd) AS highest_net_worth_USD FROM income_cust;

#Average networth in USD?
\echo '=== Question 13: What is the average net worth in USD? ==='
SELECT AVG(net_worth_usd) AS average_net_worth_USD FROM income_cust;

#Highest Premium in USD?
\echo '=== Question 14: What is the highest insurance premium in USD? ==='
SELECT MAX(annual_premium_usd) AS highest_annual_premium_USD FROM insurance_cust;

#Average Premium in USD?
\echo '=== Question 15: What is the average insurance premium in USD? ==='
SELECT AVG(annual_premium_usd) AS average_annual_premium_USD FROM insurance_cust;