DROP VIEW IF EXISTS `reports.view_overall_questions`;
CREATE VIEW `reports.view_overall_questions` AS
SELECT QuestionID, Question 
FROM `final_project.questions`
WHERE QuestionID IN ('Q036', 'Q037', 'Q047');