use housecalc;

drop table if exists users;
create table users(
id bigint not null auto_increment,
name varchar(50) not null,
email varchar(50) not null,
created_at varchar(19) not null,
updated_at varchar(19) not null,
primary key(id)
);

drop table if exists year_histories;
create table year_histories(
id bigint not null auto_increment,
history_date varchar(13) not null,
money int default(0),
created_at varchar(19) not null,
updated_at varchar(19) not null,
primary key(id)
);

drop table if exists daily_histories;
create table daily_histories(
id bigint not null auto_increment,
category_id int,
history_date varchar(13) not null,
money_type tinyint default(0),
money int default(0),
memo text,
created_at varchar(19) not null,
updated_at varchar(19) not null,
primary key(id)
);

drop table if exists monthly_histories;
create table monthly_histories(
id bigint not null auto_increment,
category_id int,
history_date varchar(13) not null,
money_type tinyint default(0),
money int default(0),
memo text,
created_at varchar(19) not null,
updated_at varchar(19) not null,
primary key(id)
);

drop table if exists categories;
create table categories(
id bigint not null auto_increment,
category_type tinyint default(0),
category_image varchar(255),
category_text varchar(16),
created_at varchar(19) not null,
updated_at varchar(19) not null,
primary key(id)
);

drop table if exists stories;
create table stories(
id bigint not null auto_increment,
story_id int not null,
story_image varchar(255) not null,
story_text text,
story_read_flag boolean default(false),
created_at varchar(19) not null,
updated_at varchar(19) not null,
primary key(id)
);

drop table if exists icons;
create table icons(
id bigint not null auto_increment,
icon_type tinyint default(0),
icon_image varchar(255),
created_at varchar(19) not null,
updated_at varchar(19) not null,
primary key(id)
);
