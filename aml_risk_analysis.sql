#Customers with disproportionately high insurance premiums relative to annual income
\echo '=== Question 16: Customers with disproportionately high insurance premiums relative to annual income ==='
SELECT
e.customer_id, e.annual_income_usd, i.annual_premium_usd,
ROUND(i.annual_premium_usd::numeric / e.annual_income_usd, 2) 
AS premium_to_income_ratio
FROM income_cust e
JOIN insurance_info i
ON e.customer_id = i.customer_id
ORDER BY premium_to_income_ratio DESC
LIMIT 20;

#Customers with unusually high net worth relative to annual income and have no known inheritance
\echo '=== Question 17: Customers with unusually high net worth relative to annual income and have no known inheritance  ==='
SELECT c.customer_id, e.annual_income_usd, e.net_worth_usd,
ROUND(e.net_worth_usd / e.annual_income_usd, 2) AS networth_to_income_ratio
FROM customers c
JOIN income_cust e
ON c.customer_id = e.customer_id
WHERE (e.net_worth_usd / e.annual_income_usd) > 10 AND e.inheritance_amount_local = 0;

#Countries with the highest average customer wealth 
\echo '=== Question 18: Countries with the highest average customer wealth  ==='
SELECT c.country, AVG(e.net_worth_usd) AS average_net_worth
FROM customers c
JOIN income_cust e
ON c.customer_id = e.customer_id   
GROUP BY c.country
ORDER BY average_net_worth DESC;

#Customers with unusually high income relative to their working years 
\echo '=== Question 19: Customers with unusually high income relative to their working years ==='
SELECT c.customer_id, c.years_working, i.annual_premium_usd,
ROUND(i.annual_premium_usd / c.years_working, 2) AS premium_to_working_years_ratio
FROM customers c
JOIN insurance_info i
ON c.customer_id = i.customer_id
WHERE (i.annual_premium_usd / c.years_working) > 1000;

#Customers that have both high premium-to-income and net-worth-to-income ratios
\echo '=== Question 20:  Customers that have both high premium-to-income and net-worth-to-income ratios ==='
SELECT
c.customer_id, e.annual_income_usd, e.net_worth_usd, i.annual_premium_usd,
ROUND(i.annual_premium_usd / e.annual_income_usd, 2) AS premium_to_income_ratio,
ROUND(e.net_worth_usd / e.annual_income_usd, 2) AS networth_to_income_ratio
FROM customers c
JOIN income_cust e
ON c.customer_id = e.customer_id
JOIN insurance_info i
ON c.customer_id = i.customer_id
ORDER BY premium_to_income_ratio DESC
LIMIT 20;