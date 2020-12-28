-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2020 at 06:56 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webuts`
--

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `episode` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `movie_id`, `episode`, `title`) VALUES
(1, 1, 1, 'Episode 1'),
(2, 1, 2, 'Episode 2'),
(3, 1, 3, 'Episode 3'),
(4, 1, 4, 'Episode 4'),
(5, 1, 5, 'Episode 5'),
(6, 2, 1, 'Episode 1'),
(7, 2, 2, 'Episode 2'),
(8, 2, 3, 'Episode 3'),
(9, 2, 4, 'Episode 4'),
(10, 2, 5, 'Episode 5'),
(11, 3, 1, 'Episode 1'),
(12, 3, 2, 'Episode 2'),
(13, 3, 3, 'Episode 3'),
(14, 3, 4, 'Episode 4'),
(15, 3, 5, 'Episode 5'),
(16, 4, 1, 'Episode 1'),
(17, 4, 2, 'Episode 2'),
(18, 4, 3, 'Episode 3'),
(19, 4, 4, 'Episode 4'),
(20, 4, 5, 'Episode 5'),
(21, 5, 1, 'Episode 1'),
(22, 5, 2, 'Episode 2'),
(23, 5, 3, 'Episode 3'),
(24, 5, 4, 'Episode 4'),
(25, 5, 5, 'Episode 5'),
(26, 6, 1, 'Episode 1'),
(27, 6, 2, 'Episode 2'),
(28, 6, 3, 'Episode 3'),
(29, 6, 4, 'Episode 4'),
(30, 6, 5, 'Episode 5'),
(31, 7, 1, 'Episode 1'),
(32, 7, 2, 'Episode 2'),
(33, 7, 3, 'Episode 3'),
(34, 7, 4, 'Episode 4'),
(35, 7, 5, 'Episode 5'),
(36, 8, 1, 'Episode 1'),
(37, 8, 2, 'Episode 2'),
(38, 8, 3, 'Episode 3'),
(39, 8, 4, 'Episode 4'),
(40, 8, 5, 'Episode 5'),
(41, 9, 1, 'Episode 1'),
(42, 9, 2, 'Episode 2'),
(43, 9, 3, 'Episode 3'),
(44, 9, 4, 'Episode 4'),
(45, 9, 5, 'Episode 5'),
(46, 10, 1, 'Episode 1'),
(47, 10, 2, 'Episode 2'),
(48, 10, 3, 'Episode 3'),
(49, 10, 4, 'Episode 4'),
(50, 10, 5, 'Episode 5'),
(51, 11, 1, 'Episode 1'),
(52, 11, 2, 'Episode 2'),
(53, 11, 3, 'Episode 3'),
(54, 11, 4, 'Episode 4'),
(55, 11, 5, 'Episode 5'),
(56, 12, 1, 'Episode 1'),
(57, 12, 2, 'Episode 2'),
(58, 12, 3, 'Episode 3'),
(59, 12, 4, 'Episode 4'),
(60, 12, 5, 'Episode 5');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Drama'),
(2, 'Kids'),
(3, 'TV Show');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2020_11_07_152135_create_genres_table', 1),
(11, '2020_11_07_152323_create_movies_table', 1),
(12, '2020_11_07_152340_create_episodes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `genre_id`, `title`, `photo`, `description`, `rating`) VALUES
(1, 1, 'Who Are You: School 2015', 'photo/whoareyou.jpg', 'After losing her memory in an accident, a bullied high school orphan finds herself in the place of an identical-looking girl who\'s gone missing.', '81.00'),
(2, 1, 'Crash Landing On You', 'photo/cloy.jpg', 'A paragliding mishap drops a South Korean heiress in North Korea -- and into the life of an army officer, who decides he will help her hide.', '87.00'),
(3, 1, 'Oh My Ghost', 'photo/ohmyghost.jpg', 'Na Bong Sun may be a skilled sous chef, but she lacks the self-esteem to shine professionally and socially. Beyond her cooking talents, however, is an uncanny ability to communicate with ghosts. One day, her mystic senses go out of control when the seductive ghost of Shin Soon Ae possesses her. Imbued with a fiery new \"personality,\" Bong Sun starts turning heads, including that of Kang Sun Woo, the hottest chef in town and Bong Sun\'s secret crush!', '82.00'),
(4, 1, 'Secret Garden', 'photo/secretgarden.jpg', 'A wealthy man and a poor stunt girl fall in love. But things get complicated when their souls become inexplicably swapped and dark secrets surface.', '80.00'),
(5, 2, 'Digimon Adventure', 'photo/digimonadv.jpg', 'Two children receive a strange egg that hatches into their very first Digimon, leading to the night that would change their lives forever.', '80.00'),
(6, 2, 'Fate/Zero', 'photo/fatez.jpg', 'War of the Holy Grail - Pursuing the power of the \"Holy Grail\" which grants a miracle, this is a contest in which seven magi summon seven Heroic Spirits to compete for it. In that battle whose conclusion was postponed three times, now, the fourth war commenced again. Entrusting their dearest wish of victory, the magi joined the battleground called \"Fuyuki\", but amongst them, there was a man who was always alone, and could not find out the meaning behind his fights. His name was Kotomine Kirei. Not comprehending the guidance of fate, Kirei was lost, and had kept questioning. Why someone like his was given the Command Seals. However, the fate of his fights crossed Kirei\'s path with a nemesis by chance. That person is - Emiya Kiritsugu. A man who was sterner than anyone else, more merciless than anyone else, and who sought the miracle of the Holy Grail.', '81.00'),
(7, 2, 'Ping Pong the Animation', 'photo/pingpong.jpg', 'Despite having drastically different personalities, high school boys Peco and Smile have been friends since childhood. Now, they’re both talented members of a table tennis club—but what happens when these sports lovers have to go up against each other in tournaments?', '87.00'),
(8, 2, 'Hina Festival', 'photo/hina.jpg', 'One night, a strange object falls on the head of Nitta, a member of the yakuza. Inside the box is a strange young girl named Hina. She has tremendous supernatural powers, and Nitta finds himself reluctantly taking her in. Her powers can come in handy for his yakuza business, but he also runs the risk of her using them on him! Not to mention, if she doesn\'t use her powers, she will eventually go berserk and destroy everything around her. Nitta and Hina\'s strange life together is just beginning...', '82.00'),
(9, 3, 'Opera Van Java', 'photo/ovj.png', 'Opera Van Java (disingkat OVJ) adalah acara komedi yang ditayangkan di Trans7. Ide acaranya adalah pertunjukan wayang orang versi modern. Dilakonkan oleh komedian ternama seperti Parto Patrio, Denny Cagur, Mpok Alpa, Rina Nose, Anwar Sanjaya Pigano, serta Ferdians Setiadi berperang tawa bersama para bintang tamu.', '80.00'),
(10, 3, 'Indonesian Idol', 'photo/idol.jpg', 'Indonesian Idol, berjudul Special Season Indonesian Idol: A New Chapter untuk musim kesebelas, adalah suatu ajang pencarian bakat yang diadopsi dari Pop Idol dengan sponsor dari FremantleMedia yang bekerjasama dengan RCTI. Ajang ini merupakan pencarian idola di bidang tarik suara. Indonesian Idol telah menjadi acara realitas terbesar di Indonesia. Setelah kemunculan Indonesian Idol, banyak acara realitas lain yang ditayangkan. Ajang pencarian bakat ini diadakan setiap 2 tahun sekali sejak 2008 pada tahun yang bertepatan dengan Kejuaraan Eropa UEFA, Olimpiade Musim Panas, Piala Dunia FIFA dan Olimpiade Musim Dingin.', '87.00'),
(11, 3, 'Ini Talk Show', 'photo/initalk.jpg', 'Ini Talkshow adalah acara talkshow/gelar wicara yang dikemas dengan suasana santai. Membahas persoalan hangat yang ada di masyarakat dengan cara sederhana. Di acara ini juga akan memperlihatkan suasana rumah dan karakter-karakter yang ada di rumah tersebut. Di dalam acara ini, pemain-pemain juga bermain peran atau berakting sekaligus menanyakan bintang tamu dan persoalan di masyarakat. Acara ini terkenal karena ada nyanyian Teh Asoy Geboy, Teh Bohay, Teh Sundul, Teh Anggika serta Kopi Dapet Minta dalam beberapa segmen acara ini.', '83.00'),
(12, 3, 'Super Deal Indonesia', 'photo/superd.jpg', 'Super Deal adalah sebuah acara kuis Indonesia berdasarkan lisensi dari Let\'s Make a Deal asal Amerika Serikat, milik FremantleMedia yang sekarang bernama Fremantle , yang terspektakuler di Indonesia.', '78.00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episodes_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies_genre_id_foreign` (`genre_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
