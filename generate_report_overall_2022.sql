DECLARE q36 STRING DEFAULT 'Q036';
DECLARE q37 STRING DEFAULT 'Q037';
DECLARE q47 STRING DEFAULT 'Q047';

DROP TABLE IF EXISTS `reports.overall_2022`;
CREATE TABLE `reports.overall_2022` (
    Year    INTEGER,
    State   STRING,
    Category STRING,
    Q036 	  FLOAT64,
    Q037 	  FLOAT64,
    Q047 	  FLOAT64
);

FOR record IN (SELECT State FROM `final_project.states`)
DO 
  INSERT INTO `reports.overall_2022`
  SELECT 
    2022 AS Year,
    record.State AS State,
    'OVERALL' AS Category,
    (SELECT Data_Value FROM `final_project.raw_data_overall_2022` WHERE LocationAbbr = record.State AND QuestionID = q36) AS q36,
    (SELECT Data_Value FROM `final_project.raw_data_overall_2022` WHERE LocationAbbr = record.State AND QuestionID = q37) AS q37,
    (SELECT Data_Value FROM `final_project.raw_data_overall_2022` WHERE LocationAbbr = record.State AND QuestionID = q47) AS q47;
END FOR;