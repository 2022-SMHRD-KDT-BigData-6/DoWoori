
create table board(
	idx int not null auto_increment,
	title varchar(100) not null,
	writer varchar(10) not null,
	indate datetime default now(),
	contents varchar(2000) not null,
	primary key(idx)	
);

select * from board where idx=3;

--다른 컬럼들은 자동으로 들어감
insert into board(title, writer, contents) values('제목1', '김ff', '게시판글1');
insert into board(title, writer, contents) values('제목2', '김dd', '게시판글2');
insert into board(title, writer, contents) values('제목3', '김aa', '게시판글3');


delete from board where idx=6;
select * from board;

drop table board;