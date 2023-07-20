use housecalc;

truncate users;
insert into users values(1, 'testuser', 'aderu1995@gmail.com', current_timestamp, current_timestamp);

truncate year_histories;

truncate daily_histories;

truncate monthly_histories;

truncate categories;
insert into categories values(1, 0, 'images/eat.jpeg', '食費', current_timestamp, current_timestamp);

truncate stories;
insert into stories values(1, 1, 'images/eat.jpeg', '今日も買い物へ行きました', false, current_timestamp, current_timestamp);

truncate icons;
insert into icons values(1, 0, 'images/eat.jpeg', current_timestamp, current_timestamp);
