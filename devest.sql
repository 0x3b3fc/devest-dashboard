-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 02:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devest`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `about_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condation_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_share_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_review_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `heeders`
--

CREATE TABLE `heeders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heeders`
--

INSERT INTO `heeders` (`id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'شركة تطوير برمجيات وحلول تقنية مخصصة', 'ديفيست هي شركة تجمع ريادي الأعمال المبدعين والذين أسسوا وساعدوا في بناء مشاريع رائدة في الشرق الأوسط.. واثقون بأننا نصنع المستقبل من خلال تمكين روّاد الأعمال لبناء شركات رائدة في هذه المنطقة من العالم.', '2020-12-12 20:37:19', '2020-12-12 23:06:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `in_fo_about_companies`
--

CREATE TABLE `in_fo_about_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `who_are_we_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_who_are_we` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_who_are_we` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_we_work_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_how_we_work` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_how_we_work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_fo_about_companies`
--

INSERT INTO `in_fo_about_companies` (`id`, `sub_title`, `title`, `who_are_we_title`, `description_who_are_we`, `photo_who_are_we`, `how_we_work_title`, `description_how_we_work`, `photo_how_we_work`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'معلومات وتفاصيل عن الشركة وآلية عملها وأهدافها', 'معلومات عن الشركة', 'من نحن؟', 'ديفيست هي شركة استشارات إدارية تقوم بتمكين العملاء لدخول لعبة مستقبلهم الرقمي، من خلال خبرتنا وفريق عملنا المتكامل، نحن نجمع بين الخبرات المحلية والعالمية لنضمن وجودنا دائمًا بجانبك وأنت تقوم بعمل تحويل شامل لأعمالك. إذ نحن المؤسسة التي ستجعل استثمارات مشروعك في أمان هنا ستجد الطموح يلتقي بالابتكار، وستجد المستحيل يتحول إلى حقيقة، والغريب يتحول إلى شيء مألوف يلمس الواقع الخاص بك نحن من سنحول فكرتك إلى حقيقة ناجحة وملموسة.', 'about/HpMCRXUsbZFpWL5DAvnIzzaIExlXDQiNqSZr6INl.jpg', 'ما هو نهج ديفست في العمل؟', 'نحن نساعدك في تحقيق حلمك أيًا كان حجمه خطوة بخطوة من أول الفكرة حتى التنفيذ. مع ديفيست قم بإحضار كل ما سيغير قواعد اللعبة الخاصة بك من وجهة نظرك لنا، وخبرائنا في الاستراتيجيات والتكنولوجيا والتسويق سيقومون بظبط كل شيء وتحويله إلى ما تحلم به تمامًا. فريق ديفيست يعملون معًا لإعداد مؤسستك لتحقيق النجاح، سنحقق أهداف دخولك اللعبة معنا من خلال الاستفادة من معرفتنا العميقة بالمجال وخبرتنا به، ومن خلال فريق التكنولوجيا القوي في ديفيست.', 'about/hnwPKdmJ5P4qC0GYJ5K0ju5zKuTvjkMjLv1yUW5L.jpg', '2020-12-12 20:44:29', '2020-12-12 20:44:29', NULL);

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
(4, '2020_11_11_101723_create_app_settings_table', 1),
(5, '2020_12_12_172556_create_heeders_table', 1),
(6, '2020_12_12_173705_create_in_fo_about_companies_table', 1),
(7, '2020_12_12_175059_create_our_services_table', 1),
(8, '2020_12_12_200053_create_our_projects_table', 2),
(9, '2020_12_12_202125_create_prants_table', 3),
(10, '2020_12_12_203827_create_orders_table', 4),
(11, '2020_12_12_205038_create_settings_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `subject`, `phone`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Isaiah Jordan', 'himeguva@mailinator.com', 'Aut voluptas et sint', '38', 'Velit omnis commodi', '2020-12-12 19:17:41', '2020-12-12 19:17:41', NULL),
(2, 'Basia Lowery', 'zazuravah@mailinator.com', 'Vitae vel quia esse', '5555', 'Minima porro quidem', '2020-12-12 19:17:52', '2020-12-12 19:18:08', NULL),
(3, 'Caesar Noel', 'labygepox@mailinator.com', 'Enim ut tenetur aut consequatur earum ullam veniam placeat quia eiusmod architecto', '6599999999999', 'Sunt sed consequatur et dolor deserunt ipsum veritatis rem', '2020-12-12 22:21:13', '2020-12-12 22:21:13', NULL),
(4, 'Nomlanga Schmidt', 'nopifim@mailinator.com', 'Dolor mollit amet corporis excepteur', '01010101010', 'Ipsa dolores et optio esse qui dolor ea officia odit eius sint aut', '2020-12-12 23:05:41', '2020-12-12 23:05:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `our_projects`
--

CREATE TABLE `our_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `our_services`
--

CREATE TABLE `our_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `section_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_hidden` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_services`
--

INSERT INTO `our_services` (`id`, `section_icon`, `title`, `description`, `description_hidden`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '<i class=\"fas fa-rocket fa-3x\"></i>', 'التطوير البرمجي', 'نقدم لك المنتجات البرمجية بالطريقة التي تريدها, وننشئ لك منتجات رقمية تساعدك في اجتياز كل المشكلات التي ستواجهك في اللعبة الرقمية.', 'نصمم لك المشروع الرقمي الذي يناسب شركتك كما نساعدك على إيجاد حلول برمجية مناسبة لإنقاذ مشروعك،', '2020-12-12 21:06:50', '2020-12-12 21:12:21', '2020-12-12 21:12:21'),
(2, 'fas fa-rocket fa-3x', 'خدمات تطوير تطبيقات الأعمال', 'نقوم بإنشاء تطبيقات للشركات بالتعاون مع مالكيها ونهدف إلى تحقيق غاية وهدف عملائنا بشكل كامل، احتياجاتك، ومتطلباتك ونواياك هي ما يهمنا في عملية تطوير تطبيقات الأعمال.', NULL, '2020-12-12 21:09:57', '2020-12-12 21:36:46', NULL),
(3, 'fas fa-tablet-alt fa-3x', 'تطوير تطبيقات الجوال', 'نقوم ببرمجة وتطوير جميع مشاريع الأجهزة الجوالة، بمختلف المقاييس والتعقيد بدءًا من تطبيقات الشركات إلى تطبيقات الجوال المستقلة.', 'سنساعدك للوصول إلى جمهور الجوال المناسب لك من الفكرة الأولية إلى تصميم المنتج النهائي، يوفر فريق التطوير بشركة ديفيست تطبيقات مخصصة للهاتف الجوال تلبي معاييرك وتساعد عملك على البقاء عل ى اتصال باللعبة الرقمية، ومع مستوى الابتكار والجودة الذي نضعه في كل تطبيق من تطبيقاتنا يمكننا تعزيز علاقتك بعميلك، وتحسين تجربة المستخدم الشاملة على أجهزتهم الجوالة', '2020-12-12 21:13:34', '2020-12-12 21:35:01', NULL),
(4, 'fas fa-shopping-basket  fa-3x', 'برمجة المواقع والمتاجر الالكترونية', 'أطلق عنان مشروعك أو تجارتك لقوة الويب، اترك معنا أفضل أول انطباع لدى عميلك سنجعلك تظهر بشكل محترف على شاشة الكومبيوتر،', 'حيث نقوم بمواءمة مواهب وخبرات فريق ديفيست لإنشاء مواقع ومتاجر الكترونية تفاعلية فريدة من نوعها لتلبية أهداف عملك، حيث نقوم بمزج أفكار التصميم المبتكرة مع المفاهيم المعترف بها على نطاق واسع، ديفيست ستجعلك سيد اللعبة وستجعل منتجاتك وخدماتك متاحة للملايين.', '2020-12-12 21:14:23', '2020-12-12 21:35:52', NULL),
(5, 'fas fa-copyright fa-3x', 'نصمم هوية تجارية كاملة لك', 'نقوم بتصميم العلامات التجارية للشركات بعناية لأن علامتك التجارية هي الانطباع الذي تتركه شركتك في أذهان عملائك الحاليين والمحتملين والموظفين أيضًا،', 'ولأنها توضح رؤيتك، هويتك، وأهدافك. تساعد ديفيست الشركات على الظهور لعملائها بأفضل هوية بصرية ممكنة ولأجل ذلك لدينا فريق عمل مختص ومحترف من المصممين لنجعلك تظهر بأفضل شكل ممكن لنجعلك تتميز بين منافسينك في اللعبة الرقمية.', '2020-12-12 21:16:01', '2020-12-12 21:33:48', NULL),
(6, 'fas fa-users fa-3x', 'التسويق عبر مواقع التواصل الاجتماعي', 'لتحقيق أهدافك التجارية، نساعدك في التسويق عبر مواقع التواصل الاجتماعي عن طريق: -اعداد خططك التسويقية بشكل متكامل', '-نحلل منافسينك -نصل لأفضل عملائك المحتملين عن طريق جمهور مستهدف مناسب لعملك -نصمم لك تصميمات مبتكرة -ندير حملاتك الإعلانية الممولة بشكل كامل، ونحلل نتائجها بشكل دوري -نكتب المحتوى المناسب لجمهورك المستهدف', '2020-12-12 21:17:31', '2020-12-12 21:36:26', NULL),
(7, 'far fa-gem fa-3x', 'تصاميم مبتكرة', 'لأن التصاميم هي اللغة البصرية التي تنقل شخصية شركتك إلى عالم متسع من العملاء المحتملين قبل أن تقابلهم.', 'وتلهم الأشخاص للعمل معك من الانطباع الأول لاحترافية تصاميم شركتك، يعمل المصممون الموهوبون لدينا معك لفهم طبيعة عملك وفهم الرسالة التي تحتاج أن تعبر عنها، من خلال تطبيق نظرية الألوان والتكوين والتخطيط والمنظور بمهارة، في النهاية سنبتكر لك صورة لها تأثير فوري وقوة بقاء لا تُمحى.', '2020-12-12 21:21:48', '2020-12-12 21:35:21', NULL);

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
-- Table structure for table `prants`
--

CREATE TABLE `prants` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prants`
--

INSERT INTO `prants` (`id`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'prants/8nuJTXpi0Sdjvp2YMewt4cltvXNTdlYc2nFesPvA.jpg', '2020-12-12 19:07:34', '2020-12-12 19:18:36', '2020-12-12 19:18:36'),
(2, 'prants/BghXX3utPrGMIpLYLKmPeZg4spBp7zRkdirrHENa.png', '2020-12-12 21:40:58', '2020-12-12 21:40:58', NULL),
(3, 'prants/WKlND2coz6znjYPzq8bGaoXNZ6SsK3e2S1aZxz6y.png', '2020-12-12 21:41:06', '2020-12-12 21:41:06', NULL),
(4, 'prants/hyJIWW0v2icK8mGd9ZHTEAdpHfv1hKRsyfMoxrqM.png', '2020-12-12 21:41:13', '2020-12-12 21:41:13', NULL),
(5, 'prants/SgQazRP2vP6sdtv1Lrxd8urb7p2nGaExr2pxh2xw.png', '2020-12-12 21:41:20', '2020-12-12 21:41:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `insta_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_on_footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `facebook_link`, `twitter_link`, `insta_link`, `Email`, `phone`, `Description_on_footer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'https://www.facebook.com/DevestCompany', 'https://twitter.com/DevestCompany', 'https://www.instagram.com/devestcompany/', 'info@devest.com', '01000900534', 'ديفيست هي شركة تجمع ريادي الأعمال المبدعين والذين أسسوا وساعدوا في بناء مشاريع رائدة في الشرق الأوسط.. واثقون بأننا نصنع المستقبل من خلال تمكين روّاد الأعمال لبناء شركات رائدة في هذه المنطقة من العالم.', '2020-12-12 22:40:07', '2020-12-12 22:40:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_verified` enum('true','false') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('user','moderator','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `phone_verified`, `password`, `role`, `email`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '010', NULL, '$2y$10$5XUn/dRLtElhdlBY1nMJyOPFjUwK4qB197HvmQ1JObkQqJmKtgzse', 'admin', 'admin@admin', NULL, NULL, '2020-12-12 17:54:31', '2020-12-12 17:54:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heeders`
--
ALTER TABLE `heeders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `in_fo_about_companies`
--
ALTER TABLE `in_fo_about_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_projects`
--
ALTER TABLE `our_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_services`
--
ALTER TABLE `our_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `prants`
--
ALTER TABLE `prants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heeders`
--
ALTER TABLE `heeders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `in_fo_about_companies`
--
ALTER TABLE `in_fo_about_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `our_projects`
--
ALTER TABLE `our_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `our_services`
--
ALTER TABLE `our_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prants`
--
ALTER TABLE `prants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
