

1. List of Requirements
Store project data: Include project name, description, start date, end date, and status.
Track activities: Include activity name, description, start date, end date, and associated project.
Stakeholder management: Include stakeholder name, role, and associated projects.
Objectives: Store objectives for each project.
Schedule tracking: Include timelines for projects and activities.

2. List of Stakeholders
Head of Architecture: Oversees project creation and management.
Project Managers: Manage individual projects and activities.
Team Members: Execute activities within projects.
Clients: Provide requirements and feedback.

3. Definitions
Stakeholders: Individuals or groups involved in or affected by the project.
Project: A temporary endeavor undertaken to create a unique product, service, or result.
Activity: A task or set of tasks performed as part of a project.
Objective: A specific result that a project aims to achieve.
Schedule: A timeline for completing project activities.
4. Conceptual Model
The conceptual model focuses on high-level entities and their relationships:

Entities: Project, Activity, Stakeholder, Objective.
Relationships:
A project has multiple activities.
A project has multiple stakeholders.
A project has multiple objectives.

5. Logical Model
The logical model defines the structure of the database:

Tables:
Projects: ProjectID, Name, Description, StartDate, EndDate, Status.
Activities: ActivityID, Name, Description, StartDate, EndDate, ProjectID.
Stakeholders: StakeholderID, Name, Role, ProjectID.
Objectives: ObjectiveID, Description, ProjectID.

6. Physical Model
The physical model includes the SQL schema for the database.

7. SQL Code
Below is the SQL code to create the database schema:


-- Create Stakeholders table
8. Template on livesql.oracle.com
You can copy the above SQL code and execute it on LiveSQL to create the database schema.

Let me know if you need further assistance!

Listar todas as atividades com os detalhes do projeto associado:

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
    Projects p
ON 
    a.ProjectID = p.ProjectID;
```

Listar todos os stakeholders e os projetos aos quais estão associados:

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
    Projects p
ON 
    s.ProjectID = p.ProjectID;
```

Listar todos os objetivos com os detalhes do projeto associado:

```sql
SELECT 
    o.ObjectiveID,
    o.Description AS ObjectiveDescription,
    p.Name AS ProjectName,
    p.Description AS ProjectDescription
FROM 
    Objectives o
JOIN 
    Projects p
ON 
    o.ProjectID = p.ProjectID;
```

Listar todas as atividades, stakeholders e objetivos relacionados a um projeto específico:

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
    p.ProjectID = 1; -- Substitua "1" pelo ID do projeto desejado
    ````


Para deletar as tabelas no Oracle Live SQL, você pode usar o comando DROP TABLE. Certifique-se de deletar as tabelas na ordem correta para evitar erros de restrições de chave estrangeira. Aqui está o código para deletar as tabelas no seu caso:



Delete Tables

```sql
-- Deletar tabelas na ordem correta para evitar erros de dependência
DROP TABLE Participa CASCADE CONSTRAINTS;
DROP TABLE Atividade CASCADE CONSTRAINTS;
DROP TABLE Projeto CASCADE CONSTRAINTS;
DROP TABLE Colaborador CASCADE CONSTRAINTS;
DROP TABLE Gerente CASCADE CONSTRAINTS;
````


1. CASCADE CONSTRAINTS:
    * Esse comando remove automaticamente as restrições de chave estrangeira associadas à tabela que está sendo deletada.
2. Ordem de deleção:
    * Comece pelas tabelas que dependem de outras (como Participa) e termine com as tabelas principais (como Gerente).
Como executar no Oracle Live SQL:
1. Acesse Oracle Live SQ

```markdown
# Project Management Database

This README provides a complete overview and SQL scripts for managing a project database including projects, activities, stakeholders, and objectives.

---

## 1. Requirements

- **Store project data:** Project name, description, start date, end date, status.
- **Track activities:** Activity name, description, start date, end date, associated project.
- **Stakeholder management:** Stakeholder name, role, associated projects.
- **Objectives:** Objectives for each project.
- **Schedule tracking:** Timelines for projects and activities.

---

## 2. Stakeholders

- **Head of Architecture:** Oversees project creation and management.
- **Project Managers:** Manage projects and activities.
- **Team Members:** Execute activities.
- **Clients:** Provide requirements and feedback.

---

## 3. Definitions

- **Stakeholders:** Individuals or groups involved or affected by the project.
- **Project:** Temporary endeavor to create a unique product, service, or result.
- **Activity:** Task(s) performed as part of a project.
- **Objective:** Specific result a project aims to achieve.
- **Schedule:** Timeline for completing project activities.

---

## 4. Conceptual Model

- **Entities:** Project, Activity, Stakeholder, Objective.
- **Relationships:**
  - A project has multiple activities.
  - A project has multiple stakeholders.
  - A project has multiple objectives.

---

## 5. Logical Model (Tables)

| Table       | Columns                                      |
|-------------|----------------------------------------------|
| Projects    | ProjectID, Name, Description, StartDate, EndDate, Status |
| Activities  | ActivityID, Name, Description, StartDate, EndDate, ProjectID |
| Stakeholders| StakeholderID, Name, Role, ProjectID         |
| Objectives  | ObjectiveID, Description, ProjectID          |

---

## 6. Physical Model (SQL Schema)

```

-- Create Projects table
CREATE TABLE Projects (
ProjectID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
Name VARCHAR2(100) NOT NULL,
Description VARCHAR2(500),
StartDate DATE,
EndDate DATE,
Status VARCHAR2(50)
);

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

---

## 7. Example Queries

### List all activities with their associated project details

```

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

### List all stakeholders and their associated projects

```

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

### List all objectives with project details

```

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

### List activities, stakeholders, and objectives for a specific project

```

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

---

## 8. Drop Tables (Oracle Live SQL)

To delete tables safely respecting foreign key constraints, drop in this order:

```

DROP TABLE Objectives CASCADE CONSTRAINTS;
DROP TABLE Stakeholders CASCADE CONSTRAINTS;
DROP TABLE Activities CASCADE CONSTRAINTS;
DROP TABLE Projects CASCADE CONSTRAINTS;

```

- **Note:** `CASCADE CONSTRAINTS` automatically removes dependent foreign keys.
- Always drop child tables before parent tables to avoid constraint errors.

---

## 9. How to Execute on Oracle Live SQL

1. Visit [Oracle Live SQL](https://livesql.oracle.com).
2. Log in or create an account.
3. Copy and paste the SQL code blocks above into the worksheet.
4. Run the scripts to create tables, insert data, query, or drop tables.

---


