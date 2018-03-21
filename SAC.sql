-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2018 at 01:08 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SAC`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `ingredients` text,
  `directions` text,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `author`, `ingredients`, `directions`, `create_date`) VALUES
(1, 'Sweet and Sour Pork', 'admin', 'ribs:250g, egg:1, flour:1bigspoon, cornflour:1teaspoon, salt, sugar, green onion, pineapple, tomato sauce:2tablespoon, lemon, soy sauce, onion, green pepper', 'Place cubed pork in a medium bowl, and season with 1 teaspoon salt, 1/4 teaspoon sugar, and 1 teaspoon soy sauce. Mix in the egg white and green onions. Cover, and place in the refrigerator at least 1 hour.\r\nHeat 1 quart oil to 365 degrees F (185 degrees C) in a large, heavy saucepan or deep fryer.\r\nCoat the pork with 1/2 cup cornstarch, and fry in the heated oil about 10 minutes, until evenly browned. Drain on paper towels.\r\nHeat 1 tablespoon oil in a wok over medium heat. Stir in the celery, green bell pepper, and onion, and cook until tender. Season with salt and sugar. Remove from heat, and set aside\r\nIn a large saucepan, mix 1 cup water, 1/4 teaspoon salt, 3/4 cup sugar, apple cider vinegar, ketchup, and 1/2 teaspoon soy sauce. Bring to a boil, and stir in the cooked pork, celery mixture, and the pineapple chunks with juice. Return to boil, and mix in 2 tablespoons cornstarch and 1/4 cup water to thicken. Cook until well blended.', '2018-03-10 21:42:31'),
(2, 'Twice Cooked Pork', 'admin ', '300g pork belly, 1 green onion, 4-5 Sichuan peppercorn (optional),1 small bunch garlic sprout (3-4 ones), end removed and cut into piece, 2 long red chili peppers, 1 teaspoon cooking oil, 1 inch scallion stalk, cut into small pieces, ½ thumb ginger, sliced, 2 garlic cloves, sliced, 1 tablespoon broad bean paste: doubanjiang, 2 teaspoon dou-chi: fermented black beans, 1 to 2 teaspoons light soy sauce', 'Place pork belly in a large pot with enough cold water to cover. Add 1 green onion and 4-5 Sichuan peppercorn seeds. Bring to boil and simmer for 30 minutes. If you are cooking a larger amount, cut the pork belly into sections around 15 cm long (keeping note 1) Transfer out and set aside to cool down. Smash the head of garlic sprouts and then cut the head part and leaves into 1.5 inch sections. Remove the seeds of red pepper and cut into pieces too. Heat up around 1 teaspoon of oil in wok (not too much, otherwise the dish might be over greasy), fry the pork belly for around 1-2 minutes (Note 2)until they begin to loose oil and slightly brown.\r\nMove the pork slices out and leave oil only, fry ginger, garlic and scallion until aroma. Place doubanjiang and dou-chi, fry for another half minute. Return pork slices and give a big stir fry to combine well.\r\nAdd red pepper, fry for another half minutes. Lastly, place garlic spouts and light soy sauce. Combine well and transfer out immediately.\r\n', '2018-03-14 03:36:05'),
(3, 'Pork with Green Pepper', 'admin', '\r\n    a quarter pound pork sirloin, cut into strings\r\n    3-4 long green chili pepper, sliced\r\n    2 tablespoons vegetable oil for cooking\r\n    For marinating the pork:\r\n    1 tablespoon vegetable oil\r\n    1 tablespoon cooking wine\r\n    ¼ teaspoon potato starch\r\n    ¼ teaspoon salt\r\n    ¼ teaspoon black pepper\r\n    For seasoning:\r\n    1 tablespoon oyster sauce\r\n    1 tablespoon water\r\n    ½ tablespoon dark soy sauce\r\n    1 teaspoon vinegar\r\n    ¼ teaspoon sugar\r\n', '\r\n    Whisk oil, cooking wine, potato starch, salt and pepper in a bowl and marinate the pork for about 10 minutes.\r\n    Mix oyster sauce, dark soy sauce, water, vinegar and sugar in a bowl to serve as the seasoning later.\r\n    Heat oil in a pan over medium high heat, stir in the pork and cook for about 2 minutes until changes color and remove from the pan.\r\n    Turn to high heat, and add the green pepper into the pan, stir fry for about 2 minutes until soft.\r\n    Turn the heat back down to medium-high, add the pork back into the pan and pour in the sauce, stir for another 1-2 minutes, remove from pan and serve.\r\n', '2018-03-14 04:25:19'),
(4, 'Szechwan Chilli Chicken', 'namnam0529', 'Spring Onions, Dry Red Chillies (deseeded), Ginger, Brown Pepper Corn, Green Pepper Corn, Chicken (with bone), Ajinomoto (optional), Salt , White Pepper, Oil , Black Vinegar, Chilli oil', '1.Flash fry the chicken with ginger till there colour changes to golden.\r\n2.Now, drain the oil and keep this aside.\r\n3.Now, add garlic, spring onions green pepper corns and the brown peppercorn.\r\n4.Stir for 5 minutes and then add the dry chillies, white pepper powder, ajino moto, salt and chilli oil.\r\n5.Stir again for 5-10 minutes and add the black vinegar.\r\n6.Stir fry for 10 minutes and garnish with green peppercorns.\r\n7.Szechwan chilli chicken is ready to be served', '2018-03-16 07:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '$5$rounds=535000$kVQeEV7O2t/hR11h$YUIbyHorplzsknSwxFBIxJopcEfFYZhoZRMgFTlHNX/', '2018-03-10 04:20:27'),
(2, 'arthur', 'arthur10076@gmail.com', 'arthur10076', '$5$rounds=535000$9k1wEGQZ67vq3YJQ$injqXqLhhRYlH/SOkoE8LMrr5eb/Fkvy0q89GuSzlE3', '2018-03-13 05:06:32'),
(3, 'hin', 'hin2345@hot.com', 'wong1234', '$5$rounds=535000$gfjSxnJsq3qDSYak$uIFnJ11dKX.CfHnngmb9ABwpgHNcX7KtWFoOG60.we5', '2018-03-13 06:40:02'),
(4, 'j', 'jjjjjj', 'jjjj', '$5$rounds=535000$F.TrAXKYGH6tFqcN$SHha2kS0vsUKe0gIps1B4svLBZF23uyHalQNXxlYyM8', '2018-03-14 02:32:23'),
(5, 'nam', 'namnam0529@gmail.com', 'namnam0529', '$5$rounds=535000$ebHw.oo1z2T0hum1$cvTR6adTSxKFZTE9AGT4w8n1FstNyjLDuPHGyxi6WB0', '2018-03-16 07:32:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
