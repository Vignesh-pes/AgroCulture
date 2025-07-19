Agriculture Farm Management System (AFMS)
🌾 Project Purpose
The Agriculture Farm Management System (AFMS) is a comprehensive platform designed to empower farmers in planning, monitoring, and analyzing their farming activities efficiently. Its primary goal is to bridge the gap between farmers and buyers, ensuring the production and consumption of high-quality food. By automating management practices, AFMS aims to modernize farming, reduce manual labor, and promote eco-friendly agriculture. Ultimately, the system seeks to enhance the agricultural supply chain by directly connecting growers with buyers, thereby ensuring fresh, high-quality products reach the market.

🎯 Project Scope
The AFMS encompasses the following key areas:

User Management: Registration, login, and profile management for both farmers and buyers.

Farm Management: Tools for farmers to monitor crop growth, manage resources, and optimize farm operations.

Market Connectivity: Direct communication channels between farmers and buyers for produce transactions.

Data Management: Centralized storage of farm-related data, including crop types, soil quality, weather conditions, and market prices, to facilitate informed decision-making.

Reporting and Analysis: Capabilities to generate reports on farm performance, production trends, and financial outcomes.

Security: Implementation of secure data storage and access control mechanisms to protect user information.

✨ System Features
The AFMS offers a range of features to support its objectives:

Account Management
Sign Up/Log In: Users can register, log in, and manage their accounts to utilize system functionalities.

Crop and Resource Management
Plan and Track: Farmers can set schedules for crop cycles and monitor resource stocks like seeds and fertilizers.

Product Listing and Search
Add/Search Products: Farmers can list their products with details and images. Buyers can search and filter available goods.

Order and Payment Processing
Place Orders/Payments: Facilitates order placement, secure payments, and invoice generation for buyers.

Data Analytics and Reporting
Generate Reports: Provides visual insights and performance reports on farm operations, sales, and finances.

Alerts and Notifications
Receive Notifications: Sends automated alerts for critical tasks, low inventory, severe weather conditions, and market changes.

Feedback and Support
Submit Feedback: Users can provide feedback, report issues, or make suggestions for system improvement.

Admin Dashboard
User/System Management: A central dashboard for administrators to oversee operations, manage users, and resolve issues.

📋 ### Functional Requirements

| ID    | Requirement Description                                                                          | Priority |
| :---- | :----------------------------------------------------------------------------------------------- | :------- |
| FR1   | User Registration: Allow farmers to register, create profiles, and log in securely.              | High     |
| FR2   | Crop Management: Enable farmers to add, edit, and monitor crop data.                             | High     |
| FR3   | Inventory Tracking: Track all farm inputs and outputs, providing alerts for low stock levels.    | Medium   |
| FR4   | Sales Processing: Facilitate the creation of sales orders, invoice generation, and payment tracking. | High     |
| FR5   | Reporting: Generate reports on crop yields, sales performance, and inventory levels.             | Medium   |
| FR6   | Communication: Allow farmers to communicate with buyers, suppliers, and other stakeholders.      | Medium   |
| FR7   | API Integration: Provide APIs for third-party payment processors and logistics services.         | Low      |

Export to Sheets
⚙️ Non-Functional Requirements
Performance
The system shall support up to 100 concurrent users with efficient data handling.

All pages and dashboards shall load within 3 seconds under normal network conditions.

Database operations (e.g., adding a product, retrieving data) shall be completed within 5 seconds.

Security
All sensitive data, including user credentials and transaction details, shall be encrypted using AES-256.

Secure authentication and authorization mechanisms, including Role-Based Access Control (RBAC), shall be implemented.

Admin access shall be restricted to authorized personnel for managing user data and system settings.

Usability
The user interface shall be simple, intuitive, and easy to navigate for all user types.

The system shall provide clear feedback and user-friendly error messages to guide users.

Online help documentation and support resources shall be easily accessible.

Availability
The system shall maintain 99.9% uptime, ensuring consistent access for users.

Regular, automated backups shall be scheduled to prevent data loss.

The system shall be designed to automatically handle failover in the event of server downtime.

🗃️ Database Schema
The database schema includes the following tables:

farmer: Stores farmer details.

fid, fname, fusername, fpassword, fhash, femail, fmobile, faddress, factive, frating, picExt

buyer: Stores buyer details.

bid, busername, bpassword, bhash, bemail, bmobile, baddress, bactive

fproduct: Stores product details listed by farmers.

pid, farmarid, buyerbid, product, poat, pimage, pstatus, price

mycart: Stores items in a user's shopping cart.

bid, pid, buyerbid

transaction: Stores details of completed transactions.

tid, bid, name, mobile, email, pincode, address

review: Stores product reviews submitted by buyers.

productpid, name, rating, comment

blogdata: Stores blog posts created by farmers.

blogid, farmarid, bloguser, blogTitle, blogContent, blogTime, blogstatus

likedata: Stores likes on blog posts.

blogliserld, blogdatablogid

blogfeedback: Stores comments on blog posts.

pcExd, commentUser, picStatus, blogdatablogid, comment, commentPic, commentTime

🚀 Usage
Register as a new user (either a farmer or a buyer).

Log in to your newly created account.

Farmers can begin to manage crops, list products in the marketplace, and track inventory.

Buyers can search for available products, place orders, and make secure payments.

Explore the reporting and analytics dashboards to gain insights into your activities.
