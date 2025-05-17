use BikeStore 
go 

create table customers (
customer_id int primary key ,
frist_name varchar(20) not null , 
last_name varchar(20) not null ,
phone varchar(15),
email varchar(30) not null ,
city varchar(10) check (city in ('Cairo','Mansoura','Alexandria')),
zipcode int ,
);


create table orders (
order_id int identity(1,1) ,
customer_id int ,
order_status tinyint not null ,
order_date date not null ,
required_date date not null ,
shipped_date date ,
store_id int not null ,
staff_id int not null ,
constraint orders_pk primary key (order_id),
constraint customers_orders_fk foreign key (customer_id) 
references customers (customer_id) 
);


create table stores (
store_id int identity (1,1) primary key ,
store_name varchar(255) not null ,
phone varchar(25) ,
email varchar (50) ,
street varchar(255),
city varchar (20),
state varchar(10), 
zip_code varchar(5)
);

alter table orders  
add constraint stores_orders_fk foreign key (store_id) 
references stores(store_id);


create table staff (
staff_id int identity (1,1) primary key ,
frist_name varchar(20) not null , 
last_name varchar(20) not null ,
phone varchar(15) unique,
email varchar(50) not null unique,
active tinyint not null ,
store_id int not null ,
mananger_id int );


alter table staff
add constraint staff_stores_fk foreign key (store_id)
references stores (store_id);

alter table customers 
add street varchar(50) not null ;

alter table customers 
alter column street varchar(30);