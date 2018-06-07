
drop table detail_course;
drop table course;
drop table advertisement;
drop table event;
drop table foodtruck;
drop table foodtruck_location;
drop table review;
drop table chatting;
drop table board;
drop table users;

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

-- create advertisement table
create table advertisement(
    user_id                     varchar2(20) not null,
    no                          number  not null,
    title                       varchar2(100) not null,
    detail                      varchar2(500) not null,
    posted                      varchar2(20),
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
-- create review table
create table review(
    no              number       not null,
    user_id         varchar2(20) not null,
    trip_date       varchar2(20) not null,
    title           varchar2(100) not null,
    detail          varchar2(2000),
    posted          varchar2(20),
    latitude    varchar2(50),
    longtitude  varchar2(50), 
    views           number,
    good            number,
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


--create course table
create table course(
    no          number not null,
    user_id     varchar2(20) not null,
    trip_date   varchar2(20) not null,
    withyn      varchar2(20) default 'y' not null,
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

--insert advertisement table data
insert into advertisement(user_id, no, title, detail, posted)
values('CL', seq_advertisement_no.nextval, '���� �̺�Ʈ', '������ ���� �������? ���� Ǫ��Ʈ�������� �޴� 1�����̻��� �ֹ��ϸ� ���� 1���� ����� �ִ� �̺�Ʈ�� �մϴ�. ���� ���ż� �ÿ��� ���� ���� �ϰ� ������~', to_char(to_date('2018.05.08','YYYY.MM.dd')));
insert into advertisement(user_id, no, title, detail, posted)
values('JM', seq_advertisement_no.nextval, '������ û��', '20�븦 ���� Ư���� �̺�Ʈ�� �غ�Ǿ� �ֽ��ϴ�.', to_char(to_date('2018.05.10','YYYY.MM.dd')));
insert into advertisement(user_id, no, title, detail, posted)
values('EJ', seq_advertisement_no.nextval, '�Ѱ� �̺�Ʈ', '�̹��ֿ� �Ѱ��� �湮�Ͻô� �е��� ���� �̺�Ʈ�Դϴ�.', to_char(to_date('2018.05.18','YYYY.MM.dd')));
insert into advertisement(user_id, no, title, detail, posted)
values('SB', seq_advertisement_no.nextval, '�������� ����!', 'Ǫ��Ʈ���� �������� ��Ÿ���ϴ�. ��¦�����?', to_char(to_date('2018.05.26','YYYY.MM.dd')));
insert into advertisement(user_id, no, title, detail, posted)
values('MS', seq_advertisement_no.nextval, '���� ������ ���� �̺�Ʈ!', '�����е鲲�� Ư���� 20%������ �����մϴ�. ���� ���ż� ���ִ� ���� ��ð�, ���� �߾� ����� ������!', to_char(to_date('2018.05.30','YYYY.MM.dd')));
insert into advertisement(user_id, no, title, detail, posted)
values('gijang', seq_advertisement_no.nextval, '��Ų������', '��Ų ���������� ���� ��û�մϴ�. �α����� �� ��ʷ� ������ �� �ֳ���?',to_char(to_date('2018.06.10','YYYY.MM.dd')));
insert into advertisement(user_id, no, title, detail, posted)
values('gijang', seq_advertisement_no.nextval, '������ �н�', '�긣Ÿ�� ����� ����� ũ���並 �����Դϴ�.',to_char(to_date('2018.06.22','YYYY.MM.dd')));
select * from advertisement;
insert into advertisement(user_id, no, title, detail, posted)
values('gijang', seq_advertisement_no.nextval, '������', 'Ȥ�� Ȩ������ ���ο��� ���� ���� �� �ֳ���? ���� ��Ź�帳�ϴ�.',to_char(to_date('2018.06.29','YYYY.MM.dd')));
select * from advertisement;

--insert foodtruck table data
insert into foodtruck(user_id, bussiness_name, menu_name, price, menu_type, detail)
values('JM', 'Chu����', '�򷯽�', 3000, 1, '����� ����� �ִ� �򷯽�');
insert into foodtruck(user_id, bussiness_name, menu_name, price, menu_type, detail)
values('EJ', 'Stayũ��~', '������ũ ������', 6000, 1, '���ҽ� ö�� ������� ���� ������ũ' );
insert into foodtruck(user_id, bussiness_name, menu_name, price, menu_type, detail)
values('SB', '������', '������', 3000, 1, '���������� ������');
insert into foodtruck(user_id, bussiness_name, menu_name, price, menu_type, detail)
values('MS', '���', 'Ÿ�ھ߳� 6��', 2000, 1, '������ �����ϴ� Ÿ�ھ߳�');
insert into foodtruck(user_id, bussiness_name, menu_name, price, menu_type, detail)
values('jigak', '�񳻸��� ����', '�쵿' , 4000, 1, '�쵿 �� �׸� �ϽǷ���?');
select * from foodtruck;

insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'EJ', 'ť�� ������ũ', to_char(to_date('2018.06.09', 'yyyy.mm.dd')), '<p style="text-align: center; ">ť�� ������ũ ������ ������</p>', '37.3574358', '127.1150643' , '0', 'main', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\main2.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'EJ', '�Ź�', to_char(to_date('2018.07.07', 'yyyy.mm.dd')), '<p style="text-align: left;">�Ź� ���ƿ�</p>', '37.3574358', '127.1150643',  '1', 'main', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\main3.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'SB', '���Ʈ��', to_char(to_date('2018.08.07', 'yyyy.mm.dd')), '<p>����� ���ִ�</p>','37.3574358', '127.1150643', '1', 'main', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\main8.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'SB', '������', to_char(to_date('2018.07.11', 'yyyy.mm.dd')), '������ 10+1 �Ǹ��մϴ�',  '37.3574358', '127.1150643', '0', 'desert', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\desert6.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'MS', '������Ű', to_char(to_date('2018.08.20', 'yyyy.mm.dd')), '<p><u>������� ��Ű���� ������</u></p>',  '37.3574358', '127.1150643', '0', 'desert', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\desert2.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'MS', '������ �ɾ�', to_char(to_date('2018.07.01', 'yyyy.mm.dd')), '<p>���̽�ũ���� ��� �ö� <span style="background-color: rgb(255, 0, 255);">����</span></p>', '37.3574358', '127.1150643' , '1', 'desert', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\desert1.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'jigak', '�Ƹ޸�ī��~', to_char(to_date('2018.08.02', 'yyyy.mm.dd')), '<h2>�Ƹ޸�ī�� ������������</h2>',  '37.3574358', '127.1150643', '1', 'drink', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\desert2.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'jigak', '�ٲܸ� ��������', to_char(to_date('2018.07.21', 'yyyy.mm.dd')), '<p><span style="background-color: rgb(239, 198, 49); color: rgb(255, 156, 0);">��������� ������ΰ���</span></p>', '37.3574358' , '127.1150643', '1', 'drink', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\mango.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'JM', '�׸�Ƽ��', to_char(to_date('2018.08.08', 'yyyy.mm.dd')), '<p>���� �����ϴ� �׸�Ƽ��</p>', '37.3574358' , '127.1150643', '0', 'drink', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\drink6.PNG');
insert into foodtruck_location(no, user_id, title, opendate,  detail, latitude, longtitude, poweryn, foodtype, imgpath)
values(foodtruck_no_seq.nextval, 'JM', '������~��', to_char(to_date('2018.07.09', 'yyyy.mm.dd')), '<p><span style="color: rgb(255, 0, 0); font-weight: bold;">�� ������ ��ȸ�ϴ� �����ֽ�</span></p>', '37.3574358', '127.1150643' ,  '0', 'drink', 'D:\apache-tomcat-8.5.30\wtpwebapps\bytruck\upload\drink4.PNG');

select * from foodtruck_location;

--inset event data table
insert into event(user_id, no, title, detail, event_date)
values('CL',event_id_seq.nextval, '���� �̺�Ʈ', '������ ���� �������? ���� Ǫ��Ʈ�������� �޴� 1�����̻��� �ֹ��ϸ� ���� 1���� ����� �ִ� �̺�Ʈ�� �մϴ�. ���� ���ż� �ÿ��� ���� ���� �ϰ� ������~', to_char(to_date('2018.05.08','YYYY.MM.dd')));
insert into event(user_id, no, title, detail, event_date)
values('JM',event_id_seq.nextval, '������ û��', '20�븦 ���� Ư���� �̺�Ʈ�� �غ�Ǿ� �ֽ��ϴ�.', to_char(to_date('2018-05-10','YYYY-MM-dd'),'YYYY-MM-DD'));
insert into event(user_id, no, title, detail, event_date)
values('EJ', event_id_seq.nextval, '�Ѱ� �̺�Ʈ', '�̹��ֿ� �Ѱ��� �湮�Ͻô� �е��� ���� �̺�Ʈ�Դϴ�.', to_char(to_date('2018-05-18','YYYY-MM-dd')),'YYYY-MM-DD')));
insert into event(user_id, no, title, detail, event_date)
values('SB', event_id_seq.nextval, '�������� ����!', 'Ǫ��Ʈ���� �������� ��Ÿ���ϴ�. ��¦�����?', to_char(to_date('2018-05-26','YYYY-MM-dd')),'YYYY-MM-DD')));
insert into event(user_id, no, title, detail, event_date)
values('MS', event_id_seq.nextval, '���� ������ ���� �̺�Ʈ!', '�����е鲲�� Ư���� 20%������ �����մϴ�. ���� ���ż� ���ִ� ���� ��ð�, ���� �߾� ����� ������!', to_char(to_date('2018-05-30','YYYY-MM-dd')),'YYYY-MM-DD')));

