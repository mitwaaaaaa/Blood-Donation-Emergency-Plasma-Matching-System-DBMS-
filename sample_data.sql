-- Insert data into Donor_Center
INSERT INTO Donor_Center (Address) VALUES
('123 Medical Drive, Cityville'),
('456 Health Lane, Townsville'),
('789 Care Blvd, Villageton');

-- Insert data into Donor
INSERT INTO Donor (Name, Blood_Type, Address, Age, DOB, Gender, Center_ID) VALUES
('John Doe', 'A+', '101 Main St, Cityville', 30, '1993-05-15', 'Male', 1),
('Jane Smith', 'B-', '202 Oak Ave, Townsville', 25, '1998-08-22', 'Female', 2),
('Robert Brown', 'O+', '303 Pine Rd, Villageton', 40, '1983-11-10', 'Male', 3),
('Alice Johnson', 'AB+', '404 Elm St, Cityville', 28, '1995-03-30', 'Female', 1);

-- Insert data into Donor_Medical_Info
INSERT INTO Donor_Medical_Info VALUES
(1, 'None', '120/80', 14.5, TRUE, 72, 98.6, TRUE),
(2, 'Asthma', '110/70', 13.2, FALSE, 68, 97.8, TRUE),
(3, 'Hypertension', '130/85', 15.0, TRUE, 75, 99.0, FALSE),
(4, 'None', '115/75', 14.8, TRUE, 70, 98.2, TRUE);

-- Insert data into Donation_History
INSERT INTO Donation_History VALUES
(1, 5, 'Whole Blood', 'Cityville Center'),
(2, 0, NULL, NULL),
(3, 10, 'Plasma', 'Villageton Center'),
(4, 3, 'Platelets', 'Cityville Center');

-- Insert data into Hospital_BloodBank
INSERT INTO Hospital_BloodBank (Name, Address, Contact_Information) VALUES
('Cityville General', '123 Medical Drive, Cityville', '555-0101'),
('Townsville Medical', '456 Health Lane, Townsville', '555-0202'),
('Villageton Community', '789 Care Blvd, Villageton', '555-0303');

-- Insert data into Blood_Receiver
INSERT INTO Blood_Receiver (Name, Blood_Type, Hospital_ID, DATE) VALUES
('Mike Wilson', 'A+', 1, '2023-10-15'),
('Sarah Davis', 'B-', 2, '2023-10-16'),
('David Lee', 'O+', 3, '2023-10-17');

-- Insert data into Blood_Pack
INSERT INTO Blood_Pack VALUES
(1001, 'A+', '2023-11-15', '2023-10-15', 1),
(1002, 'B-', '2023-11-16', '2023-10-16', 2),
(1003, 'O+', '2023-11-17', '2023-10-17', 3);

-- Insert data into Donation_Event
INSERT INTO Donation_Event (Event_Date, Event_Notification_Sent, Event_Address) VALUES
('2023-11-20', TRUE, 'Cityville General Hospital'),
('2023-11-25', FALSE, 'Townsville Medical Center'),
('2023-12-01', TRUE, 'Villageton Community Clinic');

-- Insert data into Donation_Outcome
INSERT INTO Donation_Outcome VALUES
(1, 'Successful', 'Patient stabilized'),
(2, 'Successful', 'No complications'),
(3, 'Failed', 'Blood type mismatch');

-- Insert data into Rewards
INSERT INTO Rewards VALUES
(1, 'Gift Card', '$20 Amazon Gift Card'),
(3, 'Certificate', 'Frequent Donor Appreciation'),
(4, 'Discount', '10% off at Hospital Cafe');

-- Insert data into Notification
INSERT INTO Notification VALUES
('Urgent need for O+ blood', 1, 1),
('Emergency plasma required', 2, 2),
('Critical shortage of B- blood', 3, 3);
