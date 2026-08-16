# Metro Care Hospital - Data Cleaning & Preprocessing (PostgreSQL)

## Project Overview
This project performs data cleaning and standardization on Metro Care Hospital's relational database using PostgreSQL queries as part of the Oasis Infobyte Virtual Internship Program (OIBSIP).

## Domain
Data Analytics

## Tools Used
- PostgreSQL
- pgAdmin / DBeaver

## Key Cleaning Steps
- **Status Standardization:** Cleaned casing inconsistencies in `appointment_status` (converted `COMPLETED`, `completed`, etc. to proper Title Case).
- **Payment Method Mapping:** Grouped variations like `CASH`, `cash`, `INS`, and `Ins Claim` into standard categories (`Cash`, `Insurance Claim`, `Card`).
- **Missing Value Handling:** Handled NULL values in `doctors.joining_date`.

---
**Author:** Syed Qamar Abbas
