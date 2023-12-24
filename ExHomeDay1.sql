use ex1;
-- Table 1: Department
CREATE TABLE Department (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(255) NOT NULL
);

-- Table 2: Position
CREATE TABLE Position (
    PositionID INT AUTO_INCREMENT PRIMARY KEY,
	PositionName ENUM('Dev', 'Test', 'Scrum Master', 'PM')
);

-- Table 3: Account
CREATE TABLE Account (
    AccountID INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(255) NOT NULL,
    Username VARCHAR(255) NOT NULL,
    FullName VARCHAR(255) NOT NULL,
    DepartmentID INT,
    PositionID INT,
    CreateDate DATETIME NOT NULL,
	FOREIGN KEY (PositionID) REFERENCES Position (PositionID),
	FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID)
);

-- Table 4: Group
CREATE TABLE `Group` (
    GroupID INT AUTO_INCREMENT PRIMARY KEY,
    GroupName VARCHAR(255) NOT NULL,
    CreatorID INT NOT NULL,
    CreateDate DATETIME NOT NULL,
    FOREIGN KEY (CreatorID) REFERENCES Account(AccountID)
);

-- Table 5: GroupAccount
CREATE TABLE GroupAccount (
    GroupID INT,
    AccountID INT,
    JoinDate DATETIME NOT NULL,
    PRIMARY KEY (GroupID, AccountID),
    FOREIGN KEY (GroupID) REFERENCES `Group`(GroupID),
    FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);

-- Table 6: TypeQuestion
CREATE TABLE TypeQuestion (
    TypeID INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(255) NOT NULL
);

-- Table 7: CategoryQuestion
CREATE TABLE CategoryQuestion (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL
);

-- Table 8: Question
CREATE TABLE Question (
    QuestionID INT AUTO_INCREMENT PRIMARY KEY,
    Content TEXT NOT NULL,
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDate DATETIME NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
    FOREIGN KEY (TypeID) REFERENCES TypeQuestion(TypeID),
    FOREIGN KEY (CreatorID) REFERENCES Account(AccountID)
);

-- Table 9: Answer
CREATE TABLE Answer (
    AnswerID INT AUTO_INCREMENT PRIMARY KEY,
    Content TEXT NOT NULL,
    QuestionID INT,
    isCorrect BOOLEAN NOT NULL,
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);

-- Table 10: Exam
CREATE TABLE Exam (
    ExamID INT AUTO_INCREMENT PRIMARY KEY,
    Code VARCHAR(255) NOT NULL,
    Title VARCHAR(255) NOT NULL,
    CategoryID INT,
    Duration INT NOT NULL,
    CreatorID INT,
    CreateDate DATETIME NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
    FOREIGN KEY (CreatorID) REFERENCES Account(AccountID)
);

-- Table 11: ExamQuestion
CREATE TABLE ExamQuestion (
    ExamID INT,
    QuestionID INT,
    PRIMARY KEY (ExamID, QuestionID),
    FOREIGN KEY (ExamID) REFERENCES Exam(ExamID),
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);
use ex1;
-- Table 1: Department
CREATE TABLE Department (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(255) NOT NULL
);

-- Table 2: Position
CREATE TABLE Position (
    PositionID INT AUTO_INCREMENT PRIMARY KEY,
	PositionName ENUM('Dev', 'Test', 'Scrum Master', 'PM')
);

-- Table 3: Account
CREATE TABLE Account (
    AccountID INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(255) NOT NULL,
    Username VARCHAR(255) NOT NULL,
    FullName VARCHAR(255) NOT NULL,
    DepartmentID INT,
    PositionID INT,
    CreateDate DATETIME NOT NULL,
	FOREIGN KEY (PositionID) REFERENCES Position (PositionID),
	FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID)
);

-- Table 4: Group
CREATE TABLE `Group` (
    GroupID INT AUTO_INCREMENT PRIMARY KEY,
    GroupName VARCHAR(255) NOT NULL,
    CreatorID INT NOT NULL,
    CreateDate DATETIME NOT NULL,
    FOREIGN KEY (CreatorID) REFERENCES Account(AccountID)
);

-- Table 5: GroupAccount
CREATE TABLE GroupAccount (
    GroupID INT,
    AccountID INT,
    JoinDate DATETIME NOT NULL,
    PRIMARY KEY (GroupID, AccountID),
    FOREIGN KEY (GroupID) REFERENCES `Group`(GroupID),
    FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);

-- Table 6: TypeQuestion
CREATE TABLE TypeQuestion (
    TypeID INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(255) NOT NULL
);

-- Table 7: CategoryQuestion
CREATE TABLE CategoryQuestion (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL
);

-- Table 8: Question
CREATE TABLE Question (
    QuestionID INT AUTO_INCREMENT PRIMARY KEY,
    Content TEXT NOT NULL,
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDate DATETIME NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
    FOREIGN KEY (TypeID) REFERENCES TypeQuestion(TypeID),
    FOREIGN KEY (CreatorID) REFERENCES Account(AccountID)
);

-- Table 9: Answer
CREATE TABLE Answer (
    AnswerID INT AUTO_INCREMENT PRIMARY KEY,
    Content TEXT NOT NULL,
    QuestionID INT,
    isCorrect BOOLEAN NOT NULL,
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);

-- Table 10: Exam
CREATE TABLE Exam (
    ExamID INT AUTO_INCREMENT PRIMARY KEY,
    Code VARCHAR(255) NOT NULL,
    Title VARCHAR(255) NOT NULL,
    CategoryID INT,
    Duration INT NOT NULL,
    CreatorID INT,
    CreateDate DATETIME NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES CategoryQuestion(CategoryID),
    FOREIGN KEY (CreatorID) REFERENCES Account(AccountID)
);

-- Table 11: ExamQuestion
CREATE TABLE ExamQuestion (
    ExamID INT,
    QuestionID INT,
    PRIMARY KEY (ExamID, QuestionID),
    FOREIGN KEY (ExamID) REFERENCES Exam(ExamID),
    FOREIGN KEY (QuestionID) REFERENCES Question(QuestionID)
);
