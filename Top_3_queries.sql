-- blood_donation_queries.sql
-- SQL queries for Blood Donation DBMS Project

-- =============================================
-- Query 1: Critical Threshold and Quantity Available
-- Checks blood pack inventory status per hospital
-- =============================================
SELECT
    Hospital_ID,
    Blood_Type,
    COUNT(*) AS Available_Blood_Packs,
    CASE
        WHEN COUNT(*) < 5 THEN 'CRITICAL'
        ELSE 'SUFFICIENT'
    END AS Status
FROM
    Blood_Pack
WHERE
    Expiry_Date > CURDATE() -- Only count non-expired blood
GROUP BY
    Hospital_ID, Blood_Type;

-- =============================================
-- Query 2: Emergency Notification Trigger
-- Sends alerts when blood supply is critical
-- =============================================
INSERT INTO Notification (Emergency_Description, Hospital_ID, Center_ID)
SELECT
    CONCAT('URGENT: Critical shortage of ', bp.Blood_Type, ' at ', h.Name),
    bp.Hospital_ID,
    dc.Center_ID
FROM
    Blood_Pack bp
JOIN
    Hospital_BloodBank h ON bp.Hospital_ID = h.ID
CROSS JOIN
    Donor_Center dc
WHERE
    bp.Expiry_Date > CURDATE()
GROUP BY
    bp.Hospital_ID, bp.Blood_Type, dc.Center_ID, h.Name
HAVING
    COUNT(bp.Pack_ID) < 5; -- Threshold for critical level

-- =============================================
-- Query 3: Donor Rewards Eligibility
-- Finds donors eligible for rewards (2+ donations)
-- =============================================
SELECT
    d.Donor_ID,
    d.Name,
    dh.No_OF_Donations,
    r.Reward_Type,
    r.Reward_Details
FROM
    Donor d
JOIN
    Donation_History dh ON d.Donor_ID = dh.Donation_ID
LEFT JOIN
    Rewards r ON d.Donor_ID = r.Donor_ID
WHERE
    dh.No_OF_Donations >= 2
ORDER BY
    dh.No_OF_Donations DESC;

-- =============================================
-- Additional Useful Query: Expiring Soon Alert
-- =============================================
SELECT
    Pack_ID,
    Blood_Type,
    DATEDIFF(Expiry_Date, CURDATE()) AS Days_Until_Expiry
FROM
    Blood_Pack
WHERE
    Expiry_Date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY)
ORDER BY
    Days_Until_Expiry ASC;
