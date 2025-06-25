# Blood-Donation-Emergency-Plasma-Matching-System-DBMS-

## Project Description
A database management system designed to connect blood donors with recipients in emergency situations. The system leverages real-time data to match donors based on blood type compatibility, location, and urgency, ensuring timely access to life-saving blood and plasma donations.

## Key Features
- **Donor Management**: Register and track donor details, medical eligibility, and donation history
- **Inventory Tracking**: Monitor blood pack quantities and expiration dates
- **Emergency Alerts**: Automated notifications for critical shortages
- **Analytics Dashboard**: Track donations, successful matches, and system impact

## Database Schema
The system uses MySQL with these core tables:
- `Donor` - Stores donor personal/medical information
- `Donor_Medical_Info` - Tracks eligibility criteria
- `Blood_Receiver` - Manages recipient needs
- `Blood_Pack` - Inventory management
- `Notification` - Emergency alert system
- `Donation_Event` - Blood drive coordination
