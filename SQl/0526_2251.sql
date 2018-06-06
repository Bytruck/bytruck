drop table profit; 
drop table detail_course;
drop table course;
drop table use_coupon; 한번만 실행 후 삭제
drop table coupon; 한번만 실행 후 삭제
drop table advertisement;
drop table event;
drop table foodtruck;
drop table foodtruck_location;
drop table review;
drop table chatting;
drop table comments;
drop table reply;
drop table board;
drop table users;
drop sequence seq_coupon_type; 한번만 실행후 삭제
drop sequence seq_advertisementmotion_no;
drop sequence foodtruck_no_seq;
drop sequence review_no_seq;
drop sequence chatting_no_seq;
drop sequence board_no_seq;
drop sequence board_no_seq1;
drop sequence board_no_seq2;
drop sequence comments_com_seq;
drop sequence course_no_seq;
drop sequence detailcourse_no_seq;
drop sequence ad_id_seq;
drop sequence event_id_seq;

-- create users table
create table users(
    user_id             varchar2(20) primary key,
    user_pwd            varchar2(20) not null,
    name                varchar2(20) not null,
    birthday            varchar2(20)not null,
    phone_number        varchar2(20) not null,
    email               varchar2(50) not null,
    bussiness_number    varchar2(20),   
    type                varchar2(20) not null,
    useryn              varchar2(2) default 'y' not null
);

