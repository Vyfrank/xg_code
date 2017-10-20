create table test1(
     username varchar2(20),
     age number(3),
     sex varchar2(2),
     salary number(6,2)
)

DESCRIBE test1;


alter table test1 add constraint foreign_key foreign key(username) references primary_key_table(username);  

alter table test1 add constraint unique_name unique(username);

alter table test1 drop constraint unique_name;

alter table test1 add constraint check_name check(sex in('ÄÐ','Å®'));

alter table test1 add constraint primary_key_name primary key(username);

alter table test1 drop constraint primary_key_name;

alter table test1 modify username constraint primary_key_name primary key;

--alter table test1 add constraint notnull_name not null(salary);

alter table test1 modify salary constraint notnull_name not null;