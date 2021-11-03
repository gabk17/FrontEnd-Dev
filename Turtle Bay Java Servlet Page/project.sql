create  Database project;
create table tbl_reservations(
res_id int primary key auto_increment,
res_name varchar(200),
res_phone varchar(200),
res_arrival varchar(200),
res_departure varchar(200),
res_type varchar(200),
res_room varchar(200),
res_people varchar(200),
res_details varchar(200));

insert into tbl_reservations(res_id ,res_name ,res_phone ,res_arrival,res_departure ,res_type ,res_room,res_people,res_details )
values (1,"Gabriel","456666","15/7/2021","21/7/2021","Small size room","123","2","nothing");

create table tbl_user(
user_id int primary key AUTO_INCREMENT,
fname varchar(200),
lname varchar(200),
uname varchar(200),
email varchar(200),
pass varchar(200),
priority varchar(200)
);

select * from tbl_user;
select * from tbl_reservations;

insert into tbl_user(user_id ,fname ,lname ,uname,email ,pass ,priority )
values (1,"jean","razz","jp","jp@123.com","123","Admin");

select * from  tbl_user where priority = 'Regular User' and uname = "JPR";
select * from  tbl_reservations where res_name = "JEAN PAUL";



