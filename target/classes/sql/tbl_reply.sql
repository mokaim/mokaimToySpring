create table usr(
	usr_id varchar(20) unique,
	usr_name varchar(20)
);

create table comments(
	comments_id int primary key default(next value for s1),
	usr_id varchar(20),
	comments_content varchar(128),
	reg_date date,
	
	foreign key (usr_id) references usr(usr_id) on delete cascade on update cascade
	
);

create table reply(
	reply_id int,
	usr_id varchar(20),
	comments_id int,
	reply_content varchar(128),
	reply_date date,
	
	foreign key (usr_id) references usr(usr_id) on delete cascade on update cascade,
	foreign key (comments_id) references comments(comments_id) on delete cascade on update cascade
);

create sequence s1 start with 1 minvalue 1 maxvalue 1000 increment by 1 cache 1000 nocycle engine=Aria;

insert into comments (usr_id,comments_content,reg_date) values("admin","test","2020-07-22");



