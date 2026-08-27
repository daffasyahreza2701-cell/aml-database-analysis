# aml-database-analysis
# AML Database Analysis

A PostgreSQL-based data analysis project exploring customer, wealth, funding-source, insurance, and payment-behavior data from an Anti-Money Laundering (AML) perspective.

## Project Overview

This project demonstrates the use of **SQL and PostgreSQL for relational data analysis**, with a focus on identifying customer-level patterns that may be relevant to AML and financial-risk analysis.

The project covers the process of preparing a raw dataset, structuring the data into relational tables, and using SQL queries to answer analytical questions about customers and their financial characteristics.

## Objectives

* Practice relational database design using PostgreSQL
* Transform and organize raw data into multiple related tables
* Perform analytical queries using SQL
* Examine customer demographics, wealth, funding sources, and payment behavior
* Develop AML-oriented analytical questions using customer data
* Demonstrate practical SQL proficiency through a reproducible project

## Dataset

The project uses an AML-related insurance dataset containing information on areas such as:

* Customer identity and demographics
* Income and wealth
* Source of funds
* Insurance information
* Payment behavior

The original dataset is **not included in this repository**.

To reproduce the analysis, obtain the dataset from here:
https://www.kaggle.com/datasets/jek1wantaufik/aml-insurance-multi-currency

## Database Structure

The data is organized into relational tables based on different categories of customer information.

The project includes tables covering:

* `customers` — customer identity and demographic information
* `income_cust` — income and wealth information
* `funding_source` — customer funding-source information
* `insurance_info` — insurance-related information
* `payment_behavior` — customer payment behavior

Customer IDs are used to establish relationships between the tables.

## SQL Analysis

The analysis includes queries involving:

* `SELECT` and filtering
* `GROUP BY` and aggregation
* `COUNT()`, `SUM()`, and `AVG()`
* `ORDER BY` and `LIMIT`
* `CASE WHEN`
* Table joins
* Customer-level aggregation
* AML-oriented segmentation and analysis

Example analytical questions include:

> Which country has the most customers?

> Which country has the highest total customer wealth?

> What patterns can be observed across customer demographics, wealth, funding sources, and payment behavior?

## Repository Structure

```text
aml-database-analysis/
│
├── .gitignore
├── README.md
│
├── sql/
│   ├── schema.sql
│   └── analysis.sql
│
├── scripts/
│   └── import.sh
│
└── data/
    └── (dataset files excluded from Git)
```

*The exact file structure may change as the project develops.*

## Tools & Technologies

* **PostgreSQL**
* **SQL**
* **Bash / Shell**
* **pgAdmin**
* **Git & GitHub**

## What This Project Demonstrates

This project demonstrates practical experience with:

1. Working with structured financial/customer datasets
2. Designing and querying relational databases
3. Preparing data for SQL analysis
4. Writing analytical SQL queries
5. Connecting data analysis with AML and financial-risk use cases
6. Using Git for project version control

## Disclaimer

This project is intended for educational and portfolio purposes. The analysis does not constitute an actual AML investigation, regulatory determination, or financial-crime risk assessment.

## Author

**Daffa Syahreza**

Fresh Graduate — Criminology, Universitas Indonesia

Areas of interest: **Data Analytics · AML · Risk Management · Compliance · Financial Crime**

