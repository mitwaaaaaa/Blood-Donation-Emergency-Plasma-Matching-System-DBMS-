DDL SCRIPT
-- Creating the database
CREATE DATABASE BloodDonationSystem;
USE BloodDonationSystem;


---CREATE TABLE Donor (
Donor_ID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(255) NOT NULL,
Blood_Type VARCHAR(10) NOT NULL,
Address TEXT,
Age INT,
DOB DATE,
Gender VARCHAR(10),
FOREIGN KEY (Center_ID) REFERENCES Donor_Center(Center_ID),
);
--- Creating Donor Medical Info table
CREATE TABLE Donor_Medical_Info (
Donor_ID INT PRIMARY KEY,
Pre_existing_Conditions VARCHAR(255),
Blood_Pressure VARCHAR(50),
Hemoglobin_Level DECIMAL(5,2),
Donated_Before BOOLEAN,
Pulse_Rate INT,
Temperature DECIMAL(5,2),
Eligible_to_Donate BOOLEAN,
FOREIGN KEY (Donor_ID) REFERENCES Donor(Donor_ID)
);
---Creating Donor Center table
CREATE TABLE Donor_Center (
Center_ID INT PRIMARY KEY AUTO_INCREMENT,
Address TEXT
);
---CREATE TABLE Donation_History (
    Donation_ID INT PRIMARY KEY,
    No_OF_Donations INT,
    donation_type char(100),
    donated_at VARCHAR(50),
    FOREIGN KEY (Donation_ID) REFERENCES Donor(Donor_ID)
);
--- Creating Donation Event table
CREATE TABLE Donation_Event (
Event_ID INT PRIMARY KEY AUTO_INCREMENT,
Event_Date DATE,
Event_Notification_Sent BOOLEAN,
Event_Address TEXT
);
---Creating Blood Receiver table
CREATE TABLE Blood_Receiver (
Receiver_ID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(255) NOT NULL,
Blood_Type VARCHAR(10) NOT NULL,
Hospital_ID INT,
DATE DATE,
FOREIGN KEY (Hospital_ID) REFERENCES Hospital_BloodBank(ID)
);
--- Creating Rewards for Donors table
CREATE TABLE Rewards (
Donor_ID INT,
Reward_Type VARCHAR(255),
Reward_Details TEXT,
FOREIGN KEY (Donor_ID) REFERENCES Donor(Donor_ID)
);
--- CREATE TABLE Blood_Pack (
    Pack_ID INT PRIMARY KEY,
    Blood_Type VARCHAR(10),
    Expiry_Date DATE,
	collection_date INT,
    Hospital_ID INT,
	
    FOREIGN KEY (Hospital_ID) REFERENCES Hospital_bloodbank(ID)
);
--- Creating Donation Outcome table
CREATE TABLE Donation_Outcome (
receiver_id INT,
Status VARCHAR(50),
Reason TEXT,
FOREIGN KEY (receiver_id) REFERENCES blood_receiver(receiver_id)
);
--- Creating Hospital / Blood Bank / Donation Center table
CREATE TABLE Hospital_BloodBank (
ID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(255) NOT NULL,
Address TEXT,
Contact_Information VARCHAR(255)
);
--- Creating Emergency Notification table
CREATE TABLE Notification (
    Emergency_Description TEXT NOT NULL,
    Hospital_ID INT,
    Center_ID INT,
    FOREIGN KEY (Hospital_ID) REFERENCES Hospital_BloodBank(ID),
    FOREIGN KEY (Center_ID) REFERENCES Donor_Center(Center_ID)
);
