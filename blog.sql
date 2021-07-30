use blog;

create table authors(
id int auto_increment,
name varchar(75) not null,
email varchar(75) not null unique,
_created timestamp default now(),
primary key (id)
);

create table blogs (
id int auto_increment,
title varchar(75),
content text not null,
authorid int not null,
_created timestamp default now(),
primary key (id),
foreign key (authorid) references  authors (id)
);

insert into authors (email, name) value ('test2@test.com', 'Test Author');

insert into blogs (title, content, authorid) value ('Some Other Blog Title', 'Test Blog Content',1);
select * from authors;
select * from blogs;