create table SALESMAN(Salesman_id int(10) primary key,Name varchar(40),City
varchar(40),Commission varchar(20));
create table CUSTOMER(Customer_id int(10),Cust_Name varchar(40),City
varchar(40),Grade int(10),Salesman_id int(10),primary key(Customer_id),foreign
key(Salesman_id) references Salesman(Salesman_id) on delete set null);
create table ORDERS(Order_no int(10),Purchase_Amt int(20),Ord_date date,Customer_id
int(10),Salesman_id int(10),primary key(Order_no),foreign key(Customer_id)
references Customer(Customer_id) on delete cascade,foreign key(Salesman_id)
references Salesman(Salesman_id) on delete cascade);

insert into SALESMAN values(1000,"Sanjay","Bangalore","20%"),
(1001,"Sujal","Hyderabad","30%"),(1002,"Srujan","Kolkata","40%"),
(1003,"Satish","Pune","35%");
insert into CUSTOMER values(1,"RAHUL","Bangalore",100,1000),
(2,"RAM","Bangalore",100,1000),(3,"RAJ","Bangalore",100,1000),
(4,"ROHAN","Hyderabad",100,1001),(5,"RISHAB","Hyderabad",100,1001),
(6,"RITHIK","Kolkata",300,1002),(7,"RITESH","Kolkata",600,1002),
(8,"Rakesh","Pune",200,1000);

insert into ORDERS values(101,6000,"2022-01-01",1,1000),(102,4000,"2022-01-
01",2,1000),(103,6000,"2022-01-02",3,1000),(104,8000,"2022-01-02",4,1001),
(105,5000,"2022-01-02",5,1001),(106,6000,"2022-01-03",6,1002),(107,9000,"2022-01-
03",7,1002),(108,3000,"2022-01-04",8,1000);


 select count(*) from CUSTOMER where Grade >(select avg(Grade) from CUSTOMER where
City="Bangalore");

select Name,Salesman_id from SALESMAN where Salesman_id in(select Salesman_id from
CUSTOMER group by Salesman_id having count(*)>1);

(select S.Salesman_id,S.Name,C.Cust_Name From Salesman S,Customer C where
S.Salesman_id=C.Salesman_id AND S.City=C.City)UNION(Select
S.Salesman_id,S.Name,C.Cust_Name From Salesman S,Customer C where
S.Salesman_id=C.Salesman_id AND S.City!=C.City)UNION(Select Salesman_id,Name,"NO
CUSTOMER" From Salesman where Salesman_id NOT IN(Select Salesman_id from
Customer));

create view highest_order As (select Salesman_id,Ord_date,Purchase_Amt from ORDERS
where(Ord_date,Purchase_Amt)IN (Select Ord_date,Max(Purchase_Amt) from ORDERS group
by Ord_date));
select *from highest_order;

Delete from SALESMAN where Salesman_id=1000;
