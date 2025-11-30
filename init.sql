CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `food_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin_lat` double NOT NULL,
  `origin_lng` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `food` (`id`, `food_name`, `description`, `image_url`, `origin_lat`, `origin_lng`) VALUES
(1, 'Pad Thai (Thailand)', 'Pad Thai is Thailand’s signature stir-fried noodle dish mixed with tofu, shrimp, bean sprouts, and tamarind sauce.', 'https://images.unsplash.com/photo-1604908177522-4026a0b1c87c', 13.7563, 100.5018),

(2, 'Croissant (France)', 'A buttery, flaky pastry originating in France, known for its crescent shape and delicate texture.', 'https://images.unsplash.com/photo-1512058564366-18510be2db19', 48.8566, 2.3522),

(3, 'Pizza Margherita (Italy)', 'A classic Neapolitan Pizza topped with tomatoes, fresh mozzarella, basil, salt and olive oil.', 'https://images.unsplash.com/photo-1542281286-9e0a16bb7366', 40.8518, 14.2681),

(4, 'Sushi (Japan)', 'Sushi is a traditional Japanese dish made with vinegared rice, seafood, and vegetables.', 'https://images.unsplash.com/photo-1553621042-f6e147245754', 35.6762, 139.6503),

(5, 'Fish and Chips (United Kingdom)', 'Crispy battered fish served with fried potatoes, the UK’s iconic comfort food.', 'https://images.unsplash.com/photo-1604908177223-70f8fbf53234', 51.5074, -0.1278),

(6, 'Tacos (Mexico)', 'Traditional Mexican dish consisting of a folded tortilla filled with seasoned meat, vegetables, and salsa.', 'https://images.unsplash.com/photo-1601924582975-7e1e3a1f675e', 19.4326, -99.1332),

(7, 'Currywurst (Germany)', 'A popular German street food made of steamed then fried pork sausage sliced and topped with curry ketchup.', 'https://images.unsplash.com/photo-1602663634159-98ef32c29989', 52.5200, 13.4050),

(8, 'Hamburger (United States)', 'A sandwich consisting of a grilled beef patty inside a sliced bun.', 'https://images.unsplash.com/photo-1550547660-d9450f859349', 40.7128, -74.0060),

(9, 'Ramen (Japan)', 'Japanese noodle soup with flavorful broth, sliced pork, egg, and toppings.', 'https://images.unsplash.com/photo-1604908177223-e768f8b5107d', 34.6937, 135.5023),

(10, 'Kimchi (South Korea)', 'A famous Korean fermented dish made with cabbage and chili pepper.', 'https://images.unsplash.com/photo-1617196034796-07ba5e1b6f82', 37.5665, 126.9780),

(11, 'Paella (Spain)', 'Traditional Spanish rice dish with saffron, seafood, and chicken.', 'https://images.unsplash.com/photo-1600891964599-f61ba0e24092', 39.4699, -0.3763),

(12, 'Butter Chicken (India)', 'Indian curry made with tender chicken in buttery tomato sauce.', 'https://images.unsplash.com/photo-1617196034977-8a4f72d23b38', 28.6139, 77.2090);

ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
