# Music Store Business Intelligence Analysis (SQL)

## Project Overview
This project performs an in-depth analysis of an online music store's relational database to extract actionable business insights. Using **PostgreSQL**, the analysis explores customer purchasing behavior, regional sales performance, track popularity, and artist revenue metrics. The goal is to assist executive stakeholders in optimizing promotional strategies, identifying high-value customer segments, and auditing overall business growth.

## Database Schema
The database consists of 11 interrelated tables containing information on tracks, albums, artists, genres, customers, employees, and financial transactions.

![Database Schema](database_schema.png)

## Tech Stack & Tools Used
* **Database Management System:** PostgreSQL
* **Interface Tool:** pgAdmin4
* **SQL Concepts Applied:** Multi-table Joins, Subqueries, Window Functions (`ROW_NUMBER()`), Common Table Expressions (CTEs), Recursive Queries, and Aggregations.

---

## Key Insights & Solutions

### Part 1: Operational & Baseline Metrics (Easy)

#### Q1: Seniority Ranking
* **Business Question:** Who is the senior-most employee based on job title?
* **SQL Query:**
```sql
SELECT title, last_name, first_name 
FROM employee
ORDER BY levels DESC
LIMIT 1;
