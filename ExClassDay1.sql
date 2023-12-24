
use tester20;
create table Trainee(
	TraineeID int primary key auto_increment,
    Full_name varchar(100),
    Birth_Day date,
    Gender enum('male','female','unknow'),
    ET_IQ int,
    ET_Gmath int,
    Et_English int,
    Training_Class varchar(100),
    Evalation_Notes varchar(100),
    constraint Check_EtIQ check ( ET_IQ > 0 And ET_IQ < 20 ),
	constraint Check_EtGmath check ( ET_Gmath > 0 And ET_Gmath < 20 ),
    constraint Check_EtEnglish check ( Et_English > 0 And Et_English < 50 )
    
);

insert into trainee(Full_name, Birth_Day, Gender,ET_IQ,ET_Gmath,Et_English,Training_Class,Evalation_Notes)
value ('Le Tat Minh Quan', '2000-10-19', 'male', 10,19,19,'Tester20', 'test');

select * from trainee