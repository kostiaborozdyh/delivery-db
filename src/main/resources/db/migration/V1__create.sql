CREATE TABLE `dates` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `date_create` date NOT NULL,
                         `date_of_sending` date DEFAULT NULL,
                         `date_of_arrival` date NOT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `id_UNIQUE` (`id`)
);
CREATE TABLE `description` (
                               `id` int NOT NULL AUTO_INCREMENT,
                               `description` varchar(255) NOT NULL,
                               `weight` double NOT NULL,
                               `volume` double NOT NULL,
                               `price` double NOT NULL,
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `id_UNIQUE` (`id`)
);
CREATE TABLE `road` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `city_from` varchar(45) NOT NULL,
                        `city_to` varchar(45) NOT NULL,
                        `address` varchar(100) NOT NULL,
                        PRIMARY KEY (`id`),
                        UNIQUE KEY `id_UNIQUE` (`id`)
);
CREATE TABLE `user` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `login` varchar(45) NOT NULL,
                        `password` varchar(255) NOT NULL,
                        `first_name` varchar(45) NOT NULL,
                        `last_name` varchar(45) NOT NULL,
                        `phone_number` varchar(45) DEFAULT NULL,
                        `email` varchar(45) NOT NULL,
                        `money` int DEFAULT NULL,
                        `role` varchar(45) NOT NULL,
                        `notify` varchar(45) NOT NULL,
                        `ban` varchar(45) NOT NULL,
                        PRIMARY KEY (`id`),
                        UNIQUE KEY `login_UNIQUE` (`login`),
                        UNIQUE KEY `email_UNIQUE` (`email`)
);
CREATE TABLE `review` (
                           `id` int NOT NULL AUTO_INCREMENT,
                           `user_id` int NOT NULL,
                           `response` varchar(45) NOT NULL,
                           `date` date NOT NULL,
                           PRIMARY KEY (`id`),
                           KEY `user_id` (`user_id`),
                           CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
);
CREATE TABLE `orders` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `description_id` int NOT NULL,
                         `road_id` int NOT NULL,
                         `dates_id` int NOT NULL,
                         `user_id` int NOT NULL,
                         `payment_status` varchar(45) NOT NULL,
                         `location_status` varchar(45) NOT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `id_UNIQUE` (`id`),
                         KEY `description_id` (`description_id`),
                         KEY `road_id` (`road_id`),
                         KEY `dates_id` (`dates_id`),
                         KEY `user_id` (`user_id`),
                         CONSTRAINT `order_ibfk_1` FOREIGN KEY (`description_id`) REFERENCES `description` (`id`),
                         CONSTRAINT `order_ibfk_2` FOREIGN KEY (`road_id`) REFERENCES `road` (`id`),
                         CONSTRAINT `order_ibfk_3` FOREIGN KEY (`dates_id`) REFERENCES `dates` (`id`),
                         CONSTRAINT `order_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
);


