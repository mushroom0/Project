-회원관리 테이블 
create table users(
	name varchar2(20) not null,
	id varchar2(50) primary key,
	pwd varchar2(50) not null,
	email varchar2(50) default null, 
	telephone varchar2(20) not null, 
	addr varchar2(100) not null,
	favorite_kind varchar2(30),
	favorite_area varchar2(30),
	signup_date date
);

-공연 기획 데이타 테이블 
create table festival_plan(
   num_pk number primary key,
   title varchar2(100) not null,
   writer varchar2(20) not null,
   content CLOB not null,
   planperson varchar2(10),
   letterdate date,
   count number
   );
   
create sequence festival_plan_seq;
   
-공연 정보 데이타 테이블 
create table festival_info_callender(
	num_pk number,
	area varchar2(200),
	fes_date date,
	primary key(num_pk,area,fes_date)
);

-공연 소개 데이타 테이블 
create table festival_intro(
	festival_no number,
	festival_area varchar2(200),
	festival_date date,	
	festival_intro_text clob not null,
	festival_host varchar2(100) not null,
	festival_schedule varchar2(50) not null,
	festival_time varchar2(50) not null,
	festival_title varchar2(100) not null,
	festival_kind varchar2(100) not null,
	FOREIGN KEY(festival_no,festival_area, festival_date) REFERENCES festival_info_callender(festival_no,festival_area, festival_date)		
);

-공연 후기 관리 테이블 
create table review(
   fst_name varchar2(100) not null,
   re_num number primary key,
   re_title varchar2(100) not null,
   re_writer varchar2(20) not null,
   re_contents CLOB not null,
   re_regdate DATE,
   re_count number
);


   
   
   
   
