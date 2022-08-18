
--부서정보 테이블
create table deptInfo (
deptNum int not null auto_increment,
dept varchar(30) not null,
constraint deptInfo_dNum_pk primary key(deptNum)
);

--유저정보 테이블
create table userInfo (
id varchar(20),
pw varchar(20) not null,
name varchar(20) not null,
userNum int not null,
deptNum int not null,
spot varchar(20) not null,
position varchar(20) not null,
leftOff float not null default 15,
constraint userInfo_id_pk primary key (id),
constraint userInfo_unum_uk unique (userNum),
constraint userInfo_dNum_fk foreign key(deptNum) references deptInfo(deptNum)
);


--참조키로 사용하려면 참조하려는 테이블의 컬럼이 pk나 unique 여야 함.

--부서번호 101번부터 부여
alter table deptInfo auto_increment=101; 





--기안문 제출 목록 테이블
create table formInfo(
formNum int not null auto_increment,
docuType varchar(10) not null,
userId varchar(20) not null,
startDate date not null,
endDate date not null,
utime varchar(10),
reason varchar(120) not null,
division varchar(10) not null default '신청',
adminId varchar(20) not null,
indate date default (current_date),
constraint formInfo_fnum_pk primary key(formNum),
constraint formInfo_userid_fk foreign key(userid) references userInfo(id),
constraint formInfo_adminid_fk foreign key(adminid) references userInfo(id)
);

-- 테이블 조회
select * from userInfo;
select * from deptInfo;
select * from formInfo;


-- 테이블 삭제
drop table deptInfo;
drop table formInfo;
drop table userInfo;


desc userInfo;
desc formInfo;
desc deptInfo;

--유저정보


-- 부서정보
insert into deptInfo(dept) values ('인사관리부');
insert into deptInfo(dept) values ('고객관리부');
insert into deptInfo(dept) values ('경영지원부');


-- 부서관리자 유저정보
insert into userInfo(id, pw, name, userNum, deptNum, spot, position) values ('master1', 'master1', '김진경', 220802101, 101, '부장', '팀장');
insert into userInfo(id, pw, name, userNum, deptNum, spot, position) values ('master2', 'master2', '황은지', 220802102, 102, '과장', '팀장');
insert into userInfo(id, pw, name, userNum, deptNum, spot, position) values ('master3', 'master3', '김용남', 220802103, 103, '부장', '팀장');


-- 기안문 목록 등록
insert into formInfo(docuType, userId, startdate, enddate, reason, division, adminId) 
values ('연차', 'asdf', '2022-07-06', '2022-07-10', '개인사정ㅇㅇ', '신청', 'master1');

insert into formInfo(docuType, userId, startdate, enddate, utime, reason, division, adminId) 
values ('반차', 'asdf', '2022-07-06', '2022-07-10', '오전', '병원', '신청', 'master1');

insert into formInfo(docuType, userId, startdate, enddate, reason, division, adminId) 
values ('연차', 'bbb', '2022-07-08', '2022-07-10', '개인사정ㅁㅁ', '신청', 'master2');

insert into formInfo(docuType, userId, startdate, enddate, utime, reason, division, adminId) 
values ('반차', 'bbb', '2022-07-09', '2022-07-9', '오전', '병원', '신청', 'master1');

insert into formInfo(docuType, userId, startdate, enddate, reason, division, adminId) 
values ('연차', 'ccc', '2022-09-02', '2022-09-04', '병가', '신청', 'master3');

update formInfo set startDate='2022-09-02', endDate='2022-09-14', reason='이유'  where formNum=6
select (docuType, startdate, enddate, division, indate) from formInfo;

delete from formInfo;






select * from formInfo;
insert into formInfo(docuType, userId, startdate, enddate, reason, adminId) 
select '연차', 'ccc', '2022-08-06', '2022-08-10', '개인사정ㅇㅇ', id from userInfo where position='팀장';