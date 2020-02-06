/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/6/7 星期五 14:00:46                        */
/*==============================================================*/


/*==============================================================*/
/* Table: order_product                                         */
/*==============================================================*/
create table order_product
(
   order_product_id     int not null auto_increment,
   order_id             int not null,
   product_id           int not null,
   number               int not null,
   primary key (order_product_id)
);

/*==============================================================*/
/* Table: orders                                                */
/*==============================================================*/
create table orders
(
   order_id             int not null auto_increment,
   user_id              int not null,
   order_time           datetime not null,
   pay_time             datetime,
   origin_price         double not null,
   real_price           double,
   paid_price           double,
   paid_status          tinyint(1),
   status               tinyint(1) not null,
   primary key (order_id)
);

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
create table product
(
   product_id           int not null auto_increment,
   product_classify_id  int,
   name                 varchar(50) not null,
   price                double not null,
   number               int not null,
   status               tinyint(1) not null comment '0关闭 1正常',
   content              text,
   image                varchar(100),
   big_image            varchar(100),
   primary key (product_id)
);

/*==============================================================*/
/* Table: product_classify                                      */
/*==============================================================*/
create table product_classify
(
   product_classify_id  int not null auto_increment,
   name                 varchar(20) not null,
   primary key (product_classify_id)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   user_id              int not null auto_increment,
   account              varchar(20) not null,
   password             varchar(255) not null,
   name                 varchar(10),
   created_time         datetime not null,
   role                 tinyint(1) not null comment '0管理员，1用户',
   status               tinyint(1) not null comment '0删除，1正常',
   primary key (user_id)
);

