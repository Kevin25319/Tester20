USE ex1;
DROP TABLE IF EXISTS ExamQuestion;
CREATE TABLE ExamQuestion (
    ExamID INT,
    QuestionID INT,
    PRIMARY KEY (ExamID, QuestionID),
    FOREIGN KEY (ExamID) REFERENCES Exam(ExamID),
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);

SET SQL_SAFE_UPDATES=0;
DELETE FROM ExamQuestion;

CREATE DATABASE IF NOT EXISTS TEST1;
DROP DATABASE IF EXISTS TEST1;

INSERT INTO `ex1`.`department`
(
`DepartmentName`)
VALUES
('Phòng kế toán'),('Phòng tin học'),('Phòng đối tác');