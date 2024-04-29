DECLARE q36 STRING DEFAULT 'Q036';
DECLARE q37 STRING DEFAULT 'Q037';
DECLARE q47 STRING DEFAULT 'Q047';

DROP TABLE IF EXISTS `reports.indiana_ageyr_2022`;
CREATE TABLE `reports.indiana_ageyr_2022` (
    Year    INTEGER,
    State   STRING,
    Category STRING,
    AgeGroup STRING,
    Q036 	  FLOAT64,
    Q037 	  FLOAT64,
    Q047 	  FLOAT64
);

FOR record IN (SELECT AgeGroup FROM `final_project.age_groups`)
DO 
  INSERT INTO `reports.indiana_ageyr_2022`
  SELECT 
    2022 AS Year,
    'IN' AS State,
    'AGEYR' AS Category,
    CASE record.AgeGroup
      WHEN 'AGEYR1824' THEN '18 - 24'
      WHEN 'AGEYR2534' THEN '25 - 34'
      WHEN 'AGEYR3544' THEN '35 - 44'
      WHEN 'AGEYR4554' THEN '45 - 54'
      WHEN 'AGEYR5564' THEN '55 - 64'
      WHEN 'AGEYR65PLUS' THEN '>= 65'
    END AS AgeGroup,
    (SELECT Data_Value FROM `final_project.raw_data_indiana_2022` WHERE StratificationCategoryId1 = 'AGEYR'AND StratificationID1 = record.AgeGroup AND QuestionID = q36) AS q36,
    (SELECT Data_Value FROM `final_project.raw_data_indiana_2022` WHERE StratificationCategoryId1 = 'AGEYR'AND StratificationID1 = record.AgeGroup AND QuestionID = q37) AS q37,
    (SELECT Data_Value FROM `final_project.raw_data_indiana_2022` WHERE StratificationCategoryId1 = 'AGEYR'AND StratificationID1 = record.AgeGroup AND QuestionID = q47) AS q47;
END FOR;

