-- Generated from StatsBomb World Cup 2022 knockout data

DELETE FROM player_match_stats;
DELETE FROM fantasy_team_players;
DELETE FROM matches;
DELETE FROM players;
DELETE FROM fantasy_teams;
DELETE FROM national_teams;
DELETE FROM users;

INSERT INTO national_teams (national_team_id, country) VALUES (1, 'Argentina');
INSERT INTO national_teams (national_team_id, country) VALUES (2, 'Australia');
INSERT INTO national_teams (national_team_id, country) VALUES (3, 'Brazil');
INSERT INTO national_teams (national_team_id, country) VALUES (4, 'Croatia');
INSERT INTO national_teams (national_team_id, country) VALUES (5, 'England');
INSERT INTO national_teams (national_team_id, country) VALUES (6, 'France');
INSERT INTO national_teams (national_team_id, country) VALUES (7, 'Japan');
INSERT INTO national_teams (national_team_id, country) VALUES (8, 'Morocco');
INSERT INTO national_teams (national_team_id, country) VALUES (9, 'Netherlands');
INSERT INTO national_teams (national_team_id, country) VALUES (10, 'Poland');
INSERT INTO national_teams (national_team_id, country) VALUES (11, 'Portugal');
INSERT INTO national_teams (national_team_id, country) VALUES (12, 'Senegal');
INSERT INTO national_teams (national_team_id, country) VALUES (13, 'South Korea');
INSERT INTO national_teams (national_team_id, country) VALUES (14, 'Spain');
INSERT INTO national_teams (national_team_id, country) VALUES (15, 'Switzerland');
INSERT INTO national_teams (national_team_id, country) VALUES (16, 'United States');

INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (1, 2, 'Aaron Mooy', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (2, 12, 'Abdou Diallo', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (3, 8, 'Achraf Hakimi Mouh', 'DEF', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (4, 6, 'Adrien Rabiot', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (5, 1, 'Alexis Mac Allister', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (6, 3, 'Alisson Ramses Becker', 'GK', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (7, 4, 'Andrej Kramaric', 'FWD', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (8, 9, 'Andries Noppert', 'GK', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (9, 6, 'Antoine Griezmann', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (10, 16, 'Antonee Robinson', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (11, 6, 'Aurelien Djani Tchouameni', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (12, 14, 'Aymeric Laporte', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (13, 2, 'Aziz Eraltay Behich', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (14, 8, 'Azzedine Ounahi', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (15, 10, 'Bartosz Bereszynski', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (16, 11, 'Bernardo Mota Veiga de Carvalho e Silva', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (17, 4, 'Borna Sosa', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (18, 12, 'Boulaye Dia', 'FWD', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (19, 15, 'Breel-Donald Embolo', 'FWD', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (20, 11, 'Bruno Miguel Borges Fernandes', 'FWD', 11);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (21, 5, 'Bukayo Saka', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (22, 3, 'Carlos Henrique Casimiro', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (23, 16, 'Christian Pulisic', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (24, 13, 'Chul Hong', 'DEF', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (25, 9, 'Cody Mathes Gakpo', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (26, 1, 'Cristian Gabriel Romero', 'DEF', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (27, 7, 'Daichi Kamada', 'FWD', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (28, 7, 'Daizen Maeda', 'FWD', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (29, 9, 'Daley Blind', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (30, 1, 'DamiAn Emiliano Martinez', 'GK', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (31, 14, 'Daniel Olmo Carvajal', 'FWD', 11);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (32, 3, 'Danilo Luiz da Silva', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (33, 6, 'Dayotchanculle Upamecano', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (34, 5, 'Declan Rice', 'MID', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (35, 4, 'Dejan Lovren', 'DEF', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (36, 9, 'Denzel Dumfries', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (37, 11, 'Diogo Meireles Costa', 'GK', 10);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (38, 15, 'Djibril Sow', 'MID', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (39, 4, 'Dominik Livakovic', 'GK', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (40, 15, 'Edimilson Fernandes', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (41, 12, 'Edouard Mendy', 'GK', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (42, 1, 'Enzo Fernandez', 'MID', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (43, 15, 'Eray Ervin Comert', 'DEF', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (44, 14, 'Ferran Torres Garcia', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (45, 9, 'Frenkie de Jong', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (46, 11, 'Goncalo Matias Ramos', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (47, 15, 'Granit Xhaka', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (48, 10, 'Grzegorz Krychowiak', 'MID', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (49, 13, 'Gue-Sung Cho', 'FWD', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (50, 8, 'Hakim Ziyech', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (51, 5, 'Harry Kane', 'FWD', 10);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (52, 5, 'Harry Maguire', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (53, 2, 'Harry Souttar', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (54, 13, 'Hee-Chan Hwang', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (55, 13, 'Heung-Min Son', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (56, 7, 'Hidemasa Morita', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (57, 6, 'Hugo Lloris', 'GK', 10);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (58, 12, 'Iliman Ndiaye', 'MID', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (59, 13, 'In-Beom Hwang', 'MID', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (60, 12, 'Ismail Jakobs', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (61, 12, 'Ismaila Sarr', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (62, 4, 'Ivan Perisic', 'FWD', 10);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (63, 2, 'Jackson Irvine', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (64, 13, 'Jae-Sung Lee', 'MID', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (65, 10, 'Jakub Kaminski', 'MID', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (66, 10, 'Jakub Piotr Kiwior', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (67, 8, 'Jawad El Yamiq', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (68, 16, 'Jesus Ferreira', 'FWD', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (69, 5, 'John Stones', 'DEF', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (70, 5, 'Jordan Brian Henderson', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (71, 5, 'Jordan Pickford', 'GK', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (72, 14, 'Jordi Alba Ramos', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (73, 4, 'Josip Juranovic', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (74, 11, 'Jose Diogo Dalot Teixeira', 'DEF', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (75, 11, 'Joao Felix Sequeira', 'FWD', 10);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (76, 4, 'Josko Gvardiol', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (77, 5, 'Jude Bellingham', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (78, 6, 'Jules Kounde', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (79, 1, 'JuliAn Alvarez', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (80, 7, 'Junya Ito', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (81, 9, 'Jurrien David Norman Timber', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (82, 12, 'Kalidou Koulibaly', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (83, 10, 'Kamil Glik', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (84, 2, 'Keanu Baccus', 'MID', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (85, 11, 'Kleper Laveran Lima Ferreira', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (86, 12, 'Krepin Diatta', 'FWD', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (87, 2, 'Kye Rowles', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (88, 5, 'Kyle Walker', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (89, 6, 'Kylian Mbappe Lottin', 'FWD', 11);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (90, 1, 'Lionel Andres Messi Cuccittini', 'FWD', 11);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (91, 1, 'Lisandro Martinez', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (92, 3, 'Lucas Tolentino Coelho de Lima', 'MID', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (93, 4, 'Luka Modric', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (94, 5, 'Luke Shaw', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (95, 15, 'Manuel Obafemi Akanji', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (96, 4, 'Marcelo Brozovic', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (97, 14, 'Marco Asensio Willemsen', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (98, 3, 'Marcos Aoas Correa', 'DEF', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (99, 14, 'Marcos Llorente Moreno', 'DEF', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (100, 4, 'Mario Pasalic', 'FWD', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (101, 9, 'Marten de Roon', 'MID', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (102, 4, 'Mateo Kovacic', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (103, 2, 'Mathew Leckie', 'MID', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (104, 2, 'Mathew Ryan', 'GK', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (105, 16, 'Matthew Charles Turner', 'GK', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (106, 10, 'Matty Cash', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (107, 7, 'Maya Yoshida', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (108, 9, 'Memphis Depay', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (109, 2, 'Milos Degenek', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (110, 13, 'Min Jae Kim', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (111, 2, 'Mitchell Thomas Duke', 'FWD', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (112, 13, 'Moon-Hwan Kim', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (113, 1, 'Nahuel Molina Lucero', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (114, 12, 'Nampalys Mendy', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (115, 9, 'Nathan Ake', 'DEF', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (116, 3, 'Neymar da Silva Santos Junior', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (117, 1, 'NicolAs Alejandro Tagliafico', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (118, 1, 'NicolAs HernAn Otamendi', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (119, 6, 'Olivier Giroud', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (120, 11, 'OtAvio Edmilson da Silva Monteiro', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (121, 6, 'Ousmane Dembele', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (122, 14, 'Pablo Martin PAez Gavira', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (123, 12, 'Pape Gueye', 'MID', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (124, 14, 'Pedro Gonzalez Lopez', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (125, 5, 'Philip Foden', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (126, 10, 'Piotr Zielinski', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (127, 10, 'Przemys aw Frankowski', 'MID', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (128, 3, 'Raphael Dias Belloli', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (129, 11, 'Raphael Adelino Jose Guerreiro', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (130, 6, 'Raphael Varane', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (131, 15, 'Remo Freuler', 'MID', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (132, 15, 'Ricardo Ivan Rodriguez Araya', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (133, 3, 'Richarlison de Andrade', 'FWD', 10);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (134, 2, 'Riley McGree', 'MID', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (135, 7, 'Ritsu Doan', 'FWD', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (136, 10, 'Robert Lewandowski', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (137, 14, 'Rodrigo Hernandez Cascante', 'DEF', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (138, 1, 'Rodrigo Javier De Paul', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (139, 8, 'Romain Saiss', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (140, 15, 'Ruben Vargas', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (141, 11, 'Ruben Santos Gato Alves Dias', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (142, 10, 'Sebastian Szymanski', 'MID', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (143, 8, 'Selim Amallah', 'MID', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (144, 16, 'Sergino Dest', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (145, 14, 'Sergio Busquets i Burgos', 'MID', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (146, 13, 'Seung-Gyu Kim', 'GK', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (147, 7, 'Shogo Taniguchi', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (148, 7, 'Shuichi Gonda', 'GK', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (149, 8, 'Sofiane Boufal', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (150, 8, 'Sofyan Amrabat', 'MID', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (151, 7, 'Takehiro Tomiyasu', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (152, 9, 'Teun Koopmeiners', 'MID', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (153, 6, 'Theo Bernard Francois Hernandez', 'DEF', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (154, 3, 'Thiago Emiliano da Silva', 'DEF', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (155, 16, 'Tim Ream', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (156, 16, 'Timothy Weah', 'FWD', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (157, 16, 'Tyler Adams', 'MID', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (158, 14, 'Unai Simon Mendibil', 'GK', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (159, 3, 'Vinicius Jose Paixao de Oliveira Junior', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (160, 9, 'Virgil van Dijk', 'DEF', 8);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (161, 16, 'Walker Zimmerman', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (162, 7, 'Wataru Endo', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (163, 16, 'Weston McKennie', 'MID', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (164, 11, 'William Silva de Carvalho', 'MID', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (165, 10, 'Wojciech Szczesny', 'GK', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (166, 13, 'Woo-Young Jung', 'MID', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (167, 15, 'Xherdan Shaqiri', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (168, 8, 'Yahia Attiyat allah', 'DEF', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (169, 15, 'Yann Sommer', 'GK', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (170, 8, 'Yassine Bounou', 'GK', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (171, 13, 'Young-Gwon Kim', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (172, 8, 'Youssef En-Nesyri', 'FWD', 9);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (173, 12, 'Youssouf Sabaly', 'DEF', 7);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (174, 16, 'Yunus Dimoara Musah', 'MID', 6);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (175, 7, 'Yuto Nagatomo', 'DEF', 5);
INSERT INTO players (player_id, national_team_id, name, position, price) VALUES (176, 3, 'eder Gabriel Militao', 'DEF', 9);



-- DEMO USERS + DEMO TEAMS FOR LEADERBOARD

INSERT INTO users (username, password)
VALUES
    ('Tryhard', 'demo123'),
    ('Trump', 'demo123'),
    ('Noob', 'demo123');


INSERT INTO fantasy_teams (user_id, team_name)
SELECT user_id, 'Dream Team'
FROM users
WHERE username = 'Tryhard';

INSERT INTO fantasy_teams (user_id, team_name)
SELECT user_id, 'American Eagles'
FROM users
WHERE username = 'Trump';

INSERT INTO fantasy_teams (user_id, team_name)
SELECT user_id, 'Noob FC'
FROM users
WHERE username = 'Noob';



INSERT INTO fantasy_team_players (fantasy_team_id, player_id)
SELECT ft.fantasy_team_id, p.player_id
FROM fantasy_teams ft
JOIN players p
    ON p.name IN (
        'Kylian Mbappe Lottin',
        'Lionel Andres Messi Cuccittini',
        'Dominik Livakovic',
        'Alexis Mac Allister',
        'Antoine Griezmann',
        'Aurelien Djani Tchouameni',
        'Rodrigo Javier De Paul',
        'Achraf Hakimi Mouh',
        'Daley Blind',
        'Theo Bernard Francois Hernandez',
        'Yahia Attiyat allah'
    )
WHERE ft.team_name = 'Dream Team';




INSERT INTO fantasy_team_players (fantasy_team_id, player_id)
SELECT ft.fantasy_team_id, p.player_id
FROM fantasy_teams ft
JOIN players p
    ON p.name IN (
        'Christian Pulisic',
        'Jesus Ferreira',
        'Matthew Charles Turner',
        'Tyler Adams',
        'Weston McKennie',
        'Yunus Dimoara Musah',
        'Antonee Robinson',
        'Sergino Dest',
        'Declan Rice',
        'Tim Ream',
        'Walker Zimmerman'
    )
WHERE ft.team_name = 'American Eagles';


INSERT INTO fantasy_team_players (fantasy_team_id, player_id)
SELECT ft.fantasy_team_id, p.player_id
FROM fantasy_teams ft
JOIN players p
    ON p.name IN (
        'Andrej Kramaric',
        'Daichi Kamada',
        'Remo Freuler',
        'Junya Ito',
        'Edimilson Fernandes',
        'Aymeric Laporte',
        'Aaron Mooy',
        'Edouard Mendy',
        'Pablo Martin PAez Gavira',
        'Ismail Jakobs',
        'Grzegorz Krychowiak'
    )
WHERE ft.team_name = 'Noob FC';





INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (1, 1, 2, '2022-12-03', 2, 1);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (2, 9, 1, '2022-12-09', 2, 2);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (3, 8, 11, '2022-12-10', 1, 0);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (4, 1, 6, '2022-12-18', 3, 3);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (5, 11, 15, '2022-12-06', 6, 1);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (6, 5, 12, '2022-12-04', 3, 0);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (7, 1, 4, '2022-12-13', 3, 0);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (8, 5, 6, '2022-12-10', 1, 2);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (9, 6, 8, '2022-12-14', 2, 0);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (10, 4, 3, '2022-12-09', 1, 1);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (11, 8, 14, '2022-12-06', 0, 0);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (12, 7, 4, '2022-12-05', 1, 1);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (13, 3, 13, '2022-12-05', 4, 1);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (14, 6, 10, '2022-12-04', 3, 1);
INSERT INTO matches (match_id, home_team_id, away_team_id, match_date, home_score, away_score) VALUES (15, 9, 16, '2022-12-03', 3, 1);

INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (1, 90, 1, 1, 0, TRUE, 0, 0, FALSE, 1, 4, 2);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (2, 90, 2, 2, 1, FALSE, 0, 0, FALSE, 0, 2, 3);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (3, 90, 4, 3, 0, FALSE, 0, 0, FALSE, 1, 2, 5);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (4, 90, 7, 1, 1, TRUE, 0, 0, TRUE, 0, 1, 2);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (5, 118, 1, 0, 1, TRUE, 0, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (6, 118, 7, 0, 0, TRUE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (7, 42, 1, 0, 0, TRUE, 0, 0, FALSE, 3, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (8, 42, 2, 0, 0, FALSE, 0, 0, FALSE, 0, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (9, 42, 4, 0, 0, FALSE, 0, 0, FALSE, 5, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (10, 42, 7, 0, 0, TRUE, 0, 0, TRUE, 3, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (11, 113, 1, 0, 0, TRUE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (12, 113, 2, 1, 0, FALSE, 0, 0, FALSE, 1, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (13, 113, 7, 0, 0, TRUE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (14, 5, 1, 0, 0, TRUE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (15, 5, 2, 0, 0, FALSE, 0, 0, FALSE, 2, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (16, 5, 4, 0, 1, FALSE, 0, 0, FALSE, 1, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (17, 5, 7, 0, 0, TRUE, 0, 0, TRUE, 1, 2, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (18, 30, 1, 0, 0, TRUE, 1, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (19, 30, 2, 0, 0, FALSE, 0, 2, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (20, 30, 4, 0, 0, FALSE, 2, 2, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (21, 30, 7, 0, 0, TRUE, 2, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (22, 26, 1, 0, 0, TRUE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (23, 26, 4, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (24, 26, 7, 0, 0, TRUE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (25, 138, 1, 0, 0, TRUE, 0, 0, FALSE, 1, 3, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (26, 138, 2, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (27, 138, 4, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (28, 138, 7, 0, 0, TRUE, 0, 0, TRUE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (29, 79, 1, 1, 0, TRUE, 0, 0, FALSE, 2, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (30, 79, 2, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (31, 79, 4, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (32, 79, 7, 2, 0, TRUE, 0, 0, TRUE, 0, 0, 2);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (33, 117, 1, 0, 0, TRUE, 0, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (34, 117, 4, 0, 0, FALSE, 0, 0, FALSE, 4, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (35, 117, 7, 0, 0, TRUE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (36, 91, 1, 0, 0, TRUE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (37, 91, 2, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (38, 91, 7, 0, 0, TRUE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (39, 104, 1, 0, 0, FALSE, 3, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (40, 1, 1, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (41, 53, 1, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (42, 134, 1, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (43, 84, 1, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (44, 25, 2, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (45, 25, 15, 0, 0, TRUE, 0, 0, FALSE, 2, 4, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (46, 115, 2, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (47, 115, 15, 0, 0, TRUE, 0, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (48, 160, 2, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (49, 160, 15, 0, 0, TRUE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (50, 45, 15, 0, 0, TRUE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (51, 36, 2, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (52, 36, 15, 1, 2, TRUE, 0, 0, FALSE, 1, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (53, 8, 2, 0, 0, FALSE, 3, 1, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (54, 8, 15, 0, 0, TRUE, 5, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (55, 81, 2, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (56, 81, 15, 0, 0, TRUE, 0, 0, FALSE, 3, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (57, 108, 2, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (58, 108, 15, 1, 0, TRUE, 0, 0, FALSE, 0, 1, 3);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (59, 29, 2, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (60, 29, 15, 1, 1, TRUE, 0, 0, FALSE, 4, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (61, 101, 2, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (62, 101, 15, 0, 0, TRUE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (63, 152, 2, 1, 1, FALSE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (64, 152, 15, 0, 0, TRUE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (65, 141, 3, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (66, 141, 5, 0, 0, TRUE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (67, 85, 5, 1, 0, TRUE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (68, 37, 3, 0, 0, FALSE, 2, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (69, 37, 5, 0, 0, TRUE, 2, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (70, 20, 3, 0, 0, FALSE, 0, 0, FALSE, 1, 3, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (71, 20, 5, 0, 1, TRUE, 0, 0, FALSE, 2, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (72, 16, 3, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (73, 16, 5, 0, 0, TRUE, 0, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (74, 74, 3, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (75, 74, 5, 0, 0, TRUE, 0, 0, FALSE, 3, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (76, 75, 3, 0, 0, FALSE, 0, 0, FALSE, 0, 0, 2);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (77, 75, 5, 0, 2, TRUE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (78, 120, 3, 0, 0, FALSE, 0, 0, FALSE, 3, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (79, 120, 5, 0, 0, TRUE, 0, 0, FALSE, 1, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (80, 46, 5, 3, 1, TRUE, 0, 0, FALSE, 1, 1, 5);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (81, 129, 3, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (82, 129, 5, 1, 1, TRUE, 0, 0, FALSE, 0, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (83, 164, 5, 0, 0, TRUE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (84, 150, 3, 0, 0, TRUE, 0, 0, TRUE, 3, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (85, 150, 9, 0, 0, FALSE, 0, 0, FALSE, 2, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (86, 150, 11, 0, 0, FALSE, 0, 0, TRUE, 3, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (87, 14, 3, 0, 0, TRUE, 0, 0, TRUE, 0, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (88, 14, 9, 0, 0, FALSE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (89, 14, 11, 0, 0, FALSE, 0, 0, TRUE, 2, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (90, 3, 3, 0, 0, TRUE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (91, 3, 9, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (92, 3, 11, 1, 0, FALSE, 0, 0, TRUE, 3, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (93, 170, 3, 0, 0, TRUE, 3, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (94, 170, 11, 0, 0, FALSE, 1, 3, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (95, 50, 3, 0, 0, TRUE, 0, 0, TRUE, 0, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (96, 50, 11, 1, 0, FALSE, 0, 0, TRUE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (97, 149, 3, 0, 0, TRUE, 0, 0, TRUE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (98, 149, 9, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (99, 149, 11, 0, 0, FALSE, 0, 0, TRUE, 2, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (100, 172, 3, 1, 0, TRUE, 0, 0, TRUE, 1, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (101, 172, 11, 0, 0, FALSE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (102, 139, 3, 0, 0, TRUE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (103, 139, 11, 0, 0, FALSE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (104, 143, 3, 0, 0, TRUE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (105, 143, 9, 0, 0, FALSE, 0, 0, FALSE, 3, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (106, 143, 11, 0, 0, FALSE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (107, 67, 3, 0, 0, TRUE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (108, 67, 9, 0, 0, FALSE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (109, 67, 11, 0, 0, FALSE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (110, 168, 3, 0, 1, TRUE, 0, 0, TRUE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (111, 168, 9, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (112, 168, 11, 0, 0, FALSE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (113, 78, 4, 0, 0, FALSE, 0, 0, FALSE, 3, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (114, 78, 8, 0, 0, TRUE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (115, 78, 9, 0, 0, TRUE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (116, 78, 14, 0, 0, TRUE, 0, 0, FALSE, 2, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (117, 130, 8, 0, 0, TRUE, 0, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (118, 130, 9, 0, 0, TRUE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (119, 130, 14, 0, 0, TRUE, 0, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (120, 57, 4, 0, 0, FALSE, 7, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (121, 57, 8, 0, 0, TRUE, 6, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (122, 57, 9, 0, 0, TRUE, 1, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (123, 57, 14, 0, 0, TRUE, 1, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (124, 89, 4, 4, 0, FALSE, 0, 0, FALSE, 0, 0, 4);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (125, 89, 8, 0, 0, TRUE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (126, 89, 9, 0, 0, TRUE, 0, 0, TRUE, 0, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (127, 89, 14, 2, 1, TRUE, 0, 0, FALSE, 0, 1, 3);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (128, 9, 4, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (129, 9, 8, 0, 2, TRUE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (130, 9, 9, 0, 0, TRUE, 0, 0, TRUE, 1, 4, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (131, 9, 14, 0, 0, TRUE, 0, 0, FALSE, 0, 3, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (132, 153, 8, 0, 0, TRUE, 0, 0, FALSE, 2, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (133, 153, 9, 1, 0, TRUE, 0, 0, TRUE, 4, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (134, 153, 14, 0, 0, TRUE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (135, 11, 4, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (136, 11, 8, 1, 0, TRUE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (137, 11, 9, 0, 0, TRUE, 0, 0, TRUE, 1, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (138, 11, 14, 0, 0, TRUE, 0, 0, FALSE, 0, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (139, 4, 4, 0, 0, FALSE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (140, 4, 8, 0, 0, TRUE, 0, 0, FALSE, 1, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (141, 4, 9, 0, 0, TRUE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (142, 4, 14, 0, 0, TRUE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (143, 121, 8, 0, 0, TRUE, 0, 0, FALSE, 1, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (144, 121, 9, 0, 0, TRUE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (145, 121, 14, 0, 1, TRUE, 0, 0, FALSE, 0, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (146, 119, 8, 1, 0, TRUE, 0, 0, FALSE, 0, 0, 3);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (147, 119, 9, 0, 0, TRUE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (148, 119, 14, 1, 0, TRUE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (149, 33, 4, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (150, 33, 8, 0, 0, TRUE, 0, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (151, 33, 9, 0, 0, TRUE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (152, 33, 14, 0, 0, TRUE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (153, 47, 5, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (154, 167, 5, 0, 0, FALSE, 0, 0, FALSE, 0, 2, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (155, 40, 5, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (156, 132, 5, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (157, 95, 5, 1, 0, FALSE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (158, 169, 5, 0, 0, FALSE, 3, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (159, 19, 5, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (160, 131, 5, 0, 0, FALSE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (161, 61, 6, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (162, 173, 6, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (163, 82, 6, 0, 0, FALSE, 0, 0, FALSE, 4, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (164, 41, 6, 0, 0, FALSE, 1, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (165, 60, 6, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (166, 18, 6, 0, 0, FALSE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (167, 86, 6, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (168, 34, 6, 0, 0, TRUE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (169, 34, 8, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (170, 88, 6, 0, 0, TRUE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (171, 88, 8, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (172, 52, 6, 0, 0, TRUE, 0, 0, TRUE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (173, 52, 8, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (174, 94, 6, 0, 0, TRUE, 0, 0, TRUE, 1, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (175, 94, 8, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (176, 71, 6, 0, 0, TRUE, 1, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (177, 71, 8, 0, 0, FALSE, 3, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (178, 51, 6, 1, 0, TRUE, 0, 0, TRUE, 0, 1, 2);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (179, 51, 8, 1, 0, FALSE, 0, 0, FALSE, 0, 0, 4);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (180, 77, 6, 0, 1, TRUE, 0, 0, TRUE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (181, 77, 8, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (182, 69, 6, 0, 0, TRUE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (183, 69, 8, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (184, 70, 6, 1, 0, TRUE, 0, 0, TRUE, 2, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (185, 70, 8, 0, 0, FALSE, 0, 0, FALSE, 0, 3, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (186, 125, 6, 0, 1, TRUE, 0, 0, TRUE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (187, 125, 8, 0, 0, FALSE, 0, 0, FALSE, 0, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (188, 21, 6, 1, 0, TRUE, 0, 0, TRUE, 2, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (189, 21, 8, 0, 0, FALSE, 0, 0, FALSE, 2, 2, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (190, 62, 7, 0, 0, FALSE, 0, 0, FALSE, 1, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (191, 62, 10, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (192, 62, 12, 1, 0, FALSE, 0, 0, FALSE, 1, 1, 2);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (193, 102, 7, 0, 0, FALSE, 0, 0, FALSE, 2, 3, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (194, 102, 10, 0, 0, FALSE, 0, 0, FALSE, 4, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (195, 102, 12, 0, 0, FALSE, 0, 0, FALSE, 3, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (196, 93, 7, 0, 0, FALSE, 0, 0, FALSE, 1, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (197, 93, 10, 1, 0, FALSE, 0, 0, FALSE, 2, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (198, 93, 12, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (199, 35, 7, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (200, 35, 10, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (201, 35, 12, 0, 1, FALSE, 0, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (202, 39, 7, 0, 0, FALSE, 4, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (203, 39, 10, 0, 0, FALSE, 10, 2, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (204, 39, 12, 0, 0, FALSE, 3, 3, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (205, 73, 7, 0, 0, FALSE, 0, 0, FALSE, 3, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (206, 73, 10, 0, 0, FALSE, 0, 0, FALSE, 3, 3, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (207, 73, 12, 0, 0, FALSE, 0, 0, FALSE, 0, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (208, 76, 7, 0, 0, FALSE, 0, 0, FALSE, 4, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (209, 76, 10, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (210, 76, 12, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (211, 96, 7, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (212, 96, 10, 0, 0, FALSE, 0, 0, FALSE, 2, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (213, 96, 12, 1, 0, FALSE, 0, 0, FALSE, 0, 4, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (214, 7, 7, 0, 0, FALSE, 0, 0, FALSE, 0, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (215, 7, 12, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (216, 17, 10, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (217, 100, 7, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (218, 100, 10, 0, 0, FALSE, 0, 0, FALSE, 3, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (219, 100, 12, 1, 0, FALSE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (220, 92, 10, 0, 1, FALSE, 0, 0, FALSE, 1, 0, 2);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (221, 92, 13, 1, 0, TRUE, 0, 0, FALSE, 2, 3, 2);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (222, 32, 13, 0, 0, TRUE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (223, 176, 10, 0, 0, FALSE, 0, 0, FALSE, 3, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (224, 176, 13, 0, 0, TRUE, 0, 0, FALSE, 3, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (225, 154, 10, 0, 0, FALSE, 0, 0, FALSE, 2, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (226, 154, 13, 0, 1, TRUE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (227, 98, 10, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (228, 98, 13, 0, 0, TRUE, 0, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (229, 22, 10, 1, 0, FALSE, 0, 0, FALSE, 2, 3, 2);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (230, 22, 13, 0, 0, TRUE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (231, 133, 10, 0, 0, FALSE, 0, 0, FALSE, 1, 4, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (232, 133, 13, 1, 0, TRUE, 0, 0, FALSE, 1, 1, 2);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (233, 116, 10, 1, 0, FALSE, 0, 0, FALSE, 0, 1, 5);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (234, 116, 13, 1, 0, TRUE, 0, 0, FALSE, 0, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (235, 6, 13, 0, 0, TRUE, 5, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (236, 128, 13, 0, 0, TRUE, 0, 0, FALSE, 2, 3, 3);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (237, 159, 10, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (238, 159, 13, 1, 1, TRUE, 0, 0, FALSE, 0, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (239, 72, 11, 0, 0, FALSE, 0, 0, TRUE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (240, 31, 11, 0, 0, FALSE, 0, 0, TRUE, 3, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (241, 12, 11, 0, 0, FALSE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (242, 145, 11, 0, 0, FALSE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (243, 137, 11, 0, 0, FALSE, 0, 0, TRUE, 2, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (244, 99, 11, 0, 0, FALSE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (245, 158, 11, 0, 0, FALSE, 2, 1, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (246, 124, 11, 0, 0, FALSE, 0, 0, TRUE, 1, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (247, 44, 11, 0, 0, FALSE, 0, 0, TRUE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (248, 97, 11, 0, 0, FALSE, 0, 0, TRUE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (249, 122, 11, 0, 0, FALSE, 0, 0, TRUE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (250, 56, 12, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (251, 107, 12, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (252, 80, 12, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (253, 162, 12, 0, 0, FALSE, 0, 0, FALSE, 0, 3, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (254, 151, 12, 0, 0, FALSE, 0, 0, FALSE, 1, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (255, 148, 12, 0, 0, FALSE, 3, 1, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (256, 135, 12, 0, 0, FALSE, 0, 0, FALSE, 0, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (257, 27, 12, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (258, 28, 12, 1, 0, FALSE, 0, 0, FALSE, 2, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (259, 175, 12, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (260, 55, 13, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (261, 171, 13, 0, 0, FALSE, 0, 0, FALSE, 2, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (262, 54, 13, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 4);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (263, 146, 13, 0, 0, FALSE, 6, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (264, 112, 13, 0, 0, FALSE, 0, 0, FALSE, 4, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (265, 64, 13, 0, 0, FALSE, 0, 0, FALSE, 2, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (266, 59, 13, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (267, 24, 13, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (268, 83, 14, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (269, 106, 14, 0, 0, FALSE, 0, 0, FALSE, 3, 1, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (270, 126, 14, 0, 0, FALSE, 0, 0, FALSE, 2, 2, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (271, 136, 14, 1, 0, FALSE, 0, 0, FALSE, 0, 1, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (272, 165, 14, 0, 0, FALSE, 5, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (273, 15, 14, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (274, 127, 14, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (275, 48, 14, 0, 0, FALSE, 0, 0, FALSE, 1, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (276, 142, 14, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (277, 10, 15, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (278, 23, 15, 0, 1, FALSE, 0, 0, FALSE, 0, 3, 3);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (279, 105, 15, 0, 0, FALSE, 3, 0, FALSE, 0, 0, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (280, 157, 15, 0, 0, FALSE, 0, 0, FALSE, 2, 2, 0);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (281, 155, 15, 0, 0, FALSE, 0, 0, FALSE, 2, 0, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (282, 156, 15, 0, 0, FALSE, 0, 0, FALSE, 0, 2, 1);
INSERT INTO player_match_stats (stat_id, player_id, match_id, goals, assists, country_won, saves, penalty_saves, clean_sheet, successful_tackles, key_passes, shots_on_target) VALUES (283, 163, 15, 0, 0, FALSE, 0, 0, FALSE, 0, 1, 0);