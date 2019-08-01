CREATE TABLE tb_product(
product_id INT(100) NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
product_desc VARCHAR(2000) DEFAULT NULL,
img_addr VARCHAR(2000) DEFAULT '',
normal_price VARCHAR(100) DEFAULT NULL,
promotion_price VARCHAR(100) DEFAULT NULL,
priority INT(2) NOT NULL DEFAULT '0',
create_time DATETIME DEFAULT NULL,
last_edit_time DATETIME DEFAULT NULL,
enable_status INT(2) NOT NULL DEFAULT '0',
product_category_id INT(11) DEFAULT NULL,
shop_id INT(20) NOT NULL DEFAULT '0',
PRIMARY KEY(product_id),
CONSTRAINT fk_product_procate FOREIGN KEY(product_category_id) REFERENCES tb_product_category(product_category_id),
CONSTRAINT fk_product_shop FOREIGN KEY(shop_id) REFERENCES tb_shop(shop_id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;







create table tb_product_img(
product_img_id int(20) not null auto_increment,
img_addr varchar(2000) not null,
img_desc varchar(2000) default null,
priority int(2) default '0',
create_time datetime default null,
product_id int(20) `tb_shop_category`default null,
primary key(product_img_id),
constraint fk_proimg_product foreign key(product_id)references tb_product(product_id)
)engine=innodb auto_increment=1 default charset=utf8;

