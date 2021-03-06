CREATE TABLE `meeting_meets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '活动类型 1-普通活动 2-定期活动',
  `banner` varchar(50) COMMENT '头图',
  `title` varchar(50) NOT NULL COMMENT '活动名称',
  `start_at` timestamp NOT NULL COMMENT '活动时间',
  `place` varchar(100) NOT NULL COMMENT '活动地点',
  `fee` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '活动费用',
  `person` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '计划人数',
  `content` text NULL COMMENT '活动内容',
  `state` tinyint(4) unsigned NOT NULL DEFAULT 1 COMMENT '状态 1-有效',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='活动';

LOCK TABLES `meeting_meets` WRITE;
INSERT INTO `meeting_meets` (`id`, `type`, `banner`, `title`, `start_at`, `place`, `fee`, `person`, `content`, `state`, `created_at`, `updated_at`, `deleted_at`)
VALUES 
    (NULL,1,NULL,'测试活动','2019-09-10 00:00:00','杭州',50,100,'这是一个测试活动','1',NULL,NULL,NULL);
UNLOCK TABLES;



CREATE TABLE meeting_admin_auths (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(80) COMMENT '账号',
  `password` varchar(80) COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='后台管理用户';

LOCK TABLES `meeting_admin_auths` WRITE;
INSERT INTO `meeting_admin_auths` (`id`, `username`, `password`) 
VALUES 
    (1, 'admin', 'admin');
UNLOCK TABLES;

CREATE TABLE meeting_admin_user_infos (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(80) COMMENT '名字',
  `avatar` varchar(80) COMMENT '头像',
  `introduction` varchar(80) COMMENT '简介',
  `roles` varchar(100) COMMENT '角色'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='后台管理用户信息';

LOCK TABLES `meeting_admin_user_infos` WRITE;
INSERT INTO `meeting_admin_user_infos` (`id`, `name`, `avatar`, `introduction`, `roles`) 
VALUES 
    (1, 'Admin', 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 'I am Super Admin', '["admin"]');
UNLOCK TABLES;