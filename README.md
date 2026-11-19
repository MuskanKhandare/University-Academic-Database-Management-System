# University-Academic-Database-Management-System
#Mini project

# University Academic Database Management System

## Project Overview

The University Academic Database Management System is a relational database design and implementation project developed as part of a university assignment.

The project focuses on designing a structured database to manage and organize academic information within a university environment. It demonstrates the practical application of relational database concepts using MySQL, including database creation, table design, primary and foreign key constraints, relationships between entities, and SQL queries for retrieving and manipulating data.

The database models several key academic entities, including students, faculties, departments, projects, and courses.

## Project Objectives

- Design a relational database for organizing university academic information.
- Develop an Entity-Relationship Diagram (ERD) to represent the database structure and relationships.
- Implement the database schema using MySQL.
- Establish primary keys and foreign key constraints to represent relationships between entities.
- Insert sample academic records into the database.
- Perform data retrieval, filtering, updating, and aggregation using SQL queries.
- Apply relational database concepts to a practical academic scenario.

## Database Structure

The database consists of five main entities:

### 1. Students
Stores student information, including:
- Registration number (Primary Key)
- Student name
- Phone number
- Address
- Faculty ID (Foreign Key)
- Department ID (Foreign Key)
- Project ID (Foreign Key)

### 2. Faculties
Stores information about university faculties:
- Faculty ID (Primary Key)
- Faculty name
- Dean
- Address
- Extension
- Number of instructors
- Number of students
- Supervisor

### 3. Departments
Stores department-related information:
- Department ID (Primary Key)
- Department name
- Department head
- Phone number

### 4. Projects
Stores information about academic projects:
- Project ID (Primary Key)
- Project title
- Start date
- End date
- Supervisor ID (Foreign Key)

### 5. Courses
Stores academic course and grading information:
- Course ID (Primary Key)
- Course title
- Credit hours
- Grade
- Grade points
- Course status
- Semester

## Database Relationships

The database incorporates foreign key relationships to connect academic entities.

- Students are associated with faculties.
- Students are associated with departments.
- Students can be associated with academic projects.
- Projects reference faculty supervisor information.

The ERD was designed using MySQL Workbench to visualize the database structure and its relationships.

## SQL Operations Implemented

The SQL script demonstrates several database operations:

- **Database creation:** Creating and selecting the database.
- **Table creation:** Defining tables with appropriate data types and constraints.
- **Data insertion:** Populating tables with sample university information.
- **Data updating:** Modifying existing department information.
- **Data retrieval:** Extracting records from individual tables.
- **Joins:** Combining information from related tables.
- **Filtering:** Retrieving records based on specific conditions.
- **Aggregation:** Calculating average grade points across semesters.
- **Grouping:** Grouping course records by semester.

## Learning Outcomes

Through this project, I gained practical experience in relational database modelling, SQL programming, database schema design, and understanding relationships between academic entities.

It also provided an opportunity to apply theoretical database concepts to a practical university-related scenario.

## Project Context

Developed as a university mini-project as part of academic coursework.
