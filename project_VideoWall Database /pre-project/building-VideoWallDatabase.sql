CREATE DATABASE videowall_db;
USE videowall_db;


-- VideoWalls table: stores screens/video walls
CREATE TABLE VideoWalls (
  videowall_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  location VARCHAR(200)
);

-- Contents table: stores all types of content
CREATE TABLE Contents (
  content_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(200) NOT NULL,
  description TEXT,
  creation_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  expiration_date DATETIME,
  priority_level ENUM('Low', 'Medium', 'High') NOT NULL
);

-- Categories table: content categories
CREATE TABLE Categories (
  category_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) UNIQUE NOT NULL
);

-- Associative table for many-to-many relation between Contents and Categories
CREATE TABLE ContentCategories (
  content_id INT,
  category_id INT,
  PRIMARY KEY (content_id, category_id),
  FOREIGN KEY (content_id) REFERENCES Contents(content_id) ON DELETE CASCADE,
  FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE CASCADE
);

-- Media table: stores media associated with content
CREATE TABLE Media (
  media_id INT PRIMARY KEY AUTO_INCREMENT,
  content_id INT,
  media_type ENUM('text', 'image', 'video') NOT NULL,
  url VARCHAR(500) NOT NULL,
  FOREIGN KEY (content_id) REFERENCES Contents(content_id) ON DELETE CASCADE
);

-- Schedules table: schedules content display on VideoWalls
CREATE TABLE Schedules (
  schedule_id INT PRIMARY KEY AUTO_INCREMENT,
  content_id INT,
  videowall_id INT,
  start_time DATETIME NOT NULL,
  end_time DATETIME NOT NULL,
  FOREIGN KEY (content_id) REFERENCES Contents(content_id) ON DELETE CASCADE,
  FOREIGN KEY (videowall_id) REFERENCES VideoWalls(videowall_id) ON DELETE CASCADE
);
-- Insert VideoWalls
INSERT INTO VideoWalls (name, location) VALUES
('Main Reception VideoWall', 'Building A Lobby'),
('Block A Corridor Screen', 'Block A Corridor'),
('Cafeteria Screen', 'Block B Floor 2');

-- Insert Categories
INSERT INTO Categories (name) VALUES
('General News'),
('HR Announcements'),
('IT Courses'),
('Academic Events'),
('Main Courses');

-- Insert Contents
INSERT INTO Contents (title, description, creation_date, expiration_date, priority_level) VALUES
('New IT Course Launch', 'Learn advanced SQL and database design', NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY), 'High'),
('Cafeteria Menu - Today', 'Specials: Grilled Chicken, Veggie Pasta', NOW(), DATE_ADD(NOW(), INTERVAL 1 DAY), 'Medium'),
('Campus Event: Science Fair', 'Annual science exhibition for students', NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY), 'High'),
('HR Policy Update', 'New remote work guidelines', NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY), 'Medium'),
('Daily News Bulletin', 'Today’s top headlines', NOW(), DATE_ADD(NOW(), INTERVAL 1 DAY), 'Low');

-- Link Contents to Categories
INSERT INTO ContentCategories (content_id, category_id) VALUES
(1, 3), -- IT Courses
(2, 5), -- Main Courses
(3, 4), -- Academic Events
(4, 2), -- HR Announcements
(5, 1); -- General News

-- Insert Media
INSERT INTO Media (content_id, media_type, url) VALUES
(1, 'text', 'http://example.com/it-course-info'),
(2, 'image', 'http://example.com/menu-today.jpg'),
(3, 'video', 'http://example.com/science-fair-promo.mp4'),
(4, 'text', 'http://example.com/hr-policy.pdf'),
(5, 'text', 'http://example.com/news-today');

-- Insert Schedules
INSERT INTO Schedules (content_id, videowall_id, start_time, end_time) VALUES
(1, 1, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2, 3, NOW(), DATE_ADD(NOW(), INTERVAL 1 DAY)),
(3, 1, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),
(4, 2, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(5, 1, NOW(), DATE_ADD(NOW(), INTERVAL 1 DAY));


-- 1. List all active (not expired) content for a given category (e.g., 'General News')
SELECT c.title, c.description, c.priority_level
FROM Contents c
JOIN ContentCategories cc ON c.content_id = cc.content_id
JOIN Categories cat ON cc.category_id = cat.category_id
WHERE cat.name = 'General News' AND (c.expiration_date IS NULL OR c.expiration_date > NOW());

-- 2. List content scheduled to display today on a specific VideoWall (e.g., videowall_id = 1)
SELECT c.title, s.start_time, s.end_time
FROM Schedules s
JOIN Contents c ON s.content_id = c.content_id
WHERE s.videowall_id = 1
  AND NOW() BETWEEN s.start_time AND s.end_time;

-- 3. Show all events scheduled for next month
SELECT c.title, s.start_time, s.end_time
FROM Contents c
JOIN Schedules s ON c.content_id = s.content_id
JOIN ContentCategories cc ON c.content_id = cc.content_id
JOIN Categories cat ON cc.category_id = cat.category_id
WHERE cat.name = 'Academic Events'
  AND s.start_time BETWEEN DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 1 MONTH), '%Y-%m-01')
                       AND LAST_DAY(DATE_ADD(NOW(), INTERVAL 1 MONTH));

-- 4. Display today's restaurant menu
SELECT c.title, c.description
FROM Contents c
JOIN ContentCategories cc ON c.content_id = cc.content_id
JOIN Categories cat ON cc.category_id = cat.category_id
WHERE cat.name = 'Main Courses' AND (c.expiration_date IS NULL OR c.expiration_date > NOW());

-- 5. List latest news (last 7 days) with high priority
SELECT title, creation_date
FROM Contents
WHERE priority_level = 'High' AND creation_date >= DATE_SUB(NOW(), INTERVAL 7 DAY);
