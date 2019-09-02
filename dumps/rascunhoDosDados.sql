#
# TABLE STRUCTURE FOR: dependente
#

DROP TABLE IF EXISTS `dependente`;

CREATE TABLE `dependente` (
  `id_dependente` int(11) NOT NULL AUTO_INCREMENT,
  `id_professor` int(11) unsigned NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_dependente`),
  UNIQUE KEY `telefone` (`telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (1, 1, 'Dr. Buddy Murray', '+98(4)626359970');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (2, 2, 'Ms. Katharina Dooley IV', '(527)331-7910');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (3, 3, 'Ryder Dibbert', '+51(8)985685851');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (4, 4, 'Billie Huels', '550.572.0570');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (5, 5, 'Giovanna Dibbert', '1-837-660-0819');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (6, 6, 'Mr. Paxton Bahringer', '219-014-6251x48');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (7, 7, 'Ms. Simone Satterfield MD', '1-730-692-1999');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (8, 8, 'Dr. Arnold Fahey', '869.246.0280x34');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (9, 9, 'Miss Yoshiko Quigley DDS', '876-541-1406');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (10, 10, 'Dr. Beryl Rice Sr.', '051.454.6004');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (11, 11, 'Ms. Penelope Labadie', '1-797-480-9755x');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (12, 12, 'Jackie Satterfield', '995.198.4083x96');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (13, 13, 'Devyn Simonis', '874.609.8228x11');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (14, 14, 'Rae Kunze', '288-419-2814x53');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (15, 15, 'Mrs. Josianne Bogan', '(441)328-6634x0');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (16, 16, 'Leon Kessler', '1-972-157-9833');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (17, 17, 'Miss Delia Bogisich Sr.', '(575)783-8780');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (18, 18, 'Helen Wintheiser MD', '840-354-5574x08');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (19, 19, 'Elisha Sauer', '518.490.5046x49');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (20, 20, 'Vickie Stehr', '(836)912-0701x7');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (21, 21, 'Isac Bashirian', '+77(0)455614826');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (22, 22, 'Hanna Bayer DDS', '275-957-2668');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (23, 23, 'Garrett Schmitt', '+00(1)141459566');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (24, 24, 'Blanche Kemmer MD', '733-800-5908x63');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (25, 25, 'Gail Boyer', '430.833.2848x76');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (26, 26, 'Ms. Princess White Jr.', '06692258335');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (27, 27, 'Prof. Oswaldo Haag II', '+90(3)556158123');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (28, 28, 'Flavio Smith IV', '680.786.0679');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (29, 29, 'Prof. Tristin Altenwerth II', '569.930.8363');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (30, 30, 'Eliane Leuschke', '(804)647-1383');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (31, 31, 'Dr. Thad Jacobi', '01335687876');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (32, 32, 'Elmore Stamm', '1-598-003-2911');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (33, 33, 'Prof. Jarrett Quigley', '(567)305-4086');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (34, 34, 'Ms. Katheryn Murphy', '01710308923');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (35, 35, 'Salvador Erdman', '00823791645');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (36, 36, 'Prof. Norberto Botsford', '405-196-2298x11');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (37, 37, 'Janessa Little V', '1-122-398-2015');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (38, 38, 'Dr. Remington Cummings', '1-539-497-8421');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (39, 39, 'Dr. Jenifer Predovic IV', '806.017.1390x98');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (40, 40, 'Miss Stella Keebler', '815.560.4570x69');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (41, 41, 'Tavares Lakin IV', '(001)998-1774x2');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (42, 42, 'Pietro Hirthe', '1-479-233-7913');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (43, 43, 'Gerson D\'Amore MD', '914-595-7757');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (44, 44, 'Sasha Dach', '486-592-8153x79');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (45, 45, 'Matteo Ritchie', '(578)451-1237x9');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (46, 46, 'Rylan Gaylord', '(205)002-6195x5');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (47, 47, 'Camden Bernhard', '+98(9)950471492');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (48, 48, 'Kyra Hodkiewicz', '126.438.9538x83');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (49, 49, 'Amari Hodkiewicz', '592-595-4846');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (50, 50, 'Susana Schmidt', '189.541.0263x45');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (51, 1, 'Mikel Hand', '07033166808');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (52, 2, 'Kamron O\'Kon', '726-488-9028');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (53, 3, 'Rosalee Rosenbaum', '1-967-757-7543x');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (54, 4, 'Alysa Nikolaus', '+56(4)775622083');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (55, 5, 'Destinee Conroy', '1-795-478-9717x');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (56, 6, 'Lucio Schultz', '(453)844-0588');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (57, 7, 'Danika O\'Hara', '+36(5)435021940');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (58, 8, 'Laurence Rath I', '(505)700-5680x4');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (59, 9, 'Dr. Viva Hoppe PhD', '(749)693-3970');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (60, 10, 'Prof. Daron Morissette V', '415.359.3862x87');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (61, 11, 'Mr. Tatum Upton IV', '527-110-1965');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (62, 12, 'Devon Wisoky', '1-963-010-8659x');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (63, 13, 'Lenora Rowe V', '(572)024-6478x8');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (64, 14, 'Murl Smith', '1-666-164-3595x');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (65, 15, 'Asha Lowe', '(918)571-5243x0');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (66, 16, 'Jacynthe Legros V', '(640)042-3727');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (67, 17, 'Dr. Caesar Mertz III', '+29(8)005931100');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (68, 18, 'Sylvester Cartwright', '(216)769-9679');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (69, 19, 'Dell Torphy', '561.252.8937');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (70, 20, 'Emilie Fritsch', '(471)974-1663');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (71, 21, 'Hiram Corkery', '(157)567-6733x6');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (72, 22, 'Filomena Brown', '232-245-9825x83');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (73, 23, 'Maybelle Lowe PhD', '1-476-066-5555x');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (74, 24, 'Mr. Harry Cormier III', '653.827.2518x34');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (75, 25, 'Mr. Abner Lubowitz', '582-726-4560x83');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (76, 26, 'Destany Hayes', '1-492-369-3268x');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (77, 27, 'Waylon Effertz', '06429402799');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (78, 28, 'Giovanny Reynolds', '02601947284');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (79, 29, 'Dr. Juston Abshire', '05843262173');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (80, 30, 'Jerel Bogisich', '889-519-6816');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (81, 31, 'Mrs. Adrienne Ferry V', '1-019-457-6683x');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (82, 32, 'Dr. Tyler Sanford', '1-207-616-3048');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (83, 33, 'Dr. Sonya Treutel I', '917.108.8499x03');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (84, 34, 'Dashawn Nitzsche', '116.935.4262');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (85, 35, 'Mrs. Adaline Eichmann', '269-702-6642x18');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (86, 36, 'Mina Walter', '503-852-1510');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (87, 37, 'Izaiah Kunde', '(649)529-1369x0');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (88, 38, 'Sterling Waters', '1-002-678-4307');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (89, 39, 'Selina Ward Sr.', '03419376000');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (90, 40, 'Prof. Jacinto Huel', '+99(6)221745359');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (91, 41, 'Owen Oberbrunner', '885-187-0598x34');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (92, 42, 'Dave Bartell I', '+87(9)706801023');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (93, 43, 'Benjamin Emard', '925.185.8298');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (94, 44, 'Camille Waelchi DVM', '058.130.7650x47');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (95, 45, 'Cicero Smitham', '1-463-453-8163x');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (96, 46, 'Miss Sabryna Witting MD', '628.664.7827');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (97, 47, 'Meda Ullrich', '288.985.5339x37');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (98, 48, 'Shaun Kozey', '(682)655-8038x1');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (99, 49, 'Mr. Javon Douglas', '+18(5)660905131');
INSERT INTO `dependente` (`id_dependente`, `id_professor`, `nome`, `telefone`) VALUES (100, 50, 'Mr. Brice Fritsch III', '(960)715-7479x9');


#
# TABLE STRUCTURE FOR: professor
#

DROP TABLE IF EXISTS `professor`;

CREATE TABLE `professor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `professor` (`id`, `nome`) VALUES (1, 'Rosalind Stroman');
INSERT INTO `professor` (`id`, `nome`) VALUES (2, 'Maiya VonRueden');
INSERT INTO `professor` (`id`, `nome`) VALUES (3, 'Reed Ondricka III');
INSERT INTO `professor` (`id`, `nome`) VALUES (4, 'Harley Beier');
INSERT INTO `professor` (`id`, `nome`) VALUES (5, 'Jaydon Tromp');
INSERT INTO `professor` (`id`, `nome`) VALUES (6, 'Rolando Gusikowski');
INSERT INTO `professor` (`id`, `nome`) VALUES (7, 'Mrs. Layla Gerlach DDS');
INSERT INTO `professor` (`id`, `nome`) VALUES (8, 'Dr. Kameron Keeling');
INSERT INTO `professor` (`id`, `nome`) VALUES (9, 'Abbey Wisozk');
INSERT INTO `professor` (`id`, `nome`) VALUES (10, 'Lauren Kreiger DVM');
INSERT INTO `professor` (`id`, `nome`) VALUES (11, 'Dr. Manley Kessler III');
INSERT INTO `professor` (`id`, `nome`) VALUES (12, 'Dr. Jeromy Wilkinson');
INSERT INTO `professor` (`id`, `nome`) VALUES (13, 'Mr. Nicholaus Orn');
INSERT INTO `professor` (`id`, `nome`) VALUES (14, 'Leatha Bechtelar I');
INSERT INTO `professor` (`id`, `nome`) VALUES (15, 'Miss Whitney Williamson V');
INSERT INTO `professor` (`id`, `nome`) VALUES (16, 'Jeremy Brown');
INSERT INTO `professor` (`id`, `nome`) VALUES (17, 'Brant Howe');
INSERT INTO `professor` (`id`, `nome`) VALUES (18, 'Miss Jeanie Adams');
INSERT INTO `professor` (`id`, `nome`) VALUES (19, 'Finn Nienow DDS');
INSERT INTO `professor` (`id`, `nome`) VALUES (20, 'Mariane Walker');
INSERT INTO `professor` (`id`, `nome`) VALUES (21, 'Darwin O\'Hara II');
INSERT INTO `professor` (`id`, `nome`) VALUES (22, 'Jaylan Kshlerin');
INSERT INTO `professor` (`id`, `nome`) VALUES (23, 'Kathlyn Beier');
INSERT INTO `professor` (`id`, `nome`) VALUES (24, 'Miss Maryjane Schumm DVM');
INSERT INTO `professor` (`id`, `nome`) VALUES (25, 'Moses Casper IV');
INSERT INTO `professor` (`id`, `nome`) VALUES (26, 'Maegan Schiller');
INSERT INTO `professor` (`id`, `nome`) VALUES (27, 'Paula Kozey DVM');
INSERT INTO `professor` (`id`, `nome`) VALUES (28, 'Allison Pacocha');
INSERT INTO `professor` (`id`, `nome`) VALUES (29, 'Noelia Labadie IV');
INSERT INTO `professor` (`id`, `nome`) VALUES (30, 'Henderson Lynch');
INSERT INTO `professor` (`id`, `nome`) VALUES (31, 'Paolo Stoltenberg');
INSERT INTO `professor` (`id`, `nome`) VALUES (32, 'Cristal Lockman');
INSERT INTO `professor` (`id`, `nome`) VALUES (33, 'Dr. Haven Watsica PhD');
INSERT INTO `professor` (`id`, `nome`) VALUES (34, 'Mrs. Aiyana Ritchie DVM');
INSERT INTO `professor` (`id`, `nome`) VALUES (35, 'Abdul Macejkovic');
INSERT INTO `professor` (`id`, `nome`) VALUES (36, 'Tod Harvey');
INSERT INTO `professor` (`id`, `nome`) VALUES (37, 'Prof. Gino Toy');
INSERT INTO `professor` (`id`, `nome`) VALUES (38, 'Ilene Bogan');
INSERT INTO `professor` (`id`, `nome`) VALUES (39, 'Prof. Krista Yost');
INSERT INTO `professor` (`id`, `nome`) VALUES (40, 'Brain Connelly');
INSERT INTO `professor` (`id`, `nome`) VALUES (41, 'Kiley Reynolds');
INSERT INTO `professor` (`id`, `nome`) VALUES (42, 'Mrs. Magnolia Roberts');
INSERT INTO `professor` (`id`, `nome`) VALUES (43, 'Rachel Hermann');
INSERT INTO `professor` (`id`, `nome`) VALUES (44, 'Neal Cruickshank III');
INSERT INTO `professor` (`id`, `nome`) VALUES (45, 'Precious West');
INSERT INTO `professor` (`id`, `nome`) VALUES (46, 'Amani Mohr');
INSERT INTO `professor` (`id`, `nome`) VALUES (47, 'Dock Pouros');
INSERT INTO `professor` (`id`, `nome`) VALUES (48, 'Louie Lakin');
INSERT INTO `professor` (`id`, `nome`) VALUES (49, 'Axel Barrows');
INSERT INTO `professor` (`id`, `nome`) VALUES (50, 'Wilbert Miller');


