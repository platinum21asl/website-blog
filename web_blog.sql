-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 02:19 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(2, 'Web Design', 'web-design', '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(3, 'Personal', 'personal', '2022-06-26 11:18:25', '2022-06-26 11:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_21_072519_create_posts_table', 1),
(6, '2022_06_21_092555_create_categories_table', 1),
(7, '2022_06_27_043220_add_id_admin_to_users_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Vel ea.', 'iste-porro-placeat-aut-nam-consequatur-est', NULL, 'Omnis beatae voluptas quia eaque et qui. Ab perspiciatis voluptatem nesciunt incidunt. Esse eos voluptatem ut et ab rerum aperiam.', 'Numquam dignissimos ut cum sequi repellat tempore ad. Quo illum et vero. Quae animi voluptatem voluptates itaque. Saepe qui consequatur itaque. Ut hic accusantium ea. Eaque ipsum fuga sint eos exercitationem odio odit. Quia ipsa rerum ex omnis in. Excepturi vel ab consequatur quam vitae voluptatem et. Explicabo non et labore nam sit. Et quae odio ipsa aut. Sunt aut eos esse non vero earum dolore doloremque.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(2, 3, 3, 'Quia consequatur voluptates ut.', 'aperiam-delectus-illo-rem', NULL, 'Amet corrupti necessitatibus ullam ut. Quia harum molestias placeat molestias quod. Inventore veritatis est soluta rerum amet illo.', 'Et dolor veritatis ab consequatur exercitationem. Omnis et autem debitis aliquam. Magnam est eligendi culpa dolorem voluptatem eligendi ipsam fuga. Enim provident distinctio doloremque veritatis dolores ipsa facilis.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(3, 1, 2, 'Beatae vero aperiam.', 'necessitatibus-reprehenderit-blanditiis-sint-dolor-id-animi-dignissimos', NULL, 'Incidunt delectus et esse omnis ex. Vel ut cumque nobis maiores recusandae deserunt doloremque et. Accusantium ullam omnis amet odio delectus veritatis enim.', 'Earum molestiae sit qui et aliquid repudiandae ut. Qui tempora magnam dignissimos. Voluptatem deleniti non voluptate beatae enim minus. Illum sit voluptatem numquam rerum. Ullam esse rerum molestias voluptate itaque debitis. Repudiandae ullam explicabo rem quas at. Et quis tempore aut corporis optio porro. Nisi eveniet quidem repellat et tempora exercitationem est possimus. Rem quo molestias ex soluta. Minus cum totam cupiditate nam at sed. Aliquam dolores fuga aut consequuntur recusandae quia. Sunt reiciendis qui soluta sed voluptate omnis nobis. Veritatis ullam sit incidunt nobis adipisci eum reiciendis.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(4, 2, 3, 'Dolorem architecto autem vitae.', 'suscipit-inventore-et-accusantium', NULL, 'Rem vero quisquam et accusantium. Fugit aliquid officia sunt minima illum sed. Provident est deleniti provident sed voluptas enim.', 'Magnam et cum repellat natus cum dicta est. Error aut iure reprehenderit itaque. Vel quas qui aut voluptatem et possimus. Et non officiis tenetur ratione. Dignissimos omnis aperiam dolor aspernatur molestiae repudiandae sed. Ratione occaecati labore nemo eum.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(5, 3, 2, 'Quisquam ut eum modi.', 'facere-tempora-incidunt-occaecati-ducimus', NULL, 'Pariatur assumenda quo accusamus asperiores. Sed temporibus quis praesentium. Explicabo aliquam iure nisi nihil et et officia iure.', 'Asperiores est officia error odit cupiditate dicta. Harum praesentium sunt sed qui quasi ullam temporibus. Et illum ut qui fugit qui molestiae. Quibusdam et modi culpa ab ut voluptas est. Doloremque iusto optio in veniam. Porro sint aut et aut quisquam alias voluptates. Perferendis et a ea iure quaerat.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(6, 1, 2, 'Animi ducimus inventore possimus.', 'maxime-molestiae-ut-provident-odio-aliquam-provident', NULL, 'Eaque voluptas ut qui tenetur. Qui et error pariatur sit officiis voluptate. Placeat sint eos est in quia nemo itaque. Eius ut eos eius consequatur.', 'Vitae omnis impedit quidem officiis non. Consequatur odit quis odit quibusdam ut minima explicabo. Laudantium quis et qui consequatur doloribus. Labore provident sint illo odit. Itaque modi voluptatibus culpa ea. Doloremque non consequatur rerum totam.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(7, 1, 3, 'Odio esse est est laborum et autem deserunt.', 'dolorem-sit-in-ut', NULL, 'Omnis quia ex repellat et doloribus impedit. Dolor quam qui delectus sit vel aut. Nobis aut quas ut ut quo.', 'Et nostrum consequatur enim. Asperiores dolore dolor sint dolorem a. Corrupti fugiat non distinctio praesentium. Esse eaque atque inventore consequatur blanditiis dignissimos. Voluptatibus ut rem perspiciatis voluptatem facilis omnis reprehenderit. Maiores autem tenetur amet quas asperiores officiis qui. Dolorem ab at atque voluptates quasi eius eius.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(8, 2, 3, 'Ducimus modi voluptatem voluptate repellendus vel consequatur veritatis ut.', 'quidem-velit-quidem-molestiae-quis', NULL, 'Voluptas numquam id excepturi vero quae excepturi. Labore tempore delectus qui sit ea quia quidem. Et rem fugit aut eos. Dolore dignissimos eos iusto ratione saepe.', 'Sequi voluptas et autem cumque blanditiis et in. Et qui ad tenetur nemo ut dolore. Necessitatibus ut dolor soluta nobis. Et culpa architecto sapiente quidem. Est dolor mollitia est impedit ipsam. Sapiente itaque architecto nemo voluptatem adipisci ipsa quod. Eum molestias repellat modi dolor. Enim optio animi dicta quia.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(9, 3, 2, 'Est veritatis ut omnis est aut.', 'vel-minima-sed-voluptas-dolorum', NULL, 'Accusantium rerum tempora quisquam repudiandae. Cupiditate cupiditate quos quaerat eveniet voluptatibus voluptatum est. Nobis architecto et molestias quasi quas ipsa ab. Et consequatur provident vel voluptatem.', 'Rem minus ipsa tempora incidunt. Aliquid eum sit id dolore est. Quia labore iste nisi aliquid culpa voluptatem ad. Et voluptatum dolor in rerum veritatis. Maxime aut assumenda vel est ipsa commodi adipisci enim. Exercitationem sit perspiciatis optio consequatur magni. Veritatis atque excepturi est doloremque excepturi molestiae maxime voluptatem. Aliquid unde aspernatur officiis culpa occaecati est perspiciatis. Vel earum recusandae quam velit nostrum tempora.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(10, 3, 3, 'Tempore numquam fugiat tempore ad dolor.', 'repellat-est-ut-qui-corrupti-expedita-necessitatibus-accusamus', NULL, 'Similique eum itaque ea numquam perspiciatis. Quia accusamus reiciendis ullam assumenda molestias commodi. Explicabo animi aperiam ipsam et quas officiis at distinctio. Sint necessitatibus libero unde libero nihil cupiditate.', 'Qui exercitationem praesentium blanditiis ducimus itaque. Ipsum adipisci odio sint adipisci reiciendis nisi libero mollitia. Quia architecto sint minus ab non dolorum. At commodi nihil debitis est blanditiis autem. Consequuntur blanditiis maxime et est officia et et iure. Nihil occaecati sit tempore laudantium explicabo possimus tenetur. Quia vel molestiae rem est eum. Provident repudiandae rerum quis cumque accusantium libero dolorum. Provident nam animi quas. Accusamus occaecati quibusdam necessitatibus veniam rerum occaecati totam. Consequuntur alias officia facilis.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(11, 1, 2, 'Porro sed.', 'sit-accusamus-ratione-quasi-rem-sit-quo-ullam-aliquam', NULL, 'Dicta odit sunt tenetur dolorem at ab dolores. Voluptatem ducimus quis unde odit et atque. Culpa dolorem minima dolorem necessitatibus in. Mollitia voluptatem ex distinctio dolores. Inventore nihil quis soluta aperiam id ut earum.', 'Blanditiis explicabo voluptas aspernatur ratione. Occaecati quam quaerat molestiae saepe amet fugiat. Magnam ipsam ipsa est at et deserunt. Placeat ut impedit a nesciunt quod reiciendis ut. Qui aliquam vitae ullam earum exercitationem non dolor velit. Dolorem consequatur et quos saepe. Totam ratione illo et autem tenetur. Veniam non qui quae ex nihil vel illum. Rem et excepturi magni esse. Et natus at esse. Dicta velit aut quo nostrum doloremque provident. Sunt corrupti voluptatum porro dicta.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(12, 3, 1, 'Et quae ut deserunt autem.', 'similique-officiis-reprehenderit-enim-quia', NULL, 'Fugit exercitationem aut natus dolore esse sequi. Quas quisquam doloremque facere omnis. Autem voluptatum rerum esse praesentium consequatur consequatur occaecati similique. In rerum debitis delectus corporis veniam.', 'Fuga eligendi ut quos adipisci est consequuntur. Provident sequi ut reprehenderit officiis provident deserunt. Soluta occaecati qui tenetur tempore consectetur nemo deserunt. Voluptatem maxime totam natus praesentium voluptatem vitae nulla. Eum deserunt facere id natus est voluptas et. Molestiae natus et voluptas atque ad repellat.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(13, 2, 1, 'Qui asperiores qui.', 'ab-officiis-earum-illo', NULL, 'Harum impedit dolore hic aperiam perspiciatis numquam fugit. Ea est similique voluptas aut quis porro tempora doloremque. Omnis et cupiditate necessitatibus eius ducimus vero nisi. Quaerat dignissimos necessitatibus et.', 'Quas eos quis alias accusamus debitis. Deleniti qui fugit est recusandae rerum magni hic. Alias dolores alias assumenda. Ipsa recusandae ipsam et numquam ducimus. A est repellat aut molestiae. Aut totam qui nostrum quo at molestiae. Temporibus id nihil cupiditate culpa. Fuga in et nesciunt qui ducimus dolores. Qui doloremque error rerum nostrum aut. Sit dolores sapiente ipsam harum velit esse. Aut ut voluptas aut dolorum necessitatibus. Possimus illo dolorum accusamus doloremque.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(14, 2, 1, 'Sed fugiat omnis dolor repellendus aut.', 'labore-qui-est-et-sunt-qui', NULL, 'In ut aliquid qui ea magni consequuntur eaque ad. Qui quis consequuntur magnam nostrum earum veritatis nam. Vitae vero modi adipisci dolorem dignissimos.', 'Aut dolores ratione numquam molestiae dolorem esse asperiores eum. Dolor voluptatem est nihil veniam odio. Ipsam natus provident quia quia dolorem aut earum iure. Non architecto et doloremque amet dolor. Quasi ullam fugit qui enim beatae autem ut.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(15, 1, 1, 'Ducimus et non.', 'fuga-eius-corrupti-impedit-rerum-culpa-eos', NULL, 'Doloribus exercitationem tenetur deserunt adipisci enim. Vitae eum fugiat dolor. Ad inventore velit a eos ut quis a. Modi quia accusamus ratione in voluptas quibusdam asperiores. Molestiae sit eligendi est qui reprehenderit impedit minima id.', 'Eius rerum fuga quaerat quis. Deserunt eaque suscipit et possimus eos dolor. Beatae commodi deserunt dolores quia voluptates. Alias at nemo quo ipsa similique animi pariatur. Quisquam eaque sequi in recusandae. Et voluptatem modi aperiam culpa magnam. Ducimus dolor nisi quaerat atque minima sed harum. Ullam ipsam ut molestiae nostrum sapiente nihil ratione. Deleniti recusandae corrupti libero ducimus autem et ut ratione. Vel et et eligendi maiores accusamus illum repellat. Ad soluta quos quia dicta enim quibusdam. Quae autem accusantium qui nemo.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(16, 2, 2, 'Natus et ut.', 'rem-minima-nesciunt-in-modi-eaque', NULL, 'Dolorem harum ut impedit dolor. Vel repudiandae et aut ratione et labore ut. Et saepe commodi ducimus modi fuga est.', 'Dicta eius dolorem nihil ad beatae. Perspiciatis consectetur aut voluptatum id. Autem eos omnis qui impedit. Veniam soluta enim et rerum fugit vero. Est magni dignissimos qui. Aliquam tempore excepturi suscipit beatae necessitatibus eos. Facilis fugiat qui eos. Quis iure reiciendis perferendis quia. Neque delectus non id architecto sequi exercitationem perspiciatis id.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(17, 1, 3, 'Sit iure natus ex dignissimos aut.', 'libero-fuga-similique-odio-qui-omnis', NULL, 'Mollitia perspiciatis animi laborum. Nihil ducimus cumque laudantium nobis mollitia qui iusto. Et hic beatae et natus fugit quisquam.', 'Architecto sequi laborum autem voluptas aut rerum sit. Amet voluptatem et quae sunt quo. Ipsum rem quas voluptatibus quaerat dolor qui asperiores quibusdam. Numquam minima sunt sed consequatur et dolores distinctio. Est rerum nam deleniti aut. Illo velit ducimus doloribus quisquam aperiam. Et natus in consequatur cupiditate vel occaecati cumque in. Aut aut quia minima corrupti aliquid. Saepe iste impedit dolorum omnis aut in labore. Unde expedita odio et asperiores consectetur placeat et recusandae. Qui ipsa a est repudiandae porro rerum. Suscipit commodi est soluta eum reiciendis. Nemo praesentium laudantium accusantium omnis voluptas. In quasi et eaque voluptate.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(19, 1, 2, 'Autem placeat.', 'et-quasi-repudiandae-voluptatem-sit-tempora-ipsa', NULL, 'Fuga nam et voluptatem repellat suscipit soluta. Aut officiis itaque dolor autem itaque. Dolorem vero voluptate ea enim accusamus iure aut. Vitae quisquam minus soluta autem.', 'Similique minima laboriosam omnis sunt libero consequuntur id. Est ab et molestiae accusamus qui vel debitis. Quam aut veritatis autem molestias. Veritatis saepe assumenda harum nihil repudiandae et omnis. Dignissimos praesentium earum et tenetur magnam. Architecto iste at totam. Et qui ea inventore nesciunt dignissimos atque eos. Nihil veniam voluptatem in quia dolores. Exercitationem eos sit a et harum est quibusdam illum. Alias magnam suscipit voluptate iusto aut. Et quo quaerat hic et magnam voluptatem. Animi ab sunt sed harum et dolorum et.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25'),
(20, 3, 2, 'At consequuntur rerum.', 'ipsum-aut-molestiae-sequi-porro-repellendus', NULL, 'Vel qui facilis quia. Veniam voluptates libero tenetur nesciunt. Aperiam officia ipsa sit repudiandae. Eaque voluptas distinctio dolorum consequatur. Voluptatem impedit ipsam itaque voluptas minima beatae in.', 'Porro esse qui deleniti suscipit molestiae iste non harum. Et molestias dolor illum eaque dolores architecto quasi. Cupiditate dolores rem commodi sint eveniet necessitatibus. Modi ad qui et veritatis. Non odit repellat aut repellat sequi voluptatum consequatur. Facere cum similique quasi est fugit. Voluptas voluptatem consectetur similique et. Fugit atque voluptatem et aperiam dolorem quia aut. Molestiae voluptas distinctio et iure nisi.', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Clayman D', 'clayman', 'clayman21@gmail.com', NULL, '$2y$10$d36KkGd8b4jV7UhuSt45s.K9lbwEfksS5rQ5OdZpgiHD1z/H2z7FC', NULL, '2022-06-26 11:18:25', '2022-06-26 11:18:25', 1),
(2, 'Fitria Gilda Utami', 'rahmi00', 'uda99@example.net', '2022-06-26 11:18:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zQ7ZOCxpp8', '2022-06-26 11:18:25', '2022-06-26 11:18:25', 0),
(3, 'Irnanto Suwarno', 'puput98', 'gunawan.tantri@example.com', '2022-06-26 11:18:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gpUXTo3yeR', '2022-06-26 11:18:25', '2022-06-26 11:18:25', 0),
(4, 'Akarsana Pangestu', 'nadine.purnawati', 'asiregar@example.net', '2022-06-26 11:18:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xv14Vs2SyS9PITarTV8lqoLklU4vDEZxGFs56KPxCslPv3DSSV0Ok2Q2DZor', '2022-06-26 11:18:25', '2022-06-26 11:18:25', 0),
(5, 'Daniel Renato Marlen', 'asisten', '191710096@students.uajy.ac.id', NULL, '$2y$10$3pyr3XGb.8mEgZKfdRIsh.cWb6ZCElpN7E9a8oJ28NJLwACboqaAG', NULL, '2022-06-26 21:12:01', '2022-06-26 21:12:01', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
