-- sql10780168.Categoria definition

CREATE TABLE `Category` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificator of the product category.',
  `Name` varchar(100) NOT NULL COMMENT 'Category name.',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Product category';


-- sql10780168.Tipo definition

CREATE TABLE `Type` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificator of the type of content file.',
  `Type` varchar(50) NOT NULL COMMENT 'Type of the content file.',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Type of the Content file';



-- sql10780168.Priority definition

CREATE TABLE `Priority` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Priority Identification',
  `Classification` varchar(100) NOT NULL COMMENT 'Name classification',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Priority content';



-- sql10780168.`User` definition

CREATE TABLE `User` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'User Identificator.',
  `Fist_name` varchar(300) NOT NULL COMMENT 'User First name',
  `Last_name` varchar(300) DEFAULT NULL COMMENT 'User Last Name.',
  `Email` varchar(300) NOT NULL COMMENT 'User Email.',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table with descriptions users.';



-- sql10780168.Screen definition

CREATE TABLE `Screen` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Localization` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- sql10780168.Content definition

CREATE TABLE `Content` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Content idenificator.',
  `Title` varchar(100) CHARACTER SET latin1 NOT NULL COMMENT 'Content Title.',
  `Description` text CHARACTER SET latin1 COMMENT 'Content Description.',
  `Path` varchar(200) CHARACTER SET latin1 NOT NULL COMMENT 'Path content, Where it might be an URL or a local path.',
  `Id_Priority` int(11) NOT NULL,
  `Id_Type` int(11) NOT NULL COMMENT 'Content Type Identificator.',
  `Id_User` int(11) NOT NULL COMMENT 'Identificator, foreign key, from User Table',
  `Data_Create` datetime NOT NULL,
  `Expiration_Data` datetime DEFAULT NULL COMMENT 'Expiration Data of Content, time maximum permanent in database.',
  PRIMARY KEY (`Id`),
  KEY `Conteúdo_Prioridade_FK` (`Id_Priority`),
  KEY `Conteúdo_Tipo_FK` (`Id_Type`),
  KEY `Conteúdo_User_FK` (`Id_User`),
  CONSTRAINT `Conteúdo_Prioridade_FK` FOREIGN KEY (`Id_Priority`) REFERENCES `Priority` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Conteúdo_Tipo_FK` FOREIGN KEY (`Id_Type`) REFERENCES `Type` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Conteúdo_User_FK` FOREIGN KEY (`Id_User`) REFERENCES `User` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='VideoWall Content Exibition';



-- sql10780168.Categoty_Content definition

CREATE TABLE `Categoty_Content` (
  `Id_Content` int(11) NOT NULL COMMENT 'Content Identification',
  `Id_Category` int(11) NOT NULL COMMENT 'Category identification',
  KEY `Categoty_Content_Content_FK` (`Id_Content`),
  KEY `Categoty_Content_Category_FK` (`Id_Category`),
  CONSTRAINT `Categoria_Conteúdo_Conteúdo_FK` FOREIGN KEY (`Id_Content`) REFERENCES `Content` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Categoria_Conteúdo_Categoria_FK` FOREIGN KEY (`Id_Category`) REFERENCES `Category` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Intermediate table for the ratio muit to many of Category and Content.';



-- sql10780168.Exibition definition

CREATE TABLE `Exibition` (
  `Id_Content` int(11) NOT NULL,
  `Id_Screen` int(11) NOT NULL,
  `Start_Data` datetime NOT NULL,
  `End_Data` datetime NOT NULL,
  KEY `Exibition_Content_FK` (`Id_Content`),
  KEY `Exibition_Screen_FK` (`Id_Screen`),
  CONSTRAINT `Exibition_Screen_FK` FOREIGN KEY (`Id_Screen`) REFERENCES `Screen` (`Id`),
  CONSTRAINT `Exibition_Content_FK` FOREIGN KEY (`Id_Content`) REFERENCES `Content` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabela de';
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabela de';