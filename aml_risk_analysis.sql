#Customers with disproportionately high payment amount relative to annual income
\echo '=== Question 16: Customers with disproportionately high payment amount relative to annual income ==='
SELECT c.customer_id, c.annual_income_usd, i.annual_premium_usd, 
(i.annual_premium_usd / c.annual_income_usd) AS premium_to_income_ratio
FROM customer c
JOIN insurance_info i 
ON c.customer_id = i.customer_id
WHERE (i.annual_premium_usd / c.annual_income_usd) > 0.5;

#Customers with unusually high net worth relative to annual income and have no known inheritance
\echo '=== Question 17: Customers with unusually high net worth relative to annual income and have no known inheritance  ==='
SELECT c.customer_id, c.annual_income_usd, e.net_worth_usd,
(e.net_worth_usd / c.annual_income_usd) AS networth_to_income_ratio
FROM customer c
JOIN income_cust e
ON c.customer_id = e.customer_id
WHERE (e.net_worth_usd / c.annual_income_usd) > 10 AND e.inheritance_amount_local IS NULL;

#Countries with the highest average customer wealth 
\echo '=== Question 18: Countries with the highest average customer wealth  ==='
SELECT c.country, AVG(e.net_worth_usd) AS average_net_worth
FROM customer c
JOIN income_cust e
ON c.customer_id = e.customer_id   
GROUP BY c.country
ORDER BY average_net_worth DESC;

#Customers with unusually high income relative to their working years 
\echo '=== Question 19: Customers with unusually high income relative to their working years ==='
SELECT c.customer_id, c.years_working, i.annual_premium_usd,
(i.annual_premium_usd / c.years_working) AS premium_to_working_years_ratio
FROM customer c
JOIN insurance_info i
ON c.customer_id = i.customer_id
WHERE (i.annual_premium_usd / c.years_working) > 1000;

#Customers that have both high premium-to-income and net-worth-to-income ratios
\echo '=== Question 20:  Customers that have both high premium-to-income and net-worth-to-income ratios ==='
SELECT
c.customer_id, c.annual_income_usd, e.net_worth_usd, i.annual_premium_usd,
(i.annual_premium_usd / c.annual_income_usd) AS premium_to_income_ratio,
(e.net_worth_usd / c.annual_income_usd) AS networth_to_income_ratio
FROM customer c
JOIN income_cust e
ON c.customer_id = e.customer_id
JOIN insurance_info i
ON c.customer_id = i.customer_id
WHERE (i.annual_premium_usd / c.annual_income_usd) > 0.5
AND (e.net_worth_usd / c.annual_income_usd) > 10;