-- inset review table data
insert into review(no, user_id, location, trip_date, title ,detail, publicyn, posted, views, good)
values (review_no_seq.nextval,'hanzo', '����', to_char(to_date('2018.05.07','YYYY.MM.dd')),
        '�Ѱ����� ���ٿԾ��', '������Ÿ�� �Ѱ� ��ü ����Խ��ϴ�. ���̳׿�',
        1, to_char(to_date('2018.05.09','YYYY.MM.dd')),10,5);
insert into review(no, user_id, location, trip_date, title, detail ,publicyn, posted, views, good)
values (review_no_seq.nextval,'genji', '��õ', to_char(to_date('2018.05.07','YYYY.MM.dd')),
        '�߰��� ������ ã�Ƽ�', '�߰��� ������ ã�Ƽ�', 0, to_char(to_date('2018.05.10','YYYY.MM.dd')),25,10);
insert into review(no, user_id, location, trip_date, title, detail, publicyn, posted, views, good)
values (review_no_seq.nextval,'saem', '�λ�', to_char(to_date('2018.05.10','YYYY.MM.dd')),
        '�λ��������', '����Խ��ϴ�.',
        1, to_char(to_date('2018.05.11','YYYY.MM.dd')),33,15);
insert into review(no, user_id, location, trip_date, title, detail, publicyn, posted, views, good)
values (review_no_seq.nextval,'saem2', '�뱸', to_char(to_date('2018.05.09','YYYY.MM.dd')),
        '��â��������', '�Ȱ��� ��å',
        1, to_char(to_date('2018.05.10','YYYY.MM.dd')),50,30);
insert into review(no, user_id, location, trip_date, title, detail, publicyn, posted, views, good)
values (review_no_seq.nextval,'gijang', 'û��', to_char(to_date('2018.05.10','YYYY.MM.dd')),
        '��ħ�������', '�߰��� �̻ڳ׿�.',
        1, to_char(to_date('2018.05.01','YYYY.MM.dd')), 80,45);

--insert chatting table data
insert into chatting(no, posted, user_id, message)
values(chatting_no_seq.nextval,  to_char(to_date('2018.04.28','YYYY.MM.dd')),
    'gijang', '������ ��õ���ּ���.'
);
insert into chatting(no, posted, user_id, message)
values(chatting_no_seq.nextval,  to_char(to_date('2018.04.28','YYYY.MM.dd')),
    'saem', '�뱸 ��õ�մϴ�.'
);
insert into chatting(no, posted, user_id, message)
values(chatting_no_seq.nextval,  to_char(to_date('2018.04.30','YYYY.MM.dd')),
    'saem2', '���� ���� �ͼ� ���� �����ڳ׿�Ф�'
);
insert into chatting(no, posted, user_id, message)
values(chatting_no_seq.nextval,  to_char(to_date('2018.04.30','YYYY.MM.dd')),
    'genji', '����³��� ���� �ְ�!'
);

insert into chatting(no, posted, user_id, message)
values(chatting_no_seq.nextval,  to_char(to_date('2018.05.02','YYYY.MM.dd')),
    'hanzo', '�� �ı�ۿ� ���ƿ� ���� �����ּ���~'
);

-- insert board table data
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq.nextval, 0, '�ݰ����ϴ�. ����Ʈ�������� �Դϴ�.',
'�ݰ����ϴ�. ����Ʈ�������� �Դϴ�. Welcome everyone! Thanks', 'CL', 152, to_char(to_date('2018.05.01','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq.nextval, 0, '   ����Ʈ�� �ֿ� ��ɼ����Դϴ�.',
'����Ʈ�� �ֿ� ��ɼ����Դϴ�. Thanks', 'CL', 180, to_char(to_date('2018.05.02','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq.nextval, 0, '������ ��� �Դϴ�.',
'������ ��� �Դϴ�. Thanks', 'CL', 67, to_char(to_date('2018.05.02','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq.nextval, 0, 'Ǫ��Ʈ�� ����ڴԵ� �ʵ����ּ���.',
'Ǫ��Ʈ�� ����ڴԵ� �ʵ����ּ���! Welcome everyone! Thanks', 'CL', 32, to_char(to_date('2018.05.03','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq.nextval, 0, '   �����ڽ� (��)����� �߰� �Ǿ����ϴ�.',
'�����ڽ� (��)����� �߰� �Ǿ����ϴ�. Thanks', 'CL', 52, to_char(to_date('2018.05.05','YYYY.MM.dd')));

insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq1.nextval, 1, '�ڽ�¥�� �̿� ��� ����?',
'�ڽ�¥�� �̿��� ���� ��Ź�����Ф�', 'genji', 152, to_char(to_date('2017.12.31','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq1.nextval, 1, '�������� ��ȸ ��� �ϳ���',
'���������� �� ������ ��� �� �� �ֳ���? ������ �����Ѱ���?', 'EJ', 180, to_char(to_date('2018.05.02','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq1.nextval, 1, '����Ʈ�� ȫ�� ���� �˰� �ͽ��ϴ�.',
'����Ʈ�� ȫ�� ���� �˰� �ͽ��ϴ�.', 'JM', 77, to_char(to_date('2018.05.02','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq1.nextval, 1, 'Ż��� �����Դϴ�.',
'Ż�� �� �����̺��Ͽ��� �� �簡�� �����Ѱ���?', 'SB', 32, to_char(to_date('2018.05.09','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq1.nextval, 1, '   ���� ���� ����',
'���� ���� �����ֳ���? ������ �� �� ���ΰ���?', 'saem2', 52, to_char(to_date('2018.05.10','YYYY.MM.dd')));

insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq2.nextval, 2, '�α��ν� ���ǻ���',
'�Ϲ� ȸ���� �Ϲ� ȸ������ ����� ������ �Ǹ�, ����� ȸ�����Խ� ����� ��Ϲ�ȣ�� �ʼ� �Է��ؾ� ������ ȸ������ ������ ����˴ϴ�.^^', 'CL', 152, to_char(to_date('2018.05.01','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq2.nextval, 2, '�ڽ�¥�� ����',
'�ڽ�¥��� �ڽ�¥�� �Խ��ǿ���  ���ϴ� �������� ���� �� ������ ���� �ڽ� �������� ���� �� �� ������, �� ������ �����ϽǼ� �ֽ��ϴ�.', 'CL', 180, to_char(to_date('2018.05.02','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq2.nextval, 2, '������ ���',
'�Ŀ���ũ ����, ���θ�� ���� �ֽ��ϴ�.  �Ŀ���ũ ����� Ǫ��Ʈ�����Խù� �ۼ��� �ɼǱ������ �ϽǼ� ������, ���θ�Ǳ���� �����ڿ��� ���� ���� �ϼž��մϴ�. ���� ������ �����ڿ��� ���� ���� �ٶ��ϴ�.^^', 'CL', 67, to_char(to_date('2018.05.05','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq2.nextval, 2, 'Ǫ��Ʈ�� ���� ����',
'����ںе� �������� ����Ӿƴ϶� Ǫ��Ʈ�� ������ ���� �����մϴ�. ������ ����Ǿ��� ��,������������ �������� �׸��� ã�� �������ּ���^^', 'CL', 32, to_char(to_date('2018.05.11','YYYY.MM.dd')));
insert into board(no, type, title, detail, user_id, views, posted)
values (board_no_seq2.nextval, 2, '   �����ڽ� (��)���',
'������ �ڽ��� ���鼭 �����ִ� �ڽ��� ��Ʈ �������� ���� �� ��  �Ͻ� �� �ֽ��ϴ�. ���� �Ͻø� ������������ �����ڽ� �׸񿡼� �ٷ� ã�� ���� �� �ֽ��ϴ�. ���� �̿� ��Ź�帳�ϴ�^^', 'CL', 52, to_char(to_date('2018.05.14','YYYY.MM.dd')));
select * from board;

commit;
    
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


select c.no, dc.step, c.title, c.detail, c.withyn, c.trip_date, dc.LATITUDE, dc.LONGTITUDE
from course c join detail_course dc
on c.no = dc.no
where c.no = 3;

