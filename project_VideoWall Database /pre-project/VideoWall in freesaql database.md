

### **Database Modelling**

#### **1. Entity Identification \& Conceptual Model**

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


#### **2. Logical Model (3NF Normalized)**

| Table | Key Attributes | Relationships |
| :-- | :-- | :-- |
| `VideoWalls` | videowall_id (PK), name, location | Linked to `Schedules` |
| `Contents` | content_id (PK), title, description, creation_date, expiration_date, priority | Linked to `Media`, `Schedules`, `ContentCategories` |
| `Categories` | category_id (PK), name | Linked via `ContentCategories` |
| `ContentCategories` | content_id (FK), category_id (FK) | Composite PK |
| `Media` | media_id (PK), content_id (FK), type, url |  |
| `Schedules` | schedule_id (PK), content_id (FK), videowall_id (FK), start_time, end_time |  |

#### **3. Physical Model (DDL Script)**

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


---

### **Implementation on www.freesqldatabase.com**

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

### **Sample Queries (DQL)**

1. **Active Content in a Category**

```sql
SELECT c.title, cat.name 
FROM Contents c
JOIN ContentCategories cc ON c.content_id = cc.content_id
JOIN Categories cat ON cc.category_id = cat.category_id
WHERE c.expiration_date > NOW() 
  AND cat.name = 'General News';
```

2. **Today’s Schedule for VideoWall ID 1**

```sql
SELECT c.title, s.start_time, s.end_time 
FROM Schedules s
JOIN Contents c ON s.content_id = c.content_id
WHERE s.videowall_id = 1 
  AND DATE(s.start_time) = CURDATE();
```

3. **High-Priority News (Last 7 Days)**

```sql
SELECT title, creation_date 
FROM Contents 
WHERE priority_level = 'High' 
  AND creation_date >= NOW() - INTERVAL 7 DAY;
```

#

### **Evaluation \& Deliverables**

- **Modelling Document**: ER diagram, table descriptions, and normalization proof.
- **SQL Scripts**: DDL, DML, and DQL files.
- **Presentation**: Screenshots of Workbench tables and query results.

For troubleshooting, ensure indexes are added for frequently queried columns (e.g., `expiration_date`) to optimize performance[^6]. Use `EXPLAIN` to analyze query execution plans.

By following these steps, students can effectively design, implement, and test a VideoWall database system



