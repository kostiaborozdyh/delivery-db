INSERT INTO `dates` VALUES
                        (1,'2022-05-21','2022-05-29','2022-06-02'),
                        (2,'2022-05-18','2022-05-18','2022-05-19'),
                        (3,'2022-05-20','2022-05-20','2022-05-22'),
                        (4,'2022-05-20','2022-05-20','2022-05-23'),
                        (5,'2022-05-19','2022-05-19','2022-05-23'),
                        (6,'2022-05-18','2022-05-18','2022-05-23'),
                        (7,'2022-05-21','2022-05-21','2022-05-24'),
                        (8,'2022-05-21','2022-05-21','2022-05-23'),
                        (9,'2022-05-21','2022-05-21','2022-05-23');

INSERT INTO `description` VALUES
                              (1,'tovar1',1,1,24),
                              (2,'tovar2',1,2,100),
                              (3,'Товар3',2,2,500),
                              (4,'Товар4',2,4,465),
                              (5,'Tovar5',3,9,460),
                              (6,'Товар6',4,4,900),
                              (7,'Товар7',7,5,763),
                              (8,'Товар8',4,4,603),
                              (9,'Tovar9',3,4,697);
INSERT INTO `road` VALUES
                       (1,'Київ, Україна','Луцьк, Волинська область','address'),
                       (2,'Черкаси, Україна','Канів, Україна','Адреса2'),
                       (3,'Кривий Ріг, Україна','Харків, Україна','Адреса3'),
                       (4,'Чернігів, Україна','Одеса, Україна','Адреса4'),
                       (5,'Дніпро, Україна','Вінниця, Україна','address5'),
                       (6,'Львів, Україна','Миколаїв, Україна','Адреса6'),
                       (7,'Київ, Україна','Кривий Ріг, Україна','Адреса7'),
                       (8,'Черкаси, Україна','Донецьк, Україна','Адреса8'),
                       (9,'Черкаси, Україна','Варшава, Польща','Адреса9');
INSERT INTO `user` VALUES
                       (1,'user','$2a$10$5P1oORCyIjdbpd4wyoGB6uhMzDU4XmatqQVM5mWBypBr.7OGqw5DW','Костянтин','Бороздих','+380938988645','kostiaborozdyh@gmail.com',1738,'USER','yes','no'),
                       (2,'user1','$2a$12$pqSsaAKJ.lGCQAKAR2a1fePbLaKvZg2sXdL.SBECGwif8K2oH30PC','Maks','Prokopenko','+380938988645','kostiaborozdyh1@gmail.com',700,'USER','no','no'),
                       (4,'user3','$2a$12$pqSsaAKJ.lGCQAKAR2a1fePbLaKvZg2sXdL.SBECGwif8K2oH30PC','Oleh','Marin','+380938988645','kostiaborozdyh3@gmail.com',100,'USER','yes','no'),
                       (5,'manager','$2a$12$cTsuUO.GrYZvB9/Ing0T8OGtF6mJ3TmTh83dPf5D9gP9JXxse7zZS','Менеджер','Менеджер','+380777777778','manager@gmail.com',2000,'MANAGER','no','no'),
                       (21,'admin','$2a$12$/ZVyEKoEpm0ZSGwc5WiuguNzxLQ.BO/SVezlCNYSS2iIk4b5UoS5S','ADMIN','ADMIN','+380123456789','admin.delivery.holder@gmail.com',NULL,'ADMIN','no','no'),
                       (31,'employee','$2a$12$hJI9rgBcKy7Fris.a/.7tuYlomztIW73bJfCB5gSYZHrx1YujSvZi','employee','employee','+380123212343','employee@gmail.com',NULL,'EMPLOYEE','no','no'),
                       (32,'user12','$2a$12$/RE.mOh2EAqtut5T/QGR3OUPaaysD3HhT9od3nLz3sjlTon46.uOq','userPuser','userPuser','+380123232343','kostiabo@gmail.com',NULL,'USER','no','no'),
                       (34,'user23','$2a$10$OCSxlE3V8x7sF4b9SDzP9ug2GwBc/kb5/vH6fdSphQ0tdvpqU3sU6','user','user','+380938988645','kostiabrozdyh@gmail.com',0,'USER','yes','no'),
                       (35,'adminchik','$2a$10$btJTxt4OQITVS5X9cpVPeOS8JCZIFai64p/X/r/eqF65Yge6DXr1i','managerThree','managerThree','+380938988645','adm@gmail.com',0,'USER','no','no'),
                       (36,'userTest','$2a$10$zGrAGGE.0FvaGoUS4EA2xO5uNI8RD5E2g5pxhdgseBlRumwbgAfty','Бороздих','Миколайович','+380938988645','koaborozdyh@gmail.com',0,'USER','no','no');
INSERT INTO `orders` VALUES
                        (1,1,1,1,1,'PAID','RECEIVED'),
                        (2,2,2,2,1,'PAID','RECEIVED'),
                        (3,3,3,3,1,'PAID','RECEIVED'),
                        (4,4,4,4,1,'PAID','RECEIVED'),
                        (5,5,5,5,1,'PAID','RECEIVED'),
                        (6,6,6,6,1,'PAID','IN_THE_POST_OFFICE'),
                        (7,7,7,7,1,'PAID','RECEIVED'),
                        (8,8,8,8,1,'PAID','IN_THE_POST_OFFICE'),
                        (9,9,9,9,1,'PAID','RECEIVED');
INSERT INTO `review` VALUES
                          (1,1,'Все було супер, доставити дуже швидко!','2022-05-25'),
                          (2,1,'Ціна та якість на вищому рівні!','2022-05-26'),
                          (3,1,'Компанія бомба','2022-05-27'),
                          (4,2,'Не дуже сподобалось обслуговування','2022-05-28'),
                          (5,1,'Впринципі по ціні і якості ок','2022-05-29'),
                          (6,1,'ок, сойдьот','2022-05-31'),
                          (7,1,'перший відгук на спрінгу','2022-06-10'),
                          (8,1,'Другий відгук на спрінгу','2022-06-10'),
                          (9,1,'топ доставка на спрінгу','2022-06-28');




