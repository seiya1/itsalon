create database itsalon;
grant all on itsalon.* to dbuser@localhost identified by '1t6for4e';
use itsalon

create table news (
    id int unsigned auto_increment primary key,
    title varchar(50),
    content text,
    created datetime default null,
    modified datetime default null
);

create table users (
    id int unsigned auto_increment primary key,
    username varchar(50),
    email varchar(255),
    password varchar(255),
    role varchar(50),
    created datetime default null,
    modified datetime default null
);

insert into news (title, content, created, modified) values ('第1回ITサロンのお知らせ', 'ここに記事が表示される', now(), now());

create table answers (
    id int unsigned auto_increment primary key,
    answer varchar(255),
    question_id int unsigned,
    user_id int unsigned,
    created datetime default null,
    modified datetime default null
);

create table questions (
    id int unsigned auto_increment primary key,
    content varchar(255),
    questionnaire_id int unsigned,
    created datetime default null,
    modified datetime default null
);


insert into questions (content, questionnaire_id, created, modified) values ('質問1-1', 1, now(), now());
insert into questions (content, questionnaire_id, created, modified) values ('質問1-2', 1, now(), now());
insert into questions (content, questionnaire_id, created, modified) values ('質問2-1', 2, now(), now());

create table questionnaires (
    id int unsigned auto_increment primary key,
    title varchar(255),
    body varchar(255),
    created datetime default null,
    modified datetime default null
);

insert into questionnaires (title, body, created, modified) values ('テスト1', '1つ目のアンケート', now(), now());
insert into questionnaires (title, body, created, modified) values ('テスト2', '2つ目のアンケート', now(), now());
