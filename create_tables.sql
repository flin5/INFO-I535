DROP TABLE IF EXISTS `final_project.states`;
CREATE TABLE `final_project.states` AS
SELECT DISTINCT(LocationAbbr) State 
FROM `final_project.raw_data`
ORDER BY State;

DROP TABLE IF EXISTS `final_project.age_groups`;
CREATE TABLE `final_project.age_groups` AS
SELECT DISTINCT(StratificationID1) AS AgeGroup 
FROM `final_project.raw_data`
WHERE StratificationCategoryId1 = 'AGEYR';

DROP TABLE IF EXISTS `final_project.questions`;
CREATE TABLE `final_project.questions` AS
SELECT DISTINCT QuestionID, Question FROM `final_project.raw_data`;

DROP TABLE IF EXISTS `final_project.raw_data_overall_2022`;
CREATE TABLE `final_project.raw_data_overall_2022` AS
SELECT * FROM `final_project.raw_data`
WHERE StratificationCategoryId1 = 'OVR'
AND YearStart = 2022 AND YearEnd = 2022;

DROP TABLE IF EXISTS `final_project.raw_data_indiana_2022`;
CREATE TABLE `final_project.raw_data_indiana_2022` AS
SELECT * FROM `final_project.raw_data`
WHERE LocationAbbr = 'IN'
AND YearStart = 2022 AND YearEnd = 2022;