--create use_coupon table
--create table use_coupon(
--    coupon_number       number  not null,
--    user_id                    varchar2(20)   not null,    
--    coupon_type            number   not null,
--    start_date                date  not null,
--    end_date                 date   not null,
--    constraint use_coupon_id_fk foreign key (user_id) references users(user_id)
--);
----insert use_coupon table data
--insert into use_coupon(coupon_number, user_id, coupon_type, start_date, end_date)
--values(76940098, 'CL', 1, to_char(to_date('2018.06.01','YYYY.MM.DD'), to_char(to_date('2018.06.30','YYYY.MM.DD'));
--insert into use_coupon (coupon_number, user_id, coupon_type, start_date, end_date)
--values (15541198, 'JM', 1, to_char(to_date('2018.07.01','YYYY.MM.DD'), to_char(to_date('2018.07.31','YYYY.MM.DD'));
--insert into use_coupon (coupon_number, user_id, coupon_type, start_date, end_date)
--values (66384951, 'EJ', 2, to_char(to_date('2018.07.08','YYYY.MM.DD'), to_char(to_date('2018.07.15','YYYY.MM.DD'));
--insert into use_coupon (coupon_number, user_id, coupon_type, start_date, end_date)
--values (12345670, 'SB', 2, to_char(to_date('2018.07.18','YYYY.MM.DD'), to_char(to_date('2018.08.01','YYYY.MM.DD'));
--insert into use_coupon (coupon_number, user_id, coupon_type, start_date, end_date)
--values (98765430, 'MS', 3, to_char(to_date('2018.08.18','YYYY.MM.DD'), to_char(to_date('2018.09.01','YYYY.MM.DD'));
--insert into use_coupon (coupon_number, user_id, coupon_type, start_date, end_date)
--values (74185236, 'gijang', 3, to_char(to_date('2018.09.18','YYYY.MM.DD'), to_char(to_date('2018.10.01','YYYY.MM.DD'));
--select * from use_coupon;

-- create coupon table
--create table coupon(
--    coupon_type            number   not null,
--    coupon_name          varchar2(20)   not null,
--    discount_rate           number  not null
--);
---- insert coupon table data
--insert into coupon(coupon_type, coupon_name, discount_rate)
--values(SEQ_COUPON_TYPE.NEXTVAL , '생일 쿠폰', 30);
--insert into coupon (coupon_type, coupon_name, discount_rate)
--values (SEQ_COUPON_TYPE.NEXTVAL, '이벤트 쿠폰', 20); 
--insert into coupon (coupon_type, coupon_name, discount_rate)
--values (SEQ_COUPON_TYPE.NEXTVAL, '시즌 쿠폰', 30);
--select * from coupon;

-- create advertisement table
create table advertisement(
    user_id                     varchar2(20) not null,
    no                          number  not null,
    type                        number(1) not null,
    start_date                  varchar2(20) not null,
    end_date                    varchar2(20) not null,
    title                       varchar2(100) not null,
    detail                      varchar2(500) not null,--file 빠짐
    constraint advertisementmotion_id_no_pk primary key(user_id, no),
    constraint advertisementmotion_id_fk foreign key (user_id) references users(user_id)
);

-- create foodtruck table
create table foodtruck(
    user_id             varchar2(20),
    bussiness_name      varchar2(20) ,
    menu_name           varchar2(20) ,
    price               number ,
    menu_type           number ,
    detail              varchar2(100),
    constraint foodtruck_user_idpk primary key (user_id),
    constraint foodtruck_user_id_pk FOREIGN key (user_id) REFERENCES users(user_id)
);

--create foodtruck_location table
CREATE TABLE foodtruck_location(
no          number not null,               
user_id     varchar2(20) not null,                            
title       varchar2(100) not null,
opendate    varchar2(20) not null,
detail      varchar2(1500),
latitude    varchar2(50),
longtitude  varchar2(50),                 
poweryn     varchar2(2) , --boolean 
foodtype    varchar2(20) not null,
imgpath     varchar2(100),
constraint food_truck_no_pk primary key(no, user_id),
constraint food_truck_user_id_fk foreign key(user_id)
    references users(user_id)
);

select * from foodtruck_location;


--create table event
create table event(
    no                  number,
    user_id             varchar2(20) not null,
    title               varchar2(50) not null,
    detail             varchar2(1000) not null,
    event_date      varchar2(20)    not null,
    imgpath         varchar2(100),
    constraint event_no_user_id_pk primary key(no, user_id),
    constraint event_no_user_id_fk foreign key(no,user_id) references foodtruck_location(no, user_id)
);

select * from event;    

-- create review table
create table review(
    no              number       not null,
    user_id         varchar2(20) not null,
    location        varchar2(20) not null,
    trip_date       varchar2(20) not null,
    title           varchar2(100) not null,
    detail          varchar2(500),
    publicyn        number(1)  not null,
    posted          varchar2(20),--첨부파일 빠짐,
    views           number not null,
    good            number not null,
    constraint review_no_pk primary key(no),
    constraint review_user_id_fk foreign key(user_id)
    references users(user_id)
);

-- create chatting table
create table chatting (
    no          number,
    posted      varchar2(100) not null,
    user_id     varchar2(20) not null,
    message     varchar2(500) not null,
    constraint chatting_no_pk primary key(no),
    constraint chatting_user_id_fk foreign key(user_id)
    references users(user_id)
);

--create board table
create table board(
    no      number not null,
    type    number not null,
    title   varchar2(200) not null,
    detail varchar2(1500) not null,
    user_id varchar2(20),
    views   number,
    posted varchar2(20),
    CONSTRAINT board_no_type_pk primary key(no,type),
    CONSTRAINT board_user_id foreign key(user_id) references users(user_id)
);

--create comments table
create table comments(
    com_no  number not null,
    user_id varchar2(20) not null,
    no      number not null,
    type    number not null,
    comments varchar2(3000) not null,
    CONSTRAINT comments_com_no_pk primary key(com_no),
    CONSTRAINT comments_no_fk foreign key(no,type) references board(no,type)
);

--create reply table
create table reply(
    re_no  number not null,
    user_id varchar2(20) not null,
    no      number not null,
    type    number not null,
    comments varchar2(3000) not null,
    CONSTRAINT reply_re_no_pk primary key(re_no),
    CONSTRAINT reply_re_no_fk foreign key(no,type) references board(no,type)
);

--create course table
create table course(
    no          number not null,
    user_id     varchar2(20) not null,
    trip_date   varchar2(20) not null,
    withyn      varchar2(6) default 'y' not null,
    openyn      varchar2(6) default 'y' not null,
    title       varchar2(100) not null,
    detail      varchar2(500),
    views       number,
    good        number,
    CONSTRAINT course_no_pk primary key(no),
    CONSTRAINT course_user_id_fk foreign key(user_id) references users(user_id)
);

--create detail_course
create table detail_course(
    no          number not null,
    step        number not null,
    latitude    number not null,
    longtitude  number not null,
     CONSTRAINT detail_course_no_step_pk primary key(no,step)
);

--create profit table
create table profit(
    ad_id       number not null,
    type        varchar2(10) not null,
    price       number not null,
    start_date  varchar2(20) null,
    end_date    varchar(20) not null,
    detail      varchar2(500),
    bussiness_name  varchar2(20),
    CONSTRAINT profit_ad_id_pk primary key(ad_id)
);

-- create sequence
create sequence seq_coupon_type minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache;
create sequence seq_advertisementmotion_no minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache;
create sequence foodtruck_no_seq minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache;
create sequence review_no_seq minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache;
create sequence chatting_no_seq minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache;
create sequence board_no_seq minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache; 
create sequence board_no_seq1 minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache;
create sequence board_no_seq2 minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache;
create sequence comments_com_seq minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache;
create sequence course_no_seq minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache;
create sequence detailcourse_no_seq minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache;
create sequence ad_id_seq minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache;
create sequence event_id_seq minvalue 0
start with 0 increment by 1 maxvalue 999 cycle nocache;

--insert users table
insert into users(user_id, user_pwd, name, birthday, phone_number, email, bussiness_number, type)
values('CL', '1q2w3e', 'chae', to_char(to_date('2018.04.07', 'yyyy.mm.dd')), '010-1234-5678', 'abcd@gmail.com', null,'AD');
insert into users(user_id, user_pwd, name, birthday, phone_number, email, bussiness_number, type)
values('JM','123123', 'jong', to_char(to_date('2018.04.07', 'yyyy.mm.dd')), '010-1234-1234' , 'ddd@naver.com', null, 'TR');
insert into users(user_id, user_pwd, name, birthday, phone_number, email, bussiness_number, type)
values('EJ','123123','jin', to_char(to_date('2018.04.07', 'yyyy.mm.dd')), '010-1111-2222', 'aaa@naver.com', null, 'TR');
insert into users(user_id, user_pwd, name, birthday, phone_number, email, bussiness_number, type)
values('SB','123123','sol',to_char(to_date('2018.04.07', 'yyyy.mm.dd')), '010-0000-0000', 'bbb@naver.com', null, 'TR');
insert into users(user_id, user_pwd, name, birthday, phone_number, email, bussiness_number, type)
values('MS','123123', 'min', to_char(to_date('2018.04.07', 'yyyy.mm.dd')), '010-1111-1111', 'ccc@naver.com', null, 'TR');
insert into users(user_id, user_pwd, name, birthday, phone_number, email, bussiness_number, type)
values('jigak','123123','chae', to_char(to_date('2018.04.07', 'yyyy.mm.dd')), '010-2222-3333','ddd@naver.com', null,'TR');
insert into users(user_id, user_pwd, name, birthday, phone_number, email, bussiness_number, type)
values('gijang','12345', 'eun', to_char(to_date('2018.04.07', 'yyyy.mm.dd')), '010-3234-3553','eee@naver.com', null, 'BK');
insert into users(user_id, user_pwd, name, birthday, phone_number, email, bussiness_number, type)
values('saem','12345', 'sub', to_char(to_date('2018.04.07', 'yyyy.mm.dd')), '010-1234-1234', 'fff@naver.com', null, 'BK' );
insert into users(user_id, user_pwd, name, birthday, phone_number, email, bussiness_number, type)
values('saem2', '12345', 'hyo', to_char(to_date('2018.04.07', 'yyyy.mm.dd')), '010-1234-1234', 'ggg@naver.com', null, 'BK');
insert into users(user_id, user_pwd, name, birthday, phone_number, email, bussiness_number, type)
values('genji' , '12345', 'gold', to_char(to_date('2018.04.07', 'yyyy.mm.dd')), '010-1234-1234', 'hhh@naver.com', null, 'BK' );
insert into users(user_id, user_pwd, name, birthday, phone_number, email, bussiness_number, type)
values('hanzo' ,'12345' ,'insect', to_char(to_date('2018.04.07', 'yyyy.mm.dd')), '010-1234-1234', 'iii@naver.com', null ,'BK');
select * from users;

--insert , advertisementmotion table data
insert into advertisement(user_id, no, type, start_date, end_date, title, detail)
values('CL', seq_advertisementmotion_no.nextval, 1, to_char(to_date('2018.05.18','YYYY.MM.dd')), to_char(to_date('2018.05.25','YYYY.MM.dd')), '맥주 이벤트', '맥주 1잔을 무료로 드립니다.');
insert into advertisement(user_id, no, type, start_date, end_date, title, detail)
values('JM', seq_advertisementmotion_no.nextval, 1, to_char(to_date('2018.06.18','YYYY.MM.dd')), to_char(to_date('2018.06.28','YYYY.MM.dd')), '힘내라 청춘', '20대를 위한 특별 이벤트입니다.');
insert into advertisement(user_id, no, type, start_date, end_date, title, detail)
values('EJ', seq_advertisementmotion_no.nextval, 1, to_char(to_date('2018.07.01','YYYY.MM.dd')), to_char(to_date('2018.07.08','YYYY.MM.dd')), '한강 이벤트', '이번주에 한강을 방문하시는 분들을 위한 이벤트입니다.');
insert into advertisement(user_id, no, type, start_date, end_date, title, detail)
values('SB', seq_advertisementmotion_no.nextval, 2, to_char(to_date('2018.06.18','YYYY.MM.dd')), to_char(to_date('2018.06.20','YYYY.MM.dd')), '백종원이 떴다!', '푸드트럭에 백종원이 나타납니다.');
insert into advertisement(user_id, no, type, start_date, end_date, title, detail)
values('MS', seq_advertisementmotion_no.nextval, 2, to_char(to_date('2018.07.18','YYYY.MM.dd')), to_char(to_date('2018.07.19','YYYY.MM.dd')), '원더트럭', '씩씩하고 활기찬 여성의 이미지를 담은 푸드트럭입니다.');
insert into advertisement(user_id, no, type, start_date, end_date, title, detail)
values('gijang', seq_advertisementmotion_no.nextval, 2, to_char(to_date('2018.05.20','YYYY.MM.dd')), to_char(to_date('2018.05.25','YYYY.MM.dd')), '프랑스 분식', '브르타뉴 출신이 만드는 크레페를 선보입니다.');
select * from advertisement;

--insert foodtruck table data
insert into foodtruck(user_id, bussiness_name, menu_name, price, menu_type, detail)
values('JM', 'Chu러스', '츄러스', 3000, 1, '사랑을 만들어 주는 츄러스');
insert into foodtruck(user_id, bussiness_name, menu_name, price, menu_type, detail)
values('EJ', 'Stay크으~', '스테이크 볶음밥', 6000, 1, '굴소스 철판 볶음밥과 석쇠 스테이크' );
insert into foodtruck(user_id, bussiness_name, menu_name, price, menu_type, detail)
values('SB', '덕복희씨', '떡볶이', 3000, 1, '웃음터지는 덕복희');
insert into foodtruck(user_id, bussiness_name, menu_name, price, menu_type, detail)
values('MS', '문어빵', '타코야끼 6개', 2000, 1, '주인이 좋아하는 타코야끼');
insert into foodtruck(user_id, bussiness_name, menu_name, price, menu_type, detail)
values('jigak', 'KITRI', '지각 5분' , 1000, 1, '1~5분 지각시');
select * from foodtruck;

insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'EJ', '큐브 스테이크', to_char(to_date('2018.06.09', 'yyyy.mm.dd')), '<p style="text-align: center; ">큐브 스테이크 먹으러 오세요</p>', '37.3574358', '127.1150643' , '0', 'main', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\main2.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'EJ', '컵밥', to_char(to_date('2018.07.07', 'yyyy.mm.dd')), '<p style="text-align: left;">컵밥 좋아요</p>', '37.3574358', '127.1150643',  '1', 'main', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\main3.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'SB', '라멘트럭', to_char(to_date('2018.08.07', 'yyyy.mm.dd')), '<p>라멘라멘 맛있다</p>','37.3574358', '127.1150643', '1', 'main', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\main8.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'SB', '도너츠', to_char(to_date('2018.07.11', 'yyyy.mm.dd')), '도너츠 10+1 판매합니다',  '37.3574358', '127.1150643', '0', 'desert', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\desert6.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'MS', '초코쿠키', to_char(to_date('2018.08.20', 'yyyy.mm.dd')), '<p><u>서브웨이 쿠키보다 맛있음</u></p>',  '37.3574358', '127.1150643', '0', 'desert', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\desert2.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'MS', '와플이 쪼아', to_char(to_date('2018.07.01', 'yyyy.mm.dd')), '<p>아이스크림이 듬뿍 올라간 <span style="background-color: rgb(255, 0, 255);">와플</span></p>', '37.3574358', '127.1150643' , '1', 'desert', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\desert1.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'jigak', '아메리카노~', to_char(to_date('2018.08.02', 'yyyy.mm.dd')), '<h2>아메리카노 좋아좋아좋아</h2>',  '37.3574358', '127.1150643', '1', 'drink', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\desert2.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'jigak', '핵꿀맛 망고스무디', to_char(to_date('2018.07.21', 'yyyy.mm.dd')), '<p><span style="background-color: rgb(239, 198, 49); color: rgb(255, 156, 0);">망고스무디는 노란색인가요</span></p>', '37.3574358' , '127.1150643', '1', 'drink', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\mango.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'JM', '그린티라떼', to_char(to_date('2018.08.08', 'yyyy.mm.dd')), '<p>내가 좋아하는 그린티라떼</p>', '37.3574358' , '127.1150643', '0', 'drink', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\drink6.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'JM', '딸기쥬~스', to_char(to_date('2018.07.09', 'yyyy.mm.dd')), '<p><span style="color: rgb(255, 0, 0); font-weight: bold;">안 먹으면 후회하는 딸기주스</span></p>', '37.3574358', '127.1150643' ,  '0', 'drink', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\drink4.PNG');

select * from foodtruck_location;

--inset event data table
insert into event (no, user_id, title, detail)
values(event_id_seq.nextval, 'JM', '어린이날 기념 20% 할인', '이벤트 합니다 많이 오셔서 즐겁게 놀다 가세요');
insert into event (no, user_id, title, detail)
values(event_id_seq.nextval, 'EJ', '어버이날 기념 20% 할인', '이벤트 합니다 많이 오셔서 즐겁게 놀다 가세요');
insert into event (no, user_id, title, detail)
values(event_id_seq.nextval, 'SB', '스승의날 기념 20% 할인', '이벤트 합니다 많이 오셔서 즐겁게 놀다 가세요');
insert into event (no, user_id, title, detail)
values(event_id_seq.nextval, 'MS', '민수탄신일 기념 20% 할인', '이벤트 합니다 많이 오셔서 즐겁게 놀다 가세요');
insert into event (no, user_id, title, detail)
values(event_id_seq.nextval, 'jigak', '지구멸망 기념 20% 할인', '이벤트 합니다 많이 오셔서 즐겁게 놀다 가세요');

-- inset review table data
insert into review(no, user_id, location, trip_date, title ,detail, publicyn, posted, views, good)
values (review_no_seq.nextval,'hanzo', '서울', to_char(to_date('2018.05.07','YYYY.MM.dd')),
        '한강여행 갔다왔어요', '자전거타고 한강 전체 돌고왔습니다. 굿이네요',
        1, to_char(to_date('2018.05.09','YYYY.MM.dd')),10,5);
insert into review(no, user_id, location, trip_date, title, detail ,publicyn, posted, views, good)
values (review_no_seq.nextval,'genji', '춘천', to_char(to_date('2018.05.07','YYYY.MM.dd')),
        '닭갈비 맛집을 찾아서', '닭갈비 맛집을 찾아서', 0, to_char(to_date('2018.05.10','YYYY.MM.dd')),25,10);
insert into review(no, user_id, location, trip_date, title, detail, publicyn, posted, views, good)
values (review_no_seq.nextval,'saem', '부산', to_char(to_date('2018.05.10','YYYY.MM.dd')),
        '부산맛집기행', '여행왔습니다.',
        1, to_char(to_date('2018.05.11','YYYY.MM.dd')),33,15);
insert into review(no, user_id, location, trip_date, title, detail, publicyn, posted, views, good)
values (review_no_seq.nextval,'saem2', '대구', to_char(to_date('2018.05.09','YYYY.MM.dd')),
        '막창골목속으로', '팔공산 산책',
        1, to_char(to_date('2018.05.10','YYYY.MM.dd')),50,30);
insert into review(no, user_id, location, trip_date, title, detail, publicyn, posted, views, good)
values (review_no_seq.nextval,'gijang', '청평', to_char(to_date('2018.05.10','YYYY.MM.dd')),
        '아침고요수목원', '야경이 이쁘네요.',
        1, to_char(to_date('2018.05.01','YYYY.MM.dd')), 80,45);

--insert chatting table data
insert into chatting(no, posted, user_id, message)
values(chatting_no_seq.nextval,  to_char(to_date('2018.04.28','YYYY.MM.dd')),
    'gijang', '여행지 추천해주세요.'
);
insert into chatting(no, posted, user_id, message)
values(chatting_no_seq.nextval,  to_char(to_date('2018.04.28','YYYY.MM.dd')),
    'saem', '대구 추천합니다.'
);
insert into chatting(no, posted, user_id, message)
values(chatting_no_seq.nextval,  to_char(to_date('2018.04.30','YYYY.MM.dd')),
    'saem2', '오늘 비많이 와서 여행 못가겠네요ㅠㅠ'
);
insert into chatting(no, posted, user_id, message)
values(chatting_no_seq.nextval,  to_char(to_date('2018.04.30','YYYY.MM.dd')),
    'genji', '비오는날엔 집이 최고!'
);

insert into chatting(no, posted, user_id, message)
values(chatting_no_seq.nextval,  to_char(to_date('2018.05.02','YYYY.MM.dd')),
    'hanzo', '제 후기글에 좋아요 많이 눌러주세요~'
);

-- insert board table data
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq.nextval, 0, '반갑습니다. 바이트럭관리자 입니다.',
'반갑습니다. 바이트럭관리자 입니다. Welcome everyone! Thanks', 'CL', 152, to_char(to_date('2018.05.01','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq.nextval, 0, '   바이트럭 주요 기능설명입니다.',
'바이트럭 주요 기능설명입니다. Thanks', 'CL', 180, to_char(to_date('2018.05.02','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq.nextval, 0, '광고문의 방법 입니다.',
'광고문의 방법 입니다. Thanks', 'CL', 67, to_char(to_date('2018.05.02','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq.nextval, 0, '푸드트럭 사업자님들 필독해주세요.',
'푸드트럭 사업자님들 필독해주세요! Welcome everyone! Thanks', 'CL', 32, to_char(to_date('2018.05.03','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq.nextval, 0, '   관심코스 (찜)기능이 추가 되었습니다.',
'관심코스 (찜)기능이 추가 되었습니다. Thanks', 'CL', 52, to_char(to_date('2018.05.05','YYYY.MM.dd')));

insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq1.nextval, 1, '코스짜기 이용 어떻게 하죠?',
'코스짜기 이용방법 설명 부탁드려요ㅠㅠ', 'genji', 152, to_char(to_date('2017.12.31','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq1.nextval, 1, '개인정보 조회 어떻게 하나요',
'가입했을때 제 정보를 어디서 볼 수 있나여? 변경은 가능한가요?', 'EJ', 180, to_char(to_date('2018.05.02','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq1.nextval, 1, '프드트럭 홍보 종류 알고 싶습니다.',
'프드트럭 홍보 종류 알고 싶습니다.', 'JM', 77, to_char(to_date('2018.05.02','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq1.nextval, 1, '탈퇴시 질문입니다.',
'탈퇴 후 마음이변하였을 때 재가입 가능한가요?', 'SB', 32, to_char(to_date('2018.05.09','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq1.nextval, 1, '   찜기능 갯수 제한',
'찜기능 갯수 제한있나여? 있으면 몇 개 이인가요?', 'saem2', 52, to_char(to_date('2018.05.10','YYYY.MM.dd')));

insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq2.nextval, 2, '로그인시 주의사항',
'일반 회원은 일반 회원가입 방식을 따르면 되며, 사업자 회원가입시 사업자 등록번호를 필수 입력해야 원할한 회원가입 절차가 진행됩니다.^^', 'CL', 152, to_char(to_date('2018.05.01','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq2.nextval, 2, '코스짜기 문의',
'코스짜기는 코스짜기 게시판에서  원하는 여행지역 선택 후 각각의 세부 코스 여행지를 선정 할 수 있으며, 상세 설명을 기입하실수 있습니다.', 'CL', 180, to_char(to_date('2018.05.02','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq2.nextval, 2, '광고문의 방법',
'파워링크 광고, 프로모션 광고가 있습니다.  파워링크 광고는 푸드트럭행사게시물 작성시 옵션기능으로 하실수 있으며, 프로모션기능은 관리자에게 따로 문의 하셔야합니다. 개별 가격은 관리자에게 따로 문의 바랍니다.^^', 'CL', 67, to_char(to_date('2018.05.05','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq2.nextval, 2, '푸드트럭 정보 변경',
'사업자분들 개인정보 변경뿐아니라 푸드트럭 정보도 변경 가능합니다. 정보가 변경되었을 시,마이페이지의 정보수정 항목을 찾아 수정해주세요^^', 'CL', 32, to_char(to_date('2018.05.11','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq2.nextval, 2, '   관심코스 (찜)기능',
'공개된 코스를 보면서 관심있는 코스는 하트 아이콘을 눌러 찜 을  하실 수 있습니다. 찜을 하시면 마이페이지의 관심코스 항목에서 바로 찾아 보실 수 있습니다. 많은 이용 부탁드립니다^^', 'CL', 52, to_char(to_date('2018.05.14','YYYY.MM.dd')));
select * from board;

--insert comments table data
insert into comments(com_no, user_id, no, type, comments)
values (comments_com_seq.nextval, 'genji', 1, 1, '고객님 안녕하십니까^^ 코스짜기는 코스짜기 게시판에서  원하는 여행지역 선택 후 각각의 세부 코스 여행지를 선정 할 수 있으며, 상세 설명을 기입하실수 있습니다.^^');
insert into comments(com_no, user_id, no, type, comments)
values (comments_com_seq.nextval, 'EJ', 2, 1, '고객님 안녕하십니까^^ 개인정보 조회는 마이페이지에서 조회 가능합니다^^ 일반회원님일경우  관심코스, 회원정보, 쿠폰내역등을 볼 수 있으며, 사업자분들은 개인정보 변경뿐아니라 푸드트럭 정보도 변경 가능합니다. 정보가 변경되었을 시,마이페이지의 정보수정 항목을 찾아 수정해주세요^^');
insert into comments(com_no, user_id, no, type, comments)
values (comments_com_seq.nextval, 'JM', 3, 1, '고객님 안녕하십니까^^ 파워링크 광고, 프로모션 광고가 있습니다.  파워링크 광고는 푸드트럭행사게시물 작성시 옵션기능으로 하실수 있으며, 프로모션기능은 관리자에게 따로 문의 하셔야합니다. 개별 가격은 관리자에게 따로 문의 바랍니다.^^');
insert into comments(com_no, user_id, no, type, comments)
values (comments_com_seq.nextval, 'SB', 4, 1, '고객님 안녕하십니까^^ 죄송하지만 같은 아이디로 재가입은 불가능 하십니다 신중히 생각하신 후 결정해주시기 바랍니다^^');
insert into comments(com_no, user_id, no, type, comments)
values  (comments_com_seq.nextval, 'saem2', 5, 0, '고객님 안녕하십니까^^ 찜기능은 갯수 제한이 없습니다~ 많은 이용 부탁드립니다^^');
select * from comments;
--insert reply table data
--insert into reply()
--values();
--insert into reply()
--values();
--insert into reply()
--values();
--insert into reply()
--values();
--insert into reply()
--values();


--insert comments table data
--insert into course(no, user_id, trip_date, title, detail, views, good)
--values (course_no_seq.nextval, 'gijang', to_char(to_date('2018.05.07', 'yyyy.mm.dd')), 'xx 같이 가실분','여행일정 부산찍고 제주찍고 서울까지', 10, 5);
--insert into detail_course(no, step, latitude, longtitude)
--values(course_no_seq.currval, detailcourse_no_seq.nextval, 37.51, 126.91);
--insert into detail_course(no, step, trip_date, ylocation, xlocation)
--values(course_no_seq.currval, detailcourse_no_seq.nextval, to_char(to_date('2018.05.07', 'yyyy.mm.dd')), 37.51, 126.91);
--insert into detail_course(no, step, trip_date, ylocation, xlocation)
--values(course_no_seq.nextval, detailcourse_no_seq.nextval, to_char(to_date('2018.05.07', 'yyyy.mm.dd')), 37.51, 126.91);
--ALTER SEQUENCE detailcourse_no_seq INCREMENT BY 1;

--insert into course(no, user_id, trip_date, title, detail, views, good)
--values (course_no_seq.nextval, 'saem', to_char(to_date('2018.05.07', 'yyyy.mm.dd')), ' 떠나요 둘이서', '여행일정 부산찍고 제주찍고 서울까지', 20, 10);
--insert into course(no, user_id, trip_date, title, detail, views, good)
--values (course_no_seq.nextval, 'saem2', to_char(to_date('2018.05.07', 'yyyy.mm.dd')), ' 손에 손잡고 나를 넘어서', '여행일정 부산찍고 제주찍고 서울까지',15, 7) ;
--insert into course(no, user_id, trip_date, title, detail, views, good)
--values (course_no_seq.nextval, 'genji', to_char(to_date('2018.05.07', 'yyyy.mm.dd')), '인생은 혼자여행', '여행일정 부산찍고 제주찍고 서울까지',3, 2);
--insert into course(no, user_id, trip_date, title, detail, views, good)
--values (course_no_seq.nextval, 'hanzo', to_char(to_date('2018.05.07', 'yyyy.mm.dd')), ' 나홀로 배낭여행', '여행일정 부산찍고 제주찍고 서울까지',4, 5);

--insert into course(no, user_id, trip_date, withyn, openyn, title, detail, views, good)
--values (course_no_seq.nextval, ?,to_char(to_date('?', 'yyyy.mm.dd')),?,?,?,?,?,?);

select * from course;


--insert comments talbe data
--insert into detail_course(no, step, trip_date, latitude, longtitude)
--values(detailcourse_no_seq.nexval, 1, to_char(to_date('2018.05.07', 'yyyy.mm.dd')), 37.51, 126.91);
--insert into detail_course(no, step, trip_date, latitude, longtitude)
--values(detailcourse_no_seq.currval, 2, to_char(to_date('2018.05.07', 'yyyy.mm.dd')), 37.52, 126.92);
--insert into detail_course(no, step, trip_date, latitude, longtitude)
--values(2, 1, to_char(to_date('2018.05.08', 'yyyy.mm.dd')), 37.53, 126.93);
--insert into detail_course(no, step, trip_date, latitude, longtitude)
--values(2, 2, to_char(to_date('2018.05.08', 'yyyy.mm.dd')), 37.54, 126.94);
--insert into detail_course(no, step, trip_date, latitude, longtitude)
--values(3, 1, to_char(to_date('2018.05.09', 'yyyy.mm.dd')), 37.55, 126.95);
--insert into detail_course(no, step, trip_date, latitude, longtitude)
--values(3, 2, to_char(to_date('2018.05.09', 'yyyy.mm.dd')), 37.56, 126.96);
--insert into detail_course(no, step, trip_date, latitude, longtitude)
--values(4, 1, to_char(to_date('2018.05.10', 'yyyy.mm.dd')), 37.57, 126.97);
--insert into detail_course(no, step, trip_date, latitude, longtitude)
--values(4, 2, to_char(to_date('2018.05.10', 'yyyy.mm.dd')), 37.58, 126.98);
--insert into detail_course(no, step, trip_date, latitude, longtitude)
--values(5, 1, to_char(to_date('2018.05.11', 'yyyy.mm.dd')), 37.59, 126.99);
    
select c.no, dc.step, c.title, c.detail, c.withyn, c.trip_date,  dc.LATITUDE, dc.LONGTITUDE
from course c join detail_course dc
on c.no = dc.no; 

        
        select *
        from course
        order by no;


select c.no, dc.step, c.title, c.detail, c.withyn, dc.LATITUDE, dc.LONGTITUDE
from course c join detail_course dc
on c.no = dc.no;
where c.no = 5;
ALTER SEQUENCE detailcourse_no_seq INCREMENT BY 1;

select detailcourse_no_seq.currval
from dual; 

--insert profit table data
insert into profit(ad_id, type, price, start_date, end_date, detail, bussiness_name)
values(ad_id_seq.nextval, 'PL' ,300000,  to_char(to_date('2018.05.11', 'yyyy.mm.dd')),  to_char(to_date('2018.06.11', 'yyyy.mm.dd')), '파워링크', '덕복희씨');
insert into profit(ad_id, type, price, start_date, end_date, detail, bussiness_name)
values(ad_id_seq.nextval, 'PL' ,300000,  to_char(to_date('2018.05.12', 'yyyy.mm.dd')),  to_char(to_date('2018.06.12', 'yyyy.mm.dd')), '파워링크', 'Chu러스~');
insert into profit(ad_id, type, price, start_date, end_date, detail, bussiness_name)
values(ad_id_seq.nextval, 'AD' ,1000000,  to_char(to_date('2018.05.13', 'yyyy.mm.dd')),  to_char(to_date('2018.07.13', 'yyyy.mm.dd')), '광고', '던킨');
insert into profit(ad_id, type, price, start_date, end_date, detail, bussiness_name)
values(ad_id_seq.nextval, 'AD' ,1000000,  to_char(to_date('2018.05.14', 'yyyy.mm.dd')),  to_char(to_date('2018.08.14', 'yyyy.mm.dd')), '광고', '로지텍');

commit;


