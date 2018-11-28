DROP TABLE IF EXISTS `blogtags`;
DROP TABLE IF EXISTS `blogs`;
DROP TABLE IF EXISTS `tokens`;
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `tags`;

#
# TABLE STRUCTURE FOR: users
#

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(60) NOT NULL,
  `_created` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `email`, `username`, `password`, `_created`) VALUES (1, 'marvin.kulas@kiehn.com', 'vicky58', '3d226a10d23bde274042a277c11ec830a173f0267b1d2ba9e51c21b05a31', '1989-06-13 17:24:47');
INSERT INTO `users` (`id`, `email`, `username`, `password`, `_created`) VALUES (2, 'meda.hoeger@gmail.com', 'kassulke.mya', '9c561042b10f76106007a681eee5e8d4db13a1fa86cd063f82df8669865d', '2017-10-18 04:19:17');
INSERT INTO `users` (`id`, `email`, `username`, `password`, `_created`) VALUES (3, 'fkovacek@yahoo.com', 'ndoyle', 'e39cead40f8144b2aa882e15f2113821bdbb655e31f279f5b9d2344886b9', '1983-07-31 18:42:53');
INSERT INTO `users` (`id`, `email`, `username`, `password`, `_created`) VALUES (4, 'gcartwright@yahoo.com', 'iwalsh', 'fc9d847851cf2fd4769b65e15d463866566c388b848e1e82dd5ecc4ac852', '1975-11-21 20:44:32');
INSERT INTO `users` (`id`, `email`, `username`, `password`, `_created`) VALUES (5, 'uwisozk@gmail.com', 'clementina.hermann', '30a2274344421cb4d59894c0b7e9cb72e495c6d1dc5c007b61c0354e31f7', '1997-10-21 14:57:24');

