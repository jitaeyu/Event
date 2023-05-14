# JSP와 JAVA,MARIADB로 만든 개인 축의금 다이어리 페이지 입니다.
#### 회원 가입 후 사용 할 수 있습니다.
##### 초기 시작 URL은 http://localhost:8686/jitae/index 입니다.
##### 예시 홈페이지 URL ~~http://yjt3602.cafe24.com/~~ 입니다.
##### 사용 버전 : 라이브러리, DB 등

+ JAVA
  + JAVA SE 1.8
+ JSP
  + JSTL 1.2.5
+ CSS,JS
  + BootStrap 5.1.3
+ DB
  + MARIADB 10.1.x
  + mariadb-java-client-2.0.3.jar

# DB TABLE

+ USER
  + CREATE TABLE `user` (
	`id` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`pw` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`name` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

+ CLIENT
  + CREATE TABLE `client` (
	`num` INT(11) NOT NULL AUTO_INCREMENT,
	`id` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`name` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	PRIMARY KEY (`num`) USING BTREE,
	INDEX `FK_ID` (`id`) USING BTREE,
	CONSTRAINT `FK_ID` FOREIGN KEY (`id`) REFERENCES `yjt3602`.`user` (`id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB

+ CLIENTEVENT
  + CREATE TABLE `clientevent` (
	`cnum` INT(11) NOT NULL AUTO_INCREMENT,
	`id` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`name` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`event` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`date` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`money` INT(50) NULL DEFAULT '0',
	`coment` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	PRIMARY KEY (`cnum`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=13
;



  
# **※ 모바일 미디어쿼리는 최소한으로 진행했습니다. PC로 접속해주세요.**
# 로그인
![event_login](https://user-images.githubusercontent.com/84373336/163759935-9debf425-44d4-403b-b727-417a8f7f29b4.jpg)

# 회원가입
![event_signin](https://user-images.githubusercontent.com/84373336/163760022-cfdcf2ab-43ea-4f5c-a027-a3e23d407bd8.jpg)

# 메인페이지
![event_out](https://user-images.githubusercontent.com/84373336/163760146-7de97da2-c0ad-46c1-a1e7-148f9002581a.jpg)

# 인원 모달
![event_friend_input_modal](https://user-images.githubusercontent.com/84373336/163760447-f07a2ac6-fa73-499a-950c-47e852ee3e78.jpg)

# 컨텐츠 모달
![event_input_content_modal](https://user-images.githubusercontent.com/84373336/163760681-73d9c4fc-51d0-4e37-a92b-46798cd25b56.jpg)

# 이벤트 히스토리 페이지
![image](https://user-images.githubusercontent.com/84373336/163820533-7b0a8709-8907-4dc6-963c-fe2692bf5166.png)
