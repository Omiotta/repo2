create database universities;

select * from universities.cities;
select * from universities.university;
select * from universities.students;
select * from universities.allAboutStudents;

create table universities.cities (
Cid int primary key not null auto_increment,
City varchar(20) not null
);

create table universities.university (
Uid int not null auto_increment primary key,
University varchar(100) not null,
Rating varchar(20)
);

create table universities.students (
Sid int primary key not null auto_increment,
NameOfStudent varchar(20) not null,
LastNameOfStudent varchar(20) not null
);

create table universities.allAboutStudents (
StudentId int not null auto_increment primary key,
PlaceOfStudy int not null,
NativeCity int not null,
foreign key (StudentId) references students (Sid),
foreign key (PlaceOfStudy) references university (Uid),
foreign key (NativeCity) references cities (Cid)
)

INSERT INTO universities.cities (City) VALUES
('Kyiv'),
('Kharkiv'),
('Lutsk'),
('Mykolaiv'),
('Lviv');

INSERT INTO universities.university (University, Rating) VALUE
('Grinch University', 'medium'),
('University of Oxford', 'High'),
('Stanford University','High'),
('University of Cambridge', 'medium'),
('University of Chicago', 'medium');

INSERT INTO universities.students (NameOfStudent, LastNameOfStudent) VALUE
('Dmytro', 'Stakhov'),
('Oleksiy', 'Verbitskiy'),
('Andrii', 'Luzan'),
('Ostap', 'Bender'),
('Ivan', 'Prytula'),
('Oleksandr', 'Ivanov'),
('Sehiy', 'Petrov'),
('Mykola', 'Ivanchishin'),
('Natalia', 'Pryluka');

INSERT INTO universities.allAboutStudents (StudentId, PlaceOfStudy, NativeCity) VALUE
('1','1','1'),
('2','2','2'),
('3','3','3'),
('4','4','4'),
('5','5','5'),
('6','1','1'),
('7','2','2'),
('8','3','3'),
('9','4','4');