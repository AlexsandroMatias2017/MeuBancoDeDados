
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,   `matriz`) VALUES (1, '1', 'DG01', 'Desenho Geométrico', 60, 1 , 25);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,   `matriz`) VALUES (2, '1', 'PI00', 'Português Instrumental ', 30, 3 , 6);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,   `matriz`) VALUES (3, '1', 'II00', 'Inglês Instrumental', 35, 4,  7);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,   `matriz`) VALUES (4, '1', 'IP00', 'Introdução à Programação ', 90, 8,  18);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,   `matriz`) VALUES (5, '1', 'GA00', 'Geometria Analítica ', 70, 6,  21);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,   `matriz`) VALUES (6, '1', 'IC00', 'Introdução à computação', 60, 5,  22);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,   `matriz`) VALUES (7, '1', 'LP01', 'Lógica de programação', 50, 5,  20);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`, `pre_req`,   `matriz`) VALUES (8, '2', 'BD01', 'Banco de Dados 1 ', 60, 5, 7, 2);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,  `pre_req`, `matriz`) VALUES (9, '2', 'AC00', 'Arquitetura de Computadores ', 50, 4, 6, 4);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`, `pre_req`, `co_req`,  `matriz`) VALUES (10, '2', 'LP00', 'Programação Orientada a Objetos ', 120, 9, 4, 8, 8);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`, `pre_req`,  `matriz`) VALUES (11, '2', 'CA01', 'Cálculo 1 ', 120, 6, 5, 11);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,   `matriz`) VALUES (12, '2', 'EP00', 'Ética Profissional ', 30, 4,  19);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,  `co_req`, `matriz`) VALUES (13, '2', 'IH00', 'interface homem-máquina', 40, 4, 4, 23);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,  `co_req`, `matriz`) VALUES (14, '3', 'BD02', 'Banco de Dados 2 ', 40, 5, 5,  3);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,  `co_req`, `matriz`) VALUES (15, '3', 'SO00', 'Sistema Operacionais ', 50, 4, 8, 5);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`, `co_req`,  `matriz`) VALUES (16, '3', 'DW01', 'Desenvolvimento Web 1 ', 80, 6, 4, 9);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`, `co_req`,  `matriz`) VALUES (17, '3', 'CA02', 'Cálculo 2 ', 80, 5, 11,  12);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`, `co_req`,  `matriz`) VALUES (18, '3', 'SE00', 'Sistemas Embarcados ', 45, 4, 6,16);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`, `co_req`,  `matriz`) VALUES (19, '3', 'DW03', 'design web', 41, 5, 10,24);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`, `co_req`,  `matriz`) VALUES (20, '4', 'DW02', 'Desenvolvimento Web 2 ', 90, 6, 16,10);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,  `co_req`, `matriz`) VALUES (21, '4', 'CA03', 'Cálculo 3 ', 60, 5, 17,13);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,  `co_req`, `matriz`) VALUES (22, '4', 'RE01', 'Redes 1 ', 60, 5, 9,14);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,  `pre_req`, `co_req`, `matriz`) VALUES (23, '5', 'RE02', 'Redes 2 ', 50, 5, 22, 20, 15);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,  `co_req`, `matriz`) VALUES (24, '6', 'CN00', 'Cálculo Numérico ', 65, 5, 21,20);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,  `matriz`) VALUES (25, '8', 'LI00', 'LIBRAS ', 45, 2, 17);
INSERT INTO `roque`.`componente_curricular` (`cod_cc`, `periodo`, `sigla`, `nome`, `cargahoraria`, `creditos`,  `pre_req`, `co_req`, `matriz`) VALUES (26, '3', 'ED00', 'Estrutura de dados', 80, 4, 4, 8, 1);






INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('1', 'wanessa camargo', '15');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('2', 'pedro mariano', '14');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('3', 'maria rita', '14');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('4', 'jose jorge', '8');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('5', 'antônio carlos magalhães neto', '11');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('6', 'maria conceicao', '2');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('7', 'sebastiao carlos', '3');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('8', 'welligton santos', '3');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('9', 'mayssa Silva', '8');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('10', 'daiana santos', '9');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('11', 'enzo henrique', '5');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('12', 'tiago velame', '3');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('13', 'flavio gueiros', '4');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('14', 'Myrelly karoline', '4');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('15', 'emmlly Silva', '9');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('16', 'valeria amaral', '6');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('17', 'vanessa amaral', '6');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('18', 'vitor tesla', '4');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('19', 'marcio matos', '5');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('20', 'rafael bittencourt', '5');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('21', 'marcelo neves', '1');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('22', 'carluxo bolsonaro', '10');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('23', 'eduardo bolsonaro', '10');
INSERT INTO `roque`.`dependente` (`iddependente`, `nome`, `professor_`) VALUES ('24', 'flávio bolsonaro', '10');
