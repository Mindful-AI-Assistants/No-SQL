
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

#### ➣➢ Kepler [Geolocation](https://kepler.gl/)

#### ➣➢ [Mermaid](https://mermaid.js.org/community/contributing.html) FlowChart and Diagrams

<br>

## Dowloaded Tools

#### ➣➢ [PostgreSQL](https://www.postgresql.org/download/)

#### ➣➢ [MongoDB](https://www.mongodb.com/cloud/atlas/register?utm_source=bing&utm_campaign=search_bs_pl_evergreen_atlas_general_prosp-brand_gic-null_amers-us_ps-all_desktop_eng_lead&utm_term=free%20mongodb&utm_medium=cpc_paid_search&utm_ad=p&utm_ad_campaign_id=415305664&adgroup=1212761796655157&msclkid=fc72a73e22ca19cd4864c0d8c90024e3)



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

## [Project Stakeholder]():

### - [Briefing]():

- The head of architecture of a company needs to manage the creation of projects within the company. 
- Your company was asked to create a database to store project data. In this request,
- Your company must deliver a report with the following elements: A list of requirements List of stakeholders Conceptual Model Logical Model Physical Model SQL Code Creation of the template on livesql.oracle.com. Search and define: Stakeholders:

<br>

1. [List of Requirements]():
   
- Store project data: Include project name, description, start date, end date, and status.
- Track activities: Include activity name, description, start date, end date, and associated project.
- Stakeholder management: Include stakeholder name, role, and associated projects.
- Objectives: Store objectives for each project.
- Schedule tracking: Include timelines for projects and activities.

<br>

2. [List of Stakeholders]():
   
- [Head of Architecture](): Oversees project creation and management.
- [Project Managers](): Manage individual projects and activities.
- [Team Members](): Execute activities within projects.
- [Clients: Provid]()e requirements and feedback.

<br>

3. [Definitions]():
   
- [Stakeholders](): Individuals or groups involved in or affected by the project.
- [Project](): A temporary endeavor undertaken to create a unique product, service, or result.
- [Activity](): A task or set of tasks performed as part of a project.
- [Objective](): A specific result that a project aims to achieve.
- [Schedule](): A timeline for completing project activities.
  
<br>

4. [Conceptual Model]():
   
- The conceptual model focuses on high-level entities and their relationships:
- [Entities](): Project, Activity, Stakeholder, Objective.
- [Relationships]():
- A project has multiple activities.
- A project has multiple stakeholders.
- A project has multiple objectives.

<br>

5. [Logical Model]():
   
- The logical model defines the structure of the database:
- [Tables]():
- Projects: ProjectID, Name, Description, StartDate, EndDate, Status.
- Activities: ActivityID, Name, Description, StartDate, EndDate, ProjectID.
- Stakeholders: StakeholderID, Name, Role, ProjectID.
- Objectives: ObjectiveID, Description, ProjectID.

<br>

6. Physical Model
The physical model includes the SQL schema for the database.

<br>






















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







