CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_type` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `other_instruction` varchar(100) DEFAULT NULL,
  `orderStatus` varchar(100) DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `orderAt` timestamp NULL DEFAULT NULL,
  
  `modifiedAt` timestamp NULL DEFAULT NULL,
  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;