#Which country has the most customers
\echo '=== Question 1: Which country has the most customers? ==='
SELECT country, COUNT(*) AS customer_count
FROM customers
GROUP BY country
ORDER BY customer_count DESC;

#Which country has the biggest sum of wealth
\echo '=== Question 2: Which country has the biggest sum of wealth? ==='
SELECT c.country, SUM(w.net_worth_usd) AS total_wealth
FROM customers c
JOIN income_cust w ON c.customer_id = w.customer_id
GROUP BY c.country
ORDER BY total_wealth DESC;

#Average age of the customers
\echo '=== Question 3: What is the average age of the customers? ==='
SELECT AVG(age) AS average_age FROM customers;

#Comparison of each occupation size in the database
\echo '=== Question 4: What is the distribution of occupations among customers? ==='
SELECT COUNT(occupation) AS occupation_count, occupation
FROM customers
GROUP BY occupation
ORDER BY occupation_count DESC;


#Average years of working for the customers
\echo '=== Question 5: What is the average number of years customers have been working? ==='
SELECT AVG(years_working) AS average_years_working FROM customers;

#Which Payment method is mostly used?
\echo '=== Question 6: Which payment method is mostly used? ==='
SELECT payment_method, COUNT(*) AS payment_method_count
FROM payment_behavior
GROUP BY payment_method
ORDER BY payment_method_count DESC;

#Which currency is most used by the customers?
\echo '=== Question 7: Which currency is most used by the customers? ==='
SELECT COUNT(currency) AS currency_count, currency
FROM customers
GROUP BY currency
ORDER BY currency_count DESC;