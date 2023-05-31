create table movie (
    id  uuid not null,
    title varchar(255) null,
    description character varying null,
    constraint movie_pk primary key (id)
);

create table department (
    id uuid not null,
    name varchar(255) null,
    constraint department_pk primary key (id)
);

create table time(
    id uuid not null,
    "from" timestamp null,
    "to" timestamp null,
    price numeric null,
    move_id uuid not null,
    department_id uuid not null,
    constraint time_pk primary key (id),
    constraint time_movie_fk foreign key (move_id) references movie(id),
    constraint time_department_fk foreign key (department_id) references department(id),
    constraint time_movie_id_department_id_key unique ("from", move_id, department_id)
);

create table "user"(
    id              uuid not null,
    name            varchar(255) null,
    email           varchar(255) null,
    password        varchar(255) null,
    constraint user_pk primary key (id)
);

create table chair(
    id              uuid not null,
    department_id   uuid not null,
    number          varchar(50) null,
    constraint chair_pk primary key (id),
    constraint chair_department_fk foreign key (department_id) references department(id)
);

create table ticket_chair(
    id          uuid not null,
    chair_id    uuid not null,
    time_id     uuid not null,
    constraint ticket_chair_pk primary key (id),
    constraint ticket_chair_chair_fk foreign key (chair_id) references chair(id),
    constraint ticket_chair_time_fk foreign key (time_id) references time(id),
    constraint chair_id_time_id_key unique (chair_id, time_id)
);

create table ticket(
    id        uuid not null,
    time_id   uuid not null,
    chair_id  uuid not null,
    user_id   uuid not null,
    created_on timestamp null,
    constraint ticket_pk primary key (id),
    constraint ticket_time_fk foreign key (time_id) references time(id),
    constraint ticket_chair_fk foreign key (chair_id) references chair(id),
    constraint ticket_user_fk foreign key (user_id) references "user"(id),
    constraint ticket_time_id_chair_id_user_id_key unique (time_id, chair_id, user_id)
);