#
# TABLE STRUCTURE FOR: blogs
#

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  `_created` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_author_userid_idx` (`author`),
  CONSTRAINT `fk_author_userid` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (1, 'Molestiae eos voluptate enim et fugiat.', 'Et dolores incidunt ea dolores ipsam iure aperiam rerum. Ut dolor aperiam nam quas ad hic dolor. Id praesentium dolore quia harum. Dolor ratione ea et expedita natus.', 1, '2003-01-27 02:32:57');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (2, 'Rerum in nisi ut labore fuga soluta tempore.', 'Enim id magni modi et doloribus dignissimos eos veniam. Fugit nesciunt illum ut libero cumque magnam. Illum eum accusantium quia beatae. Minus omnis doloremque sed commodi sunt.', 2, '2005-11-15 22:34:12');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (3, 'Sint neque quo fuga voluptate natus voluptatibus labore.', 'Quia sunt esse quo mollitia. Dolores alias nam rerum ut. Minus minus voluptas ut eveniet. Et a molestiae cumque non itaque nostrum sint.', 3, '2010-11-13 17:55:47');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (4, 'Velit aut sed architecto voluptatem labore et repudiandae eaque.', 'Velit accusantium quisquam quo et. Exercitationem ad quibusdam voluptatem dolorem occaecati fuga rerum non. Nulla exercitationem omnis sed iure unde.', 4, '1972-06-22 11:54:39');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (5, 'Quo est qui laudantium in aspernatur est adipisci.', 'Velit et et magnam ut. Explicabo ut ratione esse ratione est perspiciatis. Eaque doloribus nobis tempora vel ex incidunt. Culpa aut eligendi doloremque saepe eum quisquam id.', 5, '1979-07-31 13:37:43');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (6, 'Iure perspiciatis adipisci quidem in rerum.', 'Cumque id et neque quo voluptatum et voluptas ipsum. Et exercitationem ut nobis eum. Cupiditate sint non iure ea eos totam omnis eveniet.', 1, '1974-07-10 16:33:02');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (7, 'Sunt maxime et ea.', 'Dolores fugit ut eveniet nulla accusantium quia provident. Quaerat numquam cumque quis commodi eveniet velit. Consequatur numquam tempora similique.', 2, '1973-04-19 23:27:57');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (8, 'Sunt molestiae tempore aut vel blanditiis deserunt.', 'Et consequuntur temporibus suscipit repellat est molestiae. Laboriosam corporis alias et sit. Quidem sit eius quas qui sint nulla laboriosam. Quia in perferendis sit.', 3, '1997-01-17 19:47:54');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (9, 'Tempora maxime ea ratione et commodi iste.', 'Fugiat est tempora et excepturi et et omnis. Autem ea occaecati eum sed cupiditate aut. Dolor in ut qui quia quis. Est cupiditate neque qui temporibus iusto voluptas.', 4, '1983-07-08 08:22:04');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (10, 'Nisi eos voluptatem itaque tempore.', 'Provident id optio nulla ut incidunt excepturi corporis. Modi natus est quam vel enim molestiae facere. Et est occaecati eveniet consequatur. Soluta molestiae rerum quia quo quaerat.', 5, '2004-03-31 20:51:55');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (11, 'Repellendus minus vel error est natus repellat.', 'Soluta est aliquid vero aut nam nesciunt sed pariatur. Minima saepe aliquam asperiores atque reprehenderit ex praesentium. Repellendus consequatur iusto dolorem sed error.', 1, '1991-06-01 08:31:47');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (12, 'Minus eum consequatur fugit non qui sunt ut.', 'Amet ipsa vero rerum. Doloremque maxime doloribus minus dignissimos vero aut. Et tempore adipisci quos quam doloremque.', 2, '1997-05-13 02:44:28');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (13, 'Nostrum neque recusandae optio similique veritatis est magni.', 'Consequatur repellendus itaque corrupti aut. Quidem harum enim sed illo. Nesciunt ab iusto excepturi eligendi dolore. Culpa at quam assumenda pariatur.', 3, '1976-04-09 03:45:54');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (14, 'Officia inventore quaerat accusantium doloremque quidem.', 'Eveniet quidem est natus. Vero vel aut omnis exercitationem exercitationem id. Ea deserunt aliquam eaque qui. Excepturi atque porro eveniet et eos eos nobis consequatur.', 4, '1991-01-04 16:35:09');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (15, 'Voluptatibus reiciendis quasi beatae veritatis maxime laboriosam ipsam.', 'Delectus et consequatur id illum rerum autem. Neque quis quo illo voluptatum fugit explicabo. Ea itaque nulla earum excepturi laborum illum.', 5, '1997-08-06 05:57:02');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (16, 'Itaque voluptatem corrupti explicabo iste dolore voluptatibus.', 'Aut perferendis velit et aut quod. Deserunt delectus eos illum et id sunt dicta vel. Qui ipsam velit odit.', 1, '2016-11-08 20:15:48');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (17, 'Sed ut molestiae quis iure assumenda voluptatibus exercitationem est.', 'Quaerat consequatur sint non enim nihil ea consequuntur. Corporis dolores ut quis consequatur praesentium minima illum. Veniam dolorem necessitatibus impedit magnam quisquam repellendus.', 2, '1972-02-26 07:15:59');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (18, 'Nihil cum atque itaque est aperiam.', 'Eum sunt ad omnis et. Consequatur ipsum et assumenda voluptatum. Ut aut ullam est qui.', 3, '1997-08-19 21:56:16');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (19, 'Neque temporibus rerum doloremque distinctio quia quos.', 'Aspernatur provident enim repellendus aliquid ut ullam itaque. Deserunt est aspernatur eos quia quis minima.', 4, '1991-03-23 02:22:10');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (20, 'Velit et voluptas alias culpa.', 'Maxime eum et quaerat veritatis cum. Ipsum natus unde rem ipsa quasi enim distinctio. Inventore in placeat est iure esse qui. Sunt qui vel recusandae.', 5, '1976-11-10 09:45:02');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (21, 'Nostrum et necessitatibus aut optio aut.', 'Tenetur et nisi vel atque. Autem ut harum est dolores vitae architecto commodi. Asperiores quis sapiente voluptatum eum. Quisquam et qui aut iure enim eius eveniet.', 1, '1975-09-25 07:20:46');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (22, 'Dolores aliquam sed occaecati voluptatem quaerat iusto velit qui.', 'Dolore et sit tempora quam quia reiciendis inventore. Ut omnis doloremque optio tempore. Eveniet dolor repellat quia et esse et qui.', 2, '2003-05-29 14:22:37');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (23, 'Eaque facilis voluptatum et fuga.', 'Consequatur debitis cumque eos atque quo corporis. Minima esse ex enim. Non minus et doloribus culpa molestiae voluptate officiis nemo.', 3, '2007-10-02 15:45:01');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (24, 'Iusto facilis accusamus velit.', 'Et perferendis voluptatum atque. Et recusandae dolores qui reiciendis. Dolor culpa quae quis odio. Repellendus animi voluptatem vitae praesentium fugiat quae necessitatibus et.', 4, '1999-08-25 06:00:24');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (25, 'Dolor aut aut sequi aspernatur omnis cupiditate quo.', 'Et itaque consectetur et quam. Et ducimus blanditiis magnam consectetur maxime quia. Ea eum aliquid consequatur praesentium veritatis ab veritatis. Natus quia dolorum et ducimus quos omnis vel quis.', 5, '1991-04-23 18:33:38');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (26, 'Cum amet et nobis ea.', 'Sit voluptate quia consequuntur aperiam quae. Odio non vero odit vel enim voluptas. Ab odit incidunt fugiat quia alias. Reprehenderit qui rerum esse quisquam.', 1, '1976-02-22 12:49:10');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (27, 'Voluptas animi natus cupiditate ut sit natus.', 'Et corrupti minima voluptatem. Fuga consectetur labore veritatis natus dolor aspernatur quod. Adipisci maiores sunt a quaerat et pariatur eligendi. Quia autem nisi quibusdam id.', 2, '2011-08-23 01:19:14');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (28, 'Debitis praesentium aperiam voluptatem et earum accusantium vero.', 'Ad qui aperiam dolorem et laborum. Id aliquam porro et delectus pariatur. Qui fugiat aut labore. Reiciendis dolore omnis dolores repellendus sunt alias. Fugit rerum ut qui et.', 3, '2010-04-08 17:45:18');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (29, 'Harum autem eaque et nihil illo aut.', 'Facere ea est amet cum. Veritatis consequuntur autem nesciunt iusto quia illo voluptas. Voluptates perferendis et ullam facilis vel sint. Ipsa corrupti iure iure quam cumque veniam repellendus.', 4, '2002-10-25 14:55:43');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (30, 'Nesciunt rerum quaerat officia incidunt doloribus.', 'Ex nihil repellendus necessitatibus suscipit. Corrupti est et est ut dignissimos ut sit. Omnis omnis eos vel asperiores consectetur asperiores. Nemo sunt repellat eum dolore.', 5, '1978-10-08 21:10:28');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (31, 'Qui ad alias est aliquid error et.', 'Ad nisi voluptatibus repellendus quod sit et in. A delectus veritatis libero modi velit. Dolores ea nam ipsam maiores impedit. Minus adipisci omnis inventore ipsam ea hic dignissimos voluptate.', 1, '2016-04-25 11:46:23');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (32, 'Voluptatem ullam exercitationem repellat nobis temporibus culpa optio ducimus.', 'Cum rerum rerum quia et dolorum ea. Iure porro minima deserunt quo harum neque explicabo ut.', 2, '1974-11-10 19:02:42');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (33, 'Autem impedit qui consectetur quos.', 'Quia quisquam et aperiam ut dolorum sed. Sapiente eius nemo aut dolores iusto. Unde tempora magni distinctio delectus minus enim.', 3, '2017-12-10 11:20:51');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (34, 'Quisquam perferendis excepturi perferendis soluta odio illum fugiat culpa.', 'Impedit tempore quaerat et est et ex eveniet quia. Ut odio voluptatem recusandae et tempore animi et. Recusandae animi nemo dolorem ut praesentium aut.', 4, '2004-04-08 20:24:59');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (35, 'Consequatur facilis voluptatem dolorem corrupti repellat a.', 'Expedita quo est expedita ipsum consequatur aut. Harum autem molestias aperiam quo et in consequuntur. Veritatis quibusdam ab nihil ut.', 5, '1984-04-27 06:16:37');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (36, 'Pariatur amet perferendis ratione a laudantium occaecati impedit.', 'Repellendus occaecati maiores quis consequatur nesciunt ipsam. Totam recusandae aliquid voluptatem ut. Voluptatem praesentium ut magni quidem ea quas voluptatum.', 1, '2017-04-16 02:42:44');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (37, 'Quisquam dolores quaerat doloremque occaecati quis.', 'Minima cum et aperiam in. Laboriosam sint officiis molestiae qui. Hic et veniam repellendus veritatis accusantium rerum voluptas.', 2, '1984-11-11 06:32:00');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (38, 'Aut non facilis unde non.', 'Nobis et est quaerat laudantium magnam. Iure sed accusantium labore eum consectetur consequatur. Quos neque autem eum laborum et tempora quam. Quisquam ut in sunt tenetur dolorem amet.', 3, '1993-05-15 12:55:04');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (39, 'Quas velit et sapiente repellendus aut.', 'Et aliquid illo ullam quisquam aliquam eum magnam eos. Molestiae ducimus qui sint distinctio et. Voluptatem doloremque ad voluptatem sint. Beatae ea nemo minima dolorem non aut ex.', 4, '1982-01-22 06:31:36');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (40, 'Recusandae cumque eligendi enim laudantium autem nihil fugit in.', 'Suscipit delectus maiores ducimus et ipsum enim. Omnis harum vel perferendis id eaque deserunt et. Qui deserunt eveniet in incidunt accusantium aut vitae.', 5, '1989-12-22 20:13:40');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (41, 'Quisquam et rerum consequatur et aut aut rerum.', 'Nulla voluptatem magni facere sit. Voluptas nobis aut molestiae autem modi et in. Quia dolores error id rem libero eligendi. Quibusdam ut tempore harum assumenda aut et quo.', 1, '1971-03-26 13:06:31');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (42, 'Corporis minus aspernatur aut qui nobis repudiandae.', 'Velit consequatur sit aliquam deleniti excepturi tempore. Non exercitationem illo error illum nostrum quia quae. Ratione sint necessitatibus et nulla.', 2, '2011-10-03 05:55:29');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (43, 'Nulla quas dolores error esse.', 'Corrupti rem nam quia dolores. Nostrum iste qui ut quod nihil rerum eligendi. Sunt dolores vel facere laborum harum et voluptatem. Aut est similique veritatis facere.', 3, '2010-06-05 22:00:20');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (44, 'Velit aut voluptas ipsum numquam ratione.', 'Suscipit soluta nihil sint possimus. Maxime facere dolorem eum nesciunt excepturi ut et. Quia ut doloremque sed rerum.', 4, '1990-02-17 07:34:36');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (45, 'Odio saepe maiores est a in odio.', 'Molestiae quae voluptatem sunt quia quasi et ullam. Animi eum voluptatem similique maxime dicta mollitia. Earum quam in omnis fuga facere molestiae. Vel velit fuga unde eligendi.', 5, '2000-02-12 00:35:32');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (46, 'Sit velit dolores cupiditate dicta doloremque libero.', 'Cum consequatur nulla ipsam et suscipit aut nulla unde. Aut sit iure odio et et. Quam labore ex accusantium autem velit. Illo voluptatum maxime saepe ut accusamus debitis quis molestias.', 1, '2009-05-01 20:04:16');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (47, 'Et quisquam reiciendis ipsam dolorum perspiciatis ut.', 'Cumque quaerat voluptate accusamus cumque nesciunt dolore harum. Expedita iste voluptas pariatur numquam. Voluptatem consequatur aspernatur doloremque cum laboriosam est.', 2, '2005-02-02 21:24:45');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (48, 'Non quas ducimus aut quo.', 'Ipsum similique placeat dolor quo expedita et. Impedit saepe corrupti mollitia quis. Blanditiis repellendus reprehenderit illo et. Quo perferendis odio perferendis magni.', 3, '2001-01-28 18:44:24');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (49, 'Velit totam similique ipsa iste.', 'Aperiam doloremque similique non qui. Quod aspernatur et ut et aliquid. Sed voluptas dicta fuga. Praesentium sint quaerat dolorem praesentium.', 4, '1971-07-09 01:51:44');
INSERT INTO `blogs` (`id`, `title`, `content`, `author`, `_created`) VALUES (50, 'Quasi vel architecto nobis labore.', 'Consectetur alias ut vel rem vel. Voluptatem eos suscipit omnis odit odio et et quia. Sunt dolores impedit cumque quos harum ea maxime.', 5, '1974-10-16 14:09:25');

#
# TABLE STRUCTURE FOR: tags
#

CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `_created` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO `tags` (`id`, `name`, `_created`) VALUES (1, 'Leisure', '2018-11-07 19:58:39');
INSERT INTO `tags` (`id`, `name`, `_created`) VALUES (2, 'Travel', '2018-11-07 19:58:39');
INSERT INTO `tags` (`id`, `name`, `_created`) VALUES (3, 'Food', '2018-11-07 19:58:39');
INSERT INTO `tags` (`id`, `name`, `_created`) VALUES (4, 'Technology', '2018-11-07 19:58:39');
INSERT INTO `tags` (`id`, `name`, `_created`) VALUES (5, 'Knowledge', '2018-11-07 19:58:39');
INSERT INTO `tags` (`id`, `name`, `_created`) VALUES (6, 'Gaming', '2018-11-07 19:58:39');
INSERT INTO `tags` (`id`, `name`, `_created`) VALUES (7, 'Super Smash Bros. Melee', '2018-11-07 19:58:39');
INSERT INTO `tags` (`id`, `name`, `_created`) VALUES (8, 'Hardware', '2018-11-07 19:58:39');
INSERT INTO `tags` (`id`, `name`, `_created`) VALUES (9, 'Software', '2018-11-07 19:58:39');

#
# TABLE STRUCTURE FOR: blogtags
#

CREATE TABLE `blogtags` (
  `blogid` int(11) NOT NULL,
  `tagid` int(11) NOT NULL,
  PRIMARY KEY (`tagid`,`blogid`),
  CONSTRAINT `fk_blogtags_tagid` FOREIGN KEY (`tagid`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (1, 1);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (10, 1);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (19, 1);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (2, 2);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (11, 2);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (20, 2);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (3, 3);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (12, 3);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (21, 3);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (4, 4);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (13, 4);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (22, 4);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (5, 5);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (14, 5);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (23, 5);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (6, 6);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (15, 6);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (24, 6);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (7, 7);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (16, 7);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (25, 7);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (8, 8);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (17, 8);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (9, 9);
INSERT INTO `blogtags` (`blogid`, `tagid`) VALUES (18, 9);

#
# TABLE STRUCTURE FOR: tokens
#

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`, `userid`),
  CONSTRAINT `fk_userid_users` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

#
# STORED PROCEDURE STRUCTURE FOR: spBlogTags(blogid)
#

DELIMITER //

 CREATE PROCEDURE spBlogTags(blogid int)
  BEGIN
     SELECT t.name FROM blogtags bt
     JOIN tags t ON t.id = bt.tagid
     WHERE bt.blogid = blogid;
  END //
   
DELIMITER ;