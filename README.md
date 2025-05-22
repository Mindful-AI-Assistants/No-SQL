
<br>

# <p align="center"> 🛢️ [NoSQL](): Building Databases in Practice
### <p align="center"> [Not Only SQL]()



<br><br>

#### <p align="center"> [![Sponsor Mindful AI Assistants](https://img.shields.io/badge/Sponsor-Mindful%20AI%20%20Assistants-brightgreen?logo=GitHub)](https://github.com/sponsors/Mindful-AI-Assistants)

<br>

### <p align="center"> <img width="485" alt="Automation Workflow" src="https://github.com/user-attachments/assets/a7dd082d-33e9-41df-b5e7-cc3dd359a9b7" />

<br>


## [About No-SQL Repo]()

**Developed during the 3rd semester of the Data Science and Humanistic Artificial Intelligence undergraduate program at PUC-SP (2025)**  

*Under the guidance of [Professor Doctor Daniel Gatti](https://www.linkedin.com/in/dgatti/)*.


<br>

## Online Tools

#### ➢➣ Oracle [SQL LIVE](https://livesql.oracle.com/landing/)

#### ➣➢ BRM Model [Web](https://app.brmodeloweb.com)

#### ➣➢ Redis [Database](https://cloud.redis.io/#/new-customer/new-database)

#### ➣➢ [Free Sql](https://www.freesqldatabase.com/) Database

#### ➣➢ Kepler [Geolocation](https://kepler.gl/)

#### ➣➢ [Mermaid](https://mermaid.js.org/community/contributing.html) FlowChart and Diagrams

#### ➣➢ [Lucidchart](https://www.lucidchart.com/) - Diagramming Application

#### ➣➢ [draw.io](https://www.drawio.com/) - Diagramming


<br>

## Dowloaded Tools

#### ➣➢ [PostgreSQL](https://www.postgresql.org/download/)

#### ➣➢ [MongoDB](https://www.mongodb.com/cloud/atlas/register?utm_source=bing&utm_campaign=search_bs_pl_evergreen_atlas_general_prosp-brand_gic-null_amers-us_ps-all_desktop_eng_lead&utm_term=free%20mongodb&utm_medium=cpc_paid_search&utm_ad=p&utm_ad_campaign_id=415305664&adgroup=1212761796655157&msclkid=fc72a73e22ca19cd4864c0d8c90024e3)

#### ➣➢ [DBeaver](https://dbeaver.io/download/) -  in association with MySQL Workbench, both locally and remotely.

#### ➣➢ [MySQL Workbench](https://www.mysql.com/products/workbench/) -  both locally and remotely.


<br>

## Books

#### ➢ Get the Book  [Database Systems – Navathe, 6th Edition](https://github.com/Mindful-AI-Assistants/No-SQL/blob/ff7422d3ccfbfbc5280262c7a2d015ce5ef76e80/Database%20Systems%20%E2%80%93%20Navathe%2C%206th%20Edition.pdf)
#### ➣  Get the Book  [Database System Concepts (5th ed.) - Abraham Silberschatz, Henry F. Korth, S. Sudarshan](https://github.com/Mindful-AI-Assistants/No-SQL/blob/183090af48e4506deba6610c32c8b3f5518c899a/Database%20System%20Concepts%20(5th%20ed.)%20-%20Abraham%20Silberschatz%2C%20Henry%20F.%20Korth%2C%20S.%20Sudarshan.pdf)


<br>

## 📖 [Overview]()

This project explores the fundamentals and practical applications of NoSQL (Not Only SQL) databases, showcasing the construction and management of databases using various database systems, including:

<br>


➢ **MySQL**  - [Certificate](https://github.com/user-attachments/assets/6d8f431f-15b6-43af-8820-f5421cf39254)  <br>
➢ **SQL Server** - [Certificate](https://github.com/user-attachments/assets/6f13c382-1e71-4b98-acb7-9ffd86de72bc)   <br>
➢ **T-SQL** - [Certificate](https://github.com/user-attachments/assets/2fc15bca-919a-4a87-ada1-3b8ab37e7aec)   <br>
➢ **Redis MongoDB** - [Certificate](https://github.com/user-attachments/assets/ec6426ca-75b6-4d9b-990e-72bfde1555b8)   <br>
➢ **SQL on Linux** - [Certificate](https://github.com/user-attachments/assets/738e8838-16ed-41eb-a4ea-3aff161b41f9)   <br>
➢ **Oracle** - [Certificate]()


<br>

Through this comprehensive guide, you will understand how to define, manipulate, and query data using SQL and NoSQL techniques, alongside practical examples.

<br>

## Entity Relationship Conceptual Modeling

➢ WorKClass [Example](https://github.com/user-attachments/assets/7d2a2e17-1e31-4f21-89ce-14b1fcd0f636)
 



<br>


## 🗄️ SQL Language Breakdown

<br>

The SQL language is divided into three main components:

1. [**Data Definition Language (DDL)**]()
   - Defines database schema and structures.
   - Examples: `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`.
  
<br>
  
2. [**Data Manipulation Language (DML)**]()
   - Manages data within schema objects.
   - Examples: `INSERT`, `UPDATE`, `DELETE`.
  
<br>

3. [**Data Query Language (DQL)**]()
   - Retrieves data from databases.
   - Example: `SELECT`.

<br>

## ✍️ Practical Examples

### 📋 DDL – Data Definition Language

#### [Select Commands using Oracle]()

```sql
select*from HR. COUNTRIES
select COUNTRY_NAME from HR.COUNTRIES 
select COUNTRY_ID from HR.COUNTRIES 
select REGION_ID from HR.COUNTRIES 
select*from hr.REGIONS
```

```sql
SELECT country_id, country_name, region_name
FROM HR.COUNTRIES, HR.REGIONS
Where hr.COUNTRIES.region_id = HR.regions.REGION_ID
```

<br>

#### [Create Table]()
```sql
CREATE TABLE Person (
    ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Email VARCHAR(150) UNIQUE
);
```

<br>

#### [ALTER TABLE]()

```sql
ALTER TABLE Person ADD Telefone VARCHAR(15);
```

<br>

#### [Drop Table]()

```sql
DROP TABLE Person;
```

<br>

### 🛠️ DML – Data Manipulation Language

<br>

#### [Insert Data]()

```sql
INSERT INTO Person (ID, Name, Age, Email)
VALUES (1, 'Maria Silva', 30, 'maria.silva@example.com');
```

<br>

#### [Update Data]()

```sql
UPDATE Person
SET Age = 31
WHERE ID = 1;
```

<br>

### 🔍 DQL – Data Query Language

<br>

#### [Select Data]()

```sql
SELECT Name, Email
FROM Person
WHERE Age > 25;
```
<br>

### ⚙️ Advanced SQL Concepts

#### 🔑 [Primary Key Example]()

```sql
CREATE TABLE Sale (
NumCliente INT NOT NULL IDENTITY(1,1),
CPF INT NOT NULL,
CONSTRAINT pkClient PRIMARY KEY (NumClient))
```

<br>

#### ✅ [Check Constraint Example]()

```sql
ALTER TABLE Person
ADD CONSTRAINT ckIdade CHECK (Age <= 100);
```

<br>

#### 🔄 [Identity Property (SQL Server)]()

```sql
CREATE TABLE Produtos (
    ProdutoID INT IDENTITY(1,1) PRIMARY KEY,
    NomeProduto VARCHAR(100) NOT NULL
);
```

<br>

## 🍃 NoSQL – MongoDB Example


#### [📦 Creating a Collection and Inserting Documents]()

```sql
// Inserting a single document
db.usuarios.insertOne({
    name: "João Silva",
    age: 28,
    email: "joao.silva@example.com"
});

// Inserting multiple documents
db.usuarios.insertMany([
    { name: "Ana Souza", age: 24, email: "ana.souza@example.com" },
    { name: "Carlos Lima", age: 35, email: "carlos.lima@example.com" }
]);
```

<br>

#### 🔍 [Querying Documents]()

```sql
// Find users older than 25
db.usuarios.find({ age: { $gt: 25 } });

// Find user by email
db.usuarios.findOne({ email: "ana.souza@example.com" });
```

<br>

#### ⚡ [Updating and Deleting Documents]()

```sql
// Update user age
db.usuarios.updateOne(
    { name: "João Silva" },
    { $set: { idade: 29 } }
);

// Delete user
db.usuarios.deleteOne({ name: "Carlos Lima" });
```

<br>

# 📈 [Project Stakeholder]():
 
### - [Briefing]():

- The head of architecture of a company needs to manage the creation of projects within the company. 
- Your company was asked to create a database to store project data. In this request,
- Your company must deliver a report with the following elements: A list of requirements List of stakeholders Conceptual Model Logical Model Physical Model SQL Code Creation of the template on livesql.oracle.com. Search and define: Stakeholders:

### ***This project provides a complete overview and SQL scripts for managing a project database including projects, activities, stakeholders, and objectives***.

<br>

## [1.]() Requirements

- [**Store project data**](): Project name, description, start date, end date, status.
- [**Track activities**](): Activity name, description, start date, end date, associated project.
- [**Stakeholder management:** Stakeholder name, role, associated projects.
- **Objectives**](): Objectives for each project.
- [**Schedule tracking**](): Timelines for projects and activities.

<br>

## [2.]() Stakeholders

- [**Head of Architecture**](): Oversees project creation and management.
- [**Project Managers**](): Manage projects and activities.
- [**Team Members**](): Execute activities.
- [**Clients**](): Provide requirements and feedback.

<br>

## [3.]() Definitions

- [**Stakeholders**](): Individuals or groups involved or affected by the project.
- [**Project**](): Temporary endeavor to create a unique product, service, or result.
- [**Activity**](): Task(s) performed as part of a project.
- [**Objective**](): Specific result a project aims to achieve.
- [**Schedule**](): Timeline for completing project activities.

<br>

## [4.]() Conceptual Model

- [**Entities**](): Project, Activity, Stakeholder, Objective.
- [**Relationships**]():
  - A project has multiple activities.
  - A project has multiple stakeholders.
  - A project has multiple objectives.

<br>

## [5](). Logical Model (Tables)

| Table       | Columns                                      |
|-------------|----------------------------------------------|
| Projects    | ProjectID, Name, Description, StartDate, EndDate, Status |
| Activities  | ActivityID, Name, Description, StartDate, EndDate, ProjectID |
| Stakeholders| StakeholderID, Name, Role, ProjectID         |
| Objectives  | ObjectiveID, Description, ProjectID          |


<br>

## [6.]() Physical Model (SQL Schema)


```sql
-- Create Projects table
CREATE TABLE Projects (
ProjectID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
Name VARCHAR2(100) NOT NULL,
Description VARCHAR2(500),
StartDate DATE,
EndDate DATE,
Status VARCHAR2(50)
);
```

<br>

```sql
-- Create Activities table
CREATE TABLE Activities (
ActivityID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
Name VARCHAR2(100) NOT NULL,
Description VARCHAR2(500),
StartDate DATE,
EndDate DATE,
ProjectID NUMBER NOT NULL,
CONSTRAINT fk_activities_project FOREIGN KEY (ProjectID)
REFERENCES Projects(ProjectID)
ON DELETE CASCADE
);
```

<br>

```sql
-- Create Stakeholders table
CREATE TABLE Stakeholders (
StakeholderID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
Name VARCHAR2(100) NOT NULL,
Role VARCHAR2(50),
ProjectID NUMBER NOT NULL,
CONSTRAINT fk_stakeholders_project FOREIGN KEY (ProjectID)
REFERENCES Projects(ProjectID)
ON DELETE CASCADE
);
```

```sql
-- Create Objectives table
CREATE TABLE Objectives (
ObjectiveID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
Description VARCHAR2(500) NOT NULL,
ProjectID NUMBER NOT NULL,
CONSTRAINT fk_objectives_project FOREIGN KEY (ProjectID)
REFERENCES Projects(ProjectID)
ON DELETE CASCADE
);
```

<br>

## [7.]() Example Queries

### ➢ [List all activities with their associated project details]()

```sql
SELECT
a.ActivityID,
a.Name AS ActivityName,
a.Description AS ActivityDescription,
a.StartDate AS ActivityStartDate,
a.EndDate AS ActivityEndDate,
p.Name AS ProjectName,
p.Description AS ProjectDescription
FROM
Activities a
JOIN
Projects p ON a.ProjectID = p.ProjectID;
```

<br>

### ➢ [List all stakeholders and their associated projects]()

```sql
SELECT
s.StakeholderID,
s.Name AS StakeholderName,
s.Role AS StakeholderRole,
p.Name AS ProjectName,
p.Description AS ProjectDescription
FROM
Stakeholders s
JOIN
Projects p ON s.ProjectID = p.ProjectID;
```

<br>

### ➢ [List all objectives with project details]()

```sql
SELECT
o.ObjectiveID,
o.Description AS ObjectiveDescription,
p.Name AS ProjectName,
p.Description AS ProjectDescription
FROM
Objectives o
JOIN
Projects p ON o.ProjectID = p.ProjectID;
```

<br>

### ➢ [List activities, stakeholders, and objectives for a specific project]()

```sql
SELECT
p.ProjectID,
p.Name AS ProjectName,
a.Name AS ActivityName,
s.Name AS StakeholderName,
o.Description AS ObjectiveDescription
FROM
Projects p
LEFT JOIN
Activities a ON p.ProjectID = a.ProjectID
LEFT JOIN
Stakeholders s ON p.ProjectID = s.ProjectID
LEFT JOIN
Objectives o ON p.ProjectID = o.ProjectID
WHERE
p.ProjectID = 1; -- Replace "1" with desired ProjectID
```

<br>

## [8.]() Drop Tables (Oracle Live SQL)

To delete tables safely respecting foreign key constraints, drop in this order:


```sql
DROP TABLE Objectives CASCADE CONSTRAINTS;
DROP TABLE Stakeholders CASCADE CONSTRAINTS;
DROP TABLE Activities CASCADE CONSTRAINTS;
DROP TABLE Projects CASCADE CONSTRAINTS;
```

- **Note:** `CASCADE CONSTRAINTS` automatically removes dependent foreign keys.
- Always drop child tables before parent tables to avoid constraint errors.

<br>

## [9.]() How to Execute on Oracle Live SQL

1. Visit [Oracle Live SQL](https://livesql.oracle.com).
2. Log in or create an account.
3. Copy and paste the SQL code blocks above into the worksheet.
4. Run the scripts to create tables, insert data, query, or drop tables.


<br><br>


## 🎥 [Project VideoWall Database]() 


###  [Access here link]() for Conceptual and Logical Diagrams in the Lucid.app editor


![Image](https://github.com/user-attachments/assets/8d0ea6a8-27f7-4488-b79b-3dafdb4d606c)

#

![Image](https://github.com/user-attachments/assets/a4f9abe2-807c-4b0d-8f57-40cc2811aeca)


https://lucid.app/lucidchart/4b79b546-006e-4d92-8cf3-3d6e17d46570/edit?invitationId=inv_d50f269f-8059-41fc-920f-023722382fa9&page=0_0#


###  [How to do all this in DBeaver]()

- **Connect to your MySQL server**: Use the connection wizard to connect to your MySQL database (local or remote).
- **Open SQL Editor**: Right-click your database → SQL Editor → New SQL Script.
- **Paste and run the DDL script** to create tables.
- **Paste and run the DML script** to insert sample data.
- **Run the DQL queries** to test and verify data retrieval.
- **Use the Database Navigator** pane to visually inspect tables, columns, and foreign keys.
- **Use DBeaver’s ER Diagram tool**: Right-click database or tables → ER Diagram to visualize schema.
- **Export results**: After running queries, right-click results → Export to CSV, JSON, etc.

#

### [**Database Modelling**]()

#### **[1.]() Entity Identification \& Conceptual Model**

Key entities include:

- **VideoWalls**: ID, name, location[^7]
- **Contents**: ID, title, description, creation_date, expiration_date, priority_level[^7]
- **Categories**: ID, name (e.g., "General News")[^7]
- **Media**: ID, content_id, media_type (text/image/video), URL/path[^7]
- **Schedules**: ID, content_id, videowall_id, start_time, end_time[^7]

**Relationships**:

- Content → Categories (M:N via `ContentCategories` associative table)[^7]
- Content → Media (1:N)
- Content → Schedules (1:N)
- VideoWalls → Schedules (1:N)[^7]

#

#### **[2.]() Logical Model (3NF Normalized)**

| Table | Key Attributes | Relationships |
| :-- | :-- | :-- |
| `VideoWalls` | videowall_id (PK), name, location | Linked to `Schedules` |
| `Contents` | content_id (PK), title, description, creation_date, expiration_date, priority | Linked to `Media`, `Schedules`, `ContentCategories` |
| `Categories` | category_id (PK), name | Linked via `ContentCategories` |
| `ContentCategories` | content_id (FK), category_id (FK) | Composite PK |
| `Media` | media_id (PK), content_id (FK), type, url |  |
| `Schedules` | schedule_id (PK), content_id (FK), videowall_id (FK), start_time, end_time |  |


#

#### **[3.]() Physical Model (DDL Script)**

```sql
CREATE TABLE VideoWalls (
  videowall_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  location VARCHAR(200)
);

CREATE TABLE Contents (
  content_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(200) NOT NULL,
  description TEXT,
  creation_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  expiration_date DATETIME,
  priority_level ENUM('Low', 'Medium', 'High') NOT NULL
);

CREATE TABLE Categories (
  category_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE ContentCategories (
  content_id INT,
  category_id INT,
  PRIMARY KEY (content_id, category_id),
  FOREIGN KEY (content_id) REFERENCES Contents(content_id),
  FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Media (
  media_id INT PRIMARY KEY AUTO_INCREMENT,
  content_id INT,
  media_type ENUM('text', 'image', 'video') NOT NULL,
  url VARCHAR(500) NOT NULL,
  FOREIGN KEY (content_id) REFERENCES Contents(content_id)
);

CREATE TABLE Schedules (
  schedule_id INT PRIMARY KEY AUTO_INCREMENT,
  content_id INT,
  videowall_id INT,
  start_time DATETIME NOT NULL,
  end_time DATETIME NOT NULL,
  FOREIGN KEY (content_id) REFERENCES Contents(content_id),
  FOREIGN KEY (videowall_id) REFERENCES VideoWalls(videowall_id)
);
```

#

### [**Implementation**]()

1. **Create Account \& Database**
    - Visit [www.freesqldatabase.com](https://www.freesqldatabase.com), register, and create a database[^2][^3].
    - Note credentials: hostname, database name, username, password[^2][^3].
2. **Connect via MySQL Workbench**
    - Open MySQL Workbench → Click `+` under "MySQL Connections"[^4].
    - Enter hostname, username, and password from freesqldatabase.com[^4].
    - Test connection and save[^4].
3. **Execute DDL Script**
    - Open the generated SQL script in MySQL Workbench and run it in the connected database[^1][^4].
4. **Populate Data (DML)**
Example INSERT statements:

```sql
INSERT INTO VideoWalls (name, location) VALUES 
('Main Reception', 'Building A Lobby'),
('Cafeteria Screen', 'Block B Floor 2');

INSERT INTO Contents (title, priority_level) VALUES 
('IT Maintenance Alert', 'High'),
('Today’s Special Menu', 'Medium');
```

#

### [**Sample Queries (DQL)**]()

[1.]() **Active Content in a Category**

```sql
SELECT c.title, cat.name 
FROM Contents c
JOIN ContentCategories cc ON c.content_id = cc.content_id
JOIN Categories cat ON cc.category_id = cat.category_id
WHERE c.expiration_date > NOW() 
  AND cat.name = 'General News';
```

[2.]() **Today’s Schedule for VideoWall ID 1**

```sql
SELECT c.title, s.start_time, s.end_time 
FROM Schedules s
JOIN Contents c ON s.content_id = c.content_id
WHERE s.videowall_id = 1 
  AND DATE(s.start_time) = CURDATE();
```

[3.]() **High-Priority News (Last 7 Days)**

```sql
SELECT title, creation_date 
FROM Contents 
WHERE priority_level = 'High' 
  AND creation_date >= NOW() - INTERVAL 7 DAY;
```

#

### [**Evaluation \& Deliverables**]()

- **Modelling Document**: ER diagram, table descriptions, and normalization proof.
- **SQL Scripts**: DDL, DML, and DQL files.
- **Presentation**: Screenshots of Workbench tables and query results.

For troubleshooting, ensure indexes are added for frequently queried columns (e.g., `expiration_date`) to optimize performance[^6]. Use `EXPLAIN` to analyze query execution plans.

By following these steps, students can effectively design, implement, and test a VideoWall database system





















<br><br><br><br>

### 💙 Acknowledgements

Special thanks to Professor [Daniel Gatti]() for guidance throughout this project.

<br>

##  Feel Free to [Reach Out:]()

### 💌 [Email Me](mailto:fabicampanari@proton.me)

<br>


#### <p align="center">  🛸๋ My Contacts [Hub](https://linktr.ee/fabianacampanari)


<br>

### <p align="center"> <img src="https://github.com/user-attachments/assets/517fc573-7607-4c5d-82a7-38383cc0537d" />


<br><br>

<p align="center">  ────────────── ⊹🔭๋ ──────────────

<br>

<p align="center"> ➣➢➤ <a href="#top">Back to Top </a>
  

  
#
 
##### <p align="center">Copyright 2025 Mindful-AI-Assistants. Code released under the  [MIT license.]( https://github.com/Mindful-AI-Assistants/.github/blob/ad6948fdec771e022d49cd96f99024fcc7f1106a/LICENSE)







