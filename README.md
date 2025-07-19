Agriculture Farm Management System (AFMS)

Project Purpose
The Agriculture Farm Management System (AFMS) is a comprehensive platform designed to empower farmers in planning, monitoring, and analyzing their farming activities efficiently. Its primary goal is to bridge the gap between farmers and buyers, ensuring the production and consumption of high-quality food. By automating management practices, AFMS aims to modernize farming, reduce manual labor, and promote eco-friendly agriculture. Ultimately, the system seeks to enhance the agricultural supply chain by directly connecting growers with buyers, thereby ensuring fresh, high-quality products reach the market.

Project Scope
The AFMS encompasses the following key areas:

User Management: Registration, login, and profile management for both farmers and buyers.

Farm Management: Tools for farmers to monitor crop growth, manage resources, and optimize farm operations.

Market Connectivity: Direct communication channels between farmers and buyers for produce transactions.

Data Management: Centralized storage of farm-related data, including crop types, soil quality, weather conditions, and market prices, to facilitate informed decision-making.

Reporting and Analysis: Capabilities to generate reports on farm performance, production trends, and financial outcomes.

Security: Implementation of secure data storage and access control mechanisms to protect user information.

System Features
The AFMS offers a range of features to support its objectives:

3.1 Account Management
Users can register, log in, and manage their accounts.

Sign Up/Log In: Create or access an account to utilize system functionalities.

3.2 Crop and Resource Management
Farmers can manage crop schedules and resource usage.

Plan and Track: Set schedules and monitor resource stocks.

3.3 Product Listing and Search
Farmers can list their products, and buyers can search and filter them.

Add/Search Products: Manage product listings and browse available goods.

3.4 Order and Payment Processing
Facilitates order placement, payments, and invoice generation.

Place Orders/Payments: Buyers can select products and complete purchases.

3.5 Data Analytics and Reporting
Provides performance reports and visual insights.

Generate Reports: View analytics on farm operations and sales.

3.6 Alerts and Notifications
Sends alerts for tasks, weather conditions, and market changes.

Receive Notifications: Stay updated on critical activities.

3.7 Feedback and Support
Users can provide feedback and access support resources.

Submit Feedback: Report issues or suggestions.

3.8 Admin Dashboard
Admins can manage users and monitor the system.

User/System Management: Oversee operations and resolve issues.

Functional Requirements
ID

Requirement Description

Priority

FR1

User Registration: Allow farmers to register, create profiles, and log in securely.

High

FR2

Crop Management: Enable farmers to add, edit, and monitor crop data.

High

FR3

Inventory Tracking: Track all farm inputs and outputs, providing alerts for low stock levels.

Medium

FR4

Sales Processing: Facilitate the creation of sales orders, invoice generation, and payment tracking.

High

FR5

Reporting: Generate reports on crop yields, sales performance, and inventory levels.

Medium

FR6

Communication: Allow farmers to communicate with buyers, suppliers, and other stakeholders.

Medium

FR7

API Integration: Provide APIs for third-party payment processors and logistics services.

Low

Non-Functional Requirements
4.1 Performance
The system shall support up to 100 concurrent users with efficient data handling.

All pages and dashboards shall load within 3 seconds under normal conditions.

Database operations, including adding products and retrieving data, shall be completed within 5 seconds.

4.2 Security
All sensitive data, including user credentials and transaction details, shall be encrypted using AES-256.

Secure authentication and authorization mechanisms, including role-based access control, shall be implemented.

Admin access shall be restricted to authorized personnel for managing user data and system settings.

4.3 Usability
The user interface shall be simple, intuitive, and easy to navigate for all user types.

The system shall provide clear feedback and error messages to guide users through actions.

Online help and support resources shall be accessible to assist users.

4.4 Availability
The system shall maintain 99.9% uptime, ensuring consistent access for users.

Regular backups shall be scheduled to prevent data loss.

The system shall automatically handle failover in the event of server downtime.

Database Schema
The database schema includes the following tables and their relationships:

blogdata: Stores blog posts with blogid, farmarid, bloguser, blogTitle, blogContent, blogTime, blogstatus.

farmer: Stores farmer details with fid, fname, fusername, fpassword, fhash, femail, fmobile, faddress, factive, frating, picExt.

likedata: Stores likes on blog posts with blogliserld and blogdatablogid.

blogfeedback: Stores comments on blog posts with pcExd, commentUser, picStatus, blogdatablogid, comment, commentPic, commentTime.

fproduct: Stores product details with pid, farmarid, buyerbid, product, poat, pimage, pstatus, price.

buyer: Stores buyer details with bid, busername, bpassword, bhash, bemail, bmobile, baddress, bactive.

mycart: Stores items in a user's cart with bid, pid, buyerbid.

transaction: Stores transaction details with tid, bid, name, mobile, email, pincode, address.

review: Stores product reviews with productpid, name, rating, comment.

ER Diagram
The Entity-Relationship (ER) Diagram visually represents the entities within the system and their relationships, providing a comprehensive overview of the database structure. (Refer to the dbms.pdf file for the visual diagram on Page 7).


Usage
(This section would describe how to use the application once it's installed.)

Register as a new user (farmer or buyer).

Log in to your account.

Farmers can manage crops, list products, and track inventory.

Buyers can search for products, place orders, and make payments.

Explore reporting and analytics features to gain insights.

