CREATE TABLE tb_wechat_auth(
	wechat_auth_id INT(10) NOT NULL AUTO_INCREMENT,
	user_id INT(10) NOT NULL,
	open_id VARCHAR(1024) NOT NULL,
	create_time DATETIME DEFAULT NULL,
	PRIMARY KEY(wechat_auth_id),
	CONSTRAINT fk_wecharauth_profile FOREIGN KEY(user_id) REFERENCES tb_person_info(user_id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE tb_local_auth(
local_auth_id INT(10) NOT NULL AUTO_INCREMENT,
user_id INT(10) NOT NULL,
username VARCHAR(128) NOT NULL,
PASSWORD VARCHAR(128) NOT NULL,
create_time DATETIME DEFAULT NULL,
last_edit_time DATETIME DEFAULT NULL,
PRIMARY KEY(local_auth_id),
UNIQUE KEY uk_local_profile(username),
CONSTRAINT fk_localauth_profile FOREIGN KEY(user_id) REFERENCES tb_person_info(user_id)
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


ALTER TABLE tb_wechat_auth ADD UNIQUE INDEX(open_id);