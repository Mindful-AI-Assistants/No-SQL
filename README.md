
<br>

# 🛢️ NoSQL: Building Databases in Practice (Not Only SQL)
#### <p align="center"> [![Sponsor Mindful AI Assistants](https://img.shields.io/badge/Sponsor-Mindful%20AI%20%20Assistants-brightgreen?logo=GitHub)](https://github.com/sponsors/Mindful-AI-Assistants)


<br><br>


## [About No-SQL Repo]()

**Developed during the 3rd semester of the Data Science and Humanistic Artificial Intelligence undergraduate program at PUC-SP (2025)**  

*Under the guidance of [Professor Doutor Daniel Gatti](https://www.linkedin.com/in/dgatti/)*.


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

#### [Create Table]()
```sql
CREATE TABLE Pessoa (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Idade INT,
    Email VARCHAR(150) UNIQUE
);
```

<br>

#### [ALTER TABLE]()

```sql
ALTER TABLE Pessoa ADD Telefone VARCHAR(15);
```

<br>







