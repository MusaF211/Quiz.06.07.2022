--1. Academy databazasını yaradın - 2 bal

CREATE DATABASE Academy
USE Academy
--2. Groups(İd,Name) ve Students(İd,Name,Surname,Groupİd) table-ları yaradın(one-to-many), təkrar qrup adı əlavə etmək olmasın - 5 bal

CREATE TABLE  Groups
(
Id INT CONSTRAINT pk_Groups_Id Primary KEY IDENTITY,
Name nvarchar(30) UNIQUE
)


CREATE TABLE Students
(
ID INT CONSTRAINT pk_Students_Id PRIMARY KEY IDENTITY,
Name nvarchar(30),
SurName nvarchar(30),
GroupId INT FOREIGN KEY REFERENCES Groups(Id)
)


--3. Students table-na Grade (int) kalonunu əlavə etmək - 3 bal

ALTER TABLE Students
ADD Grade INT 

--4. Groups table-na 3 data(P129,P124,P221), Students table-na 4 data əlavə edin(1 tələbə p221 qrupna, 3 tələbə p129 qrupuna aid olsun) - 5 bal

INSERT INTO Groups 
VALUES
('P129'),
('P124'),
('P221')

INSERT INTO Students
VALUES
('Musa','Dadashov',1),
('Rovsen','Dadashov',3),
('Caneli','Dadashov',3),
('Alim','Dadashov',3)


--5. P129 qrupuna aid olan tələbələrin siyahisini gosterin - 10 bal

SELECT * FROM Students Where GroupId=1

--6. Her qrupda neçə tələbə olduğunu göstərən siyahı çıxarmaq - 15 bal


--7. View yaratmaq - tələbə adını, qrupun adını-qrup kimi , tələbə soyadını, tələbənin balını göstərməli - 20 bal
CREATE VIEW usv_StudentsData
AS
SELECT Students.Name,Groups.Name 'Group',Students.SurName,Students.Grade FROM GROUPS
Join Students ON
Students.GroupId=Groups.Id



