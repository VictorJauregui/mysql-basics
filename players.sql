drop database if exists players;
create database if not exists players;
use players;

drop table if exists players, offensive_positions, positions, footballer_file, football_team;

create table players (
    player_id   int auto_increment  not null,
    first_name   varchar(20)         not null,
    last_name   varchar(20)         not null,
    birth_date  date                not null,
    height      float                not null,
    city        varchar(20)         not null,
    primary key (player_id)
);

create table positions (
    position_id     int                 not null,
    position_type   varchar(20)         not null,
    unique key (position_type),
    primary key (position_id)
);

create table offensive_positions (
    dorsal_no   int                 not null,
    player_id   int                 not null,
    position_id int                 not null,
    foreign key (player_id)     references players   (player_id)   on delete cascade,
    foreign key (position_id)   references positions (position_id)    on delete cascade,
    primary key (dorsal_no)
);

create table footballer_file (
    file_no   int                    not null   auto_increment,
    player_id   int                 not null,
    foreign key (player_id)     references players (player_id)      on delete cascade,
    primary key (file_no)
);

create table football_team (
    team_id        int                 not null,
    player_id      int                 not null,
    foreign key (player_id)     references players (player_id)      on delete cascade,
    primary key (team_id)
);