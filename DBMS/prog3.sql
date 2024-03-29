create table DEPARTMENT(DNo int(20) primary key,DName varchar(20),MgrSSN
varchar(20),MgrStartdate date);
create table EMPLOYEE(SSN varchar(20) primary key,Name varchar(30),Address
varchar(40),sex varchar(10),Salary int(10),SuperSSN varchar(20),DNo int(20),foreign
key(SuperSSN)references EMPLOYEE(SSN),foreign key(DNo)references DEPARTMENT(DNo));
alter table DEPARTMENT add foreign key(MgrSSN)references EMPLOYEE(SSN) on delete
cascade;
create table DLOCATION(DNo int(20),DLoc varchar(20),primary key(DNo,DLoc),foreign
key(DNo) references DEPARTMENT(DNo));
create table PROJECT(PNo int(10) primary key,PName varchar(20),PLocation
varchar(20),DNo int(20),foreign key(DNo)references DEPARTMENT(DNo));
create table WORKS_ON(SSN varchar(20),PNo int(10),Hours int(4),primary
key(SSN,PNo),foreign key(SSN)references EMPLOYEE(SSN),foreign key(PNo) references
PROJECT(PNo));


insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1001, "Jacob Scott", "Jayanagar", "M", 6370010);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1002, "Tim", "Jayanagar", "M", 7007011);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1003, "Jil", "Jayanagar", "F", 6370010);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1004, "Josh", "Jayanagar", "M", 6370010);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1005, "Jim", "Jayanagar", "M", 6370010);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1006, "Kate", "Jayanagar", "F", 6370010);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1007, "Joseph", "Jayanagar", "M", 6370010);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1008, "Jay", "Jayanagar", "M", 6370010);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1009, "Claire", "Jayanagar", "F", 6370010);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1010, "Jack", "Jayanagar", "M", 6370010);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1011, "Jack", "Jayanagar", "M", 6378236);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1012, "Timmy", "Jayanagar", "M", 637000);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1013, "Jill", "Jayanagar", "F", 637000);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1014, "Joshy", "Jayanagar", "M", 637000);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1015, "Jimy", "Jayanagar", "M", 637000);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1016, "Katey", "Jayanagar", "F", 637000);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1017, "Joseph", "Jayanagar", "M", 637000);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1018, "Jaya", "Jayanagar", "M", 50000);
insert into EMPLOYEE(SSN, Name, Address, Sex, Salary) values (1019, "Clair", "Jayanagar", "F", 50000);

insert into DEPARTMENT values (1, "Accounts", 1001, "2017-02-12");
insert into DEPARTMENT values (2, "Finance", 1003, "2017-02-10");
insert into DEPARTMENT values (3, "HR", 1003, "2017-03-23");
insert into DEPARTMENT values (4, "Admin", 1003, "2015-05-12");
insert into DEPARTMENT values (5, "Payroll", 1002, "2012-02-12");
insert into DEPARTMENT values (6, "Housekeeping", 1002, "2013-02-12");
insert into DEPARTMENT values (7, "Training", 1002, "2014-02-12");
insert into DEPARTMENT values (8, "PF", 1002, "2010-02-12");

update EMPLOYEE set SuperSSN=NULL, DNo=1 where SSN=1001;
update EMPLOYEE set SuperSSN=1001, DNo=7 where SSN=1002;
update EMPLOYEE set SuperSSN=1001, DNo=5 where SSN=1003;
update EMPLOYEE set SuperSSN=1002, DNo=5 where SSN=1004;
update EMPLOYEE set SuperSSN=1001, DNo=5 where SSN=1005;
update EMPLOYEE set SuperSSN=1001, DNo=2 where SSN=1006;
update EMPLOYEE set SuperSSN=1001, DNo=3 where SSN=1007;
update EMPLOYEE set SuperSSN=1003, DNo=4 where SSN=1008;
update EMPLOYEE set SuperSSN=1006, DNo=6 where SSN=1009;
update EMPLOYEE set SuperSSN=1005, DNo=1 where SSN=1010;
update EMPLOYEE set SuperSSN=1002, DNo=1 where SSN=1011;
update EMPLOYEE set SuperSSN=1001, DNo=1 where SSN=1012;
update EMPLOYEE set SuperSSN=1001, DNo=1 where SSN=1013;
update EMPLOYEE set SuperSSN=1002, DNo=1 where SSN=1014;
update EMPLOYEE set SuperSSN=1001, DNo=1 where SSN=1015;
update EMPLOYEE set SuperSSN=1001, DNo=1 where SSN=1016;
update EMPLOYEE set SuperSSN=1001, DNo=5 where SSN=1017;
update EMPLOYEE set SuperSSN=1003, DNo=5 where SSN=1018;
update EMPLOYEE set SuperSSN=1006, DNo=5 where SSN=1019;

insert into DLOCATION values (1, "Bangalore");
insert into DLOCATION values (1, "Mumbai");
insert into DLOCATION values (1, "Pune");
insert into DLOCATION values (2, "Mumbai");
insert into DLOCATION values (3, "Chennai");
insert into DLOCATION values (4, "Mumbai");
insert into DLOCATION values (5, "Guwahati");
insert into DLOCATION values (6, "Mumbai");
insert into DLOCATION values (7, "Delhi");
insert into DLOCATION values (8, "Mumbai");
insert into DLOCATION values (8, "Pune");

insert into PROJECT values (10, "IOT", "Mumbai", 1);
insert into PROJECT values (11, "Adhoc", "Pune", 1);
insert into PROJECT values (12, "Mobile", "Bangalore", 2);
insert into PROJECT values (13, "Finacle", "Chennai", 3);
insert into PROJECT values (14, "Android", "Pune", 4);
insert into PROJECT values (15, "Java", "Mumbai", 5);
insert into PROJECT values (16, "Dot Net", "Pune", 5);
insert into PROJECT values (17, "c#", "Mumbai", 6);
insert into PROJECT values (18, "c++", "Delhi", 7);
insert into PROJECT values (19, "Python", "Delhi", 8);

insert into WORKS_ON values (1001, 11, 40);
insert into WORKS_ON values (1001, 15, 45);
insert into WORKS_ON values (1001, 16, 40);
insert into WORKS_ON values (1002, 10, 45);
insert into WORKS_ON values (1002, 11, 45);
insert into WORKS_ON values (1003, 11, 45);
insert into WORKS_ON values (1004, 19, 45);
insert into WORKS_ON values (1005, 18, 45);

1-> (select Pno from PROJECT P, DEPARTMENT D, EMPLOYEE E where P.Dno=D.Dno and E.SSN=D.MgrSSN and E.Name = 'Scott') UNION (select Pno from EMPLOYEE E, WORKS_ON W where E.SSN=W.SSN and E.Name like "%Scott");
2-> select E.SSN, Salary*1.1 from EMPLOYEE E, WORKS_ON W,PROJECT P where E.SSN=W.SSN and W.PNo=P.PNo and PName = 'IOT';
3-> select DName, MAX(Salary), MIN(Salary), AVG(Salary), SUM(Salary) from EMPLOYEE E, DEPARTMENT D where E.Dno=D.Dno group by D.DName HAVING D.DName='Accounts'; 
4-> select E.Name from EMPLOYEE E where NOT EXISTS (select PNo from PROJECT where DNo=5 and PNo NOT IN (select PNo from WORKS_ON W where W.SSN=E.SSN));
5-> select DNo, count(SSN) from EMPLOYEE where Salary>600000 and DNo in (select DNo from EMPLOYEE group by DNo having count(SSN)>5) group by DNo; 
