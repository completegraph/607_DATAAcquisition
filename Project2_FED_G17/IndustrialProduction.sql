CREATE TABLE `industrialproduction` (
  `revision_date` date NOT NULL,
  `production_date` date NOT NULL,
  `industry_group` varchar(50) NOT NULL,
  `production` double NOT NULL,
  PRIMARY KEY (`revision_date`,`production_date`,`industry_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Project 2';
