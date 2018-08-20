create user sa_src
identified by 1234
default tablespace users
quota unlimited on users
temporary tablespace temp
profile default;

grant connect, resource to sa_src;

create table Filenames
(
filename varchar2(150) 
);