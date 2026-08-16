-- ============================================================
-- Task 1: Data Cleaning & Preprocessing (Metro Care Hospital)
-- Domain: Data Analytics | Author: Syed Qamar Abbas
-- ============================================================

-- 1. Standardize appointment_status
UPDATE appointments
SET appointment_status = CASE 
    WHEN LOWER(appointment_status) LIKE 'complete%' THEN 'Completed'
    WHEN LOWER(appointment_status) LIKE 'cancel%' THEN 'Cancelled'
    WHEN LOWER(appointment_status) LIKE 'no%show%' THEN 'No-Show'
    WHEN LOWER(appointment_status) LIKE 'schedul%' THEN 'Scheduled'
    ELSE INITCAP(appointment_status)
END;

-- 2. Standardize payment_mode
UPDATE appointments
SET payment_mode = CASE 
    WHEN LOWER(payment_mode) LIKE 'cash%' THEN 'Cash'
    WHEN LOWER(payment_mode) LIKE 'card%' THEN 'Card'
    WHEN LOWER(payment_mode) LIKE 'ins%' OR LOWER(payment_mode) LIKE 'insurance%' THEN 'Insurance Claim'
    ELSE INITCAP(payment_mode)
END;

-- 3. Handle NULL values in Doctors Joining Date
UPDATE doctors
SET joining_date = '2020-01-01'
WHERE joining_date IS NULL;

-- 4. Verification Queries
SELECT DISTINCT appointment_status, COUNT(*) FROM appointments GROUP BY appointment_status;
SELECT DISTINCT payment_mode, COUNT(*) FROM appointments GROUP BY payment_mode;
