-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Ápr 30. 18:24
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `burnout`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cikks`
--

CREATE TABLE `cikks` (
  `cikk_id` bigint(20) UNSIGNED NOT NULL,
  `cim` varchar(255) NOT NULL,
  `szoveg` text NOT NULL,
  `datum_kiadas` date NOT NULL,
  `kategoria_id` bigint(20) UNSIGNED NOT NULL,
  `szerzo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `cikks`
--

INSERT INTO `cikks` (`cikk_id`, `cim`, `szoveg`, `datum_kiadas`, `kategoria_id`, `szerzo_id`, `created_at`, `updated_at`) VALUES
(1, 'Deleniti modi accusantium nostrum ullam iure molestiae rerum.', 'Similique ut aut totam eaque quibusdam possimus dolores. Doloremque libero est qui aut repellendus esse. Perferendis ducimus laborum sit et architecto quasi aut. Nulla placeat et quia maiores enim minima atque. Velit corporis veritatis natus consequatur corrupti omnis.', '1991-10-20', 6, 6, '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(2, 'Ut minima sit reiciendis necessitatibus.', 'Atque nihil vero nemo assumenda laudantium veritatis tenetur. At qui aliquid sed qui eaque animi. Nobis unde non sit doloremque. Doloremque dolores voluptatibus accusantium qui. Est mollitia quae rerum earum in qui.', '1977-05-22', 7, 7, '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(3, 'Et quia vitae voluptatem a et sed.', 'Eum quis asperiores consequatur debitis aut corporis. Velit ullam illum cupiditate voluptatum. Sint ut et nostrum sunt ut corporis. Quia incidunt tempora expedita officiis magnam. Et consequuntur quibusdam unde repudiandae optio officia placeat. Ut placeat autem placeat quo voluptas delectus.', '2003-03-29', 8, 8, '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(4, 'Neque est quam ad et adipisci autem.', 'Ea dolores id cumque quo optio provident quae. Maxime et atque dolorem tempora. Praesentium ipsam tempora deleniti consequatur iste. Quae rerum sit nihil recusandae nulla modi. Corporis deserunt placeat vel laboriosam unde. Aperiam quia et excepturi atque. Maxime doloribus saepe dolorem eaque reprehenderit.', '1987-09-17', 9, 9, '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(5, 'Excepturi voluptatem non voluptatem ut laboriosam temporibus enim.', 'Fuga ab eos deleniti non. Est eos illo enim cum veniam. Commodi molestias ea assumenda sed voluptatum. Numquam provident et aspernatur exercitationem necessitatibus veniam. Tempore eveniet facilis quia vel atque. Dolore tenetur qui odio commodi quo tempora necessitatibus.', '1971-09-23', 10, 10, '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(6, 'Nulla nihil suscipit voluptatem et consequatur quibusdam id.', 'Quae quibusdam facere dolorem officiis libero delectus et. Eligendi rerum dolores consequatur. Enim ex sit id eos. Aut temporibus et architecto aut omnis minima velit.', '1970-12-06', 11, 11, '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(7, 'Enim accusamus quos et a nulla ipsam officia.', 'Ut exercitationem esse ipsam explicabo doloribus nemo in. Nulla error voluptas dignissimos. Qui amet voluptas quam totam. Voluptatibus quos sit assumenda. Dolor et praesentium hic aperiam reprehenderit ut. Recusandae impedit sit in corrupti.', '1983-08-27', 12, 12, '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(8, 'Beatae quae aut culpa cupiditate rerum laboriosam quo excepturi.', 'Facere sapiente aut dolores nihil et nobis in. Quam odio aut voluptas quia iure. Numquam omnis quod laudantium nostrum recusandae aut modi. Et expedita dolorem tenetur odit.', '2018-07-21', 13, 13, '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(9, 'Magni quia quia inventore harum nisi.', 'Fuga ut aut deleniti nobis consequatur et necessitatibus. Consequuntur nemo nobis consequatur fugit quae esse exercitationem. Et aspernatur delectus sint earum. Totam qui optio suscipit voluptatem autem nemo. Atque corporis repellendus reiciendis sunt. Libero qui repellat veniam voluptas. Reiciendis corporis vero quis et.', '1976-09-23', 14, 14, '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(10, 'Tempora expedita aperiam ducimus.', 'Est est aperiam eaque ex eum cum sit. Consequatur qui quod nobis animi. Ipsa blanditiis ad ut esse. Ut et quo libero similique impedit.', '1982-01-23', 15, 15, '2025-04-30 13:13:02', '2025-04-30 13:13:02');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategorias`
--

CREATE TABLE `kategorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nev` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `kategorias`
--

INSERT INTO `kategorias` (`id`, `nev`, `created_at`, `updated_at`) VALUES
(1, 'sunt', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(2, 'voluptatum', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(3, 'vero', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(4, 'numquam', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(5, 'autem', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(6, 'voluptatibus', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(7, 'dignissimos', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(8, 'aperiam', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(9, 'ipsam', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(10, 'labore', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(11, 'cum', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(12, 'neque', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(13, 'necessitatibus', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(14, 'quasi', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(15, 'dolorem', '2025-04-30 13:13:02', '2025-04-30 13:13:02');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_29_184759_create_personal_access_tokens_table', 1),
(5, '2025_04_29_184939_create_kategorias_table', 1),
(6, '2025_04_29_184945_create_szerzos_table', 1),
(7, '2025_04_29_184950_create_cikks_table', 1),
(8, '2025_04_29_184955_create_reklams_table', 1),
(9, '2025_04_29_184959_create_oldal_elems_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `oldal_elems`
--

CREATE TABLE `oldal_elems` (
  `elem_id` bigint(20) UNSIGNED NOT NULL,
  `elem_tipus` varchar(255) NOT NULL,
  `tartalom_id` bigint(20) UNSIGNED NOT NULL,
  `oldal_tipus` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `oldal_elems`
--

INSERT INTO `oldal_elems` (`elem_id`, `elem_tipus`, `tartalom_id`, `oldal_tipus`, `created_at`, `updated_at`) VALUES
(1, 'cikk', 3, 'főoldal', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(2, 'cikk', 7, 'főoldal', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(3, 'reklam', 1, 'cikk_oldal', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(4, 'reklam', 3, 'főoldal', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(5, 'cikk', 7, 'cikk_oldal', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(6, 'reklam', 3, 'cikk_oldal', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(7, 'cikk', 9, 'cikk_oldal', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(8, 'cikk', 5, 'cikk_oldal', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(9, 'cikk', 8, 'cikk_oldal', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(10, 'cikk', 2, 'főoldal', '2025-04-30 13:13:02', '2025-04-30 13:13:02');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reklams`
--

CREATE TABLE `reklams` (
  `reklam_id` bigint(20) UNSIGNED NOT NULL,
  `tartalom` text NOT NULL,
  `pozicio` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `reklams`
--

INSERT INTO `reklams` (`reklam_id`, `tartalom`, `pozicio`, `created_at`, `updated_at`) VALUES
(1, 'Maiores sequi ab molestiae blanditiis eligendi omnis. Mollitia et at ratione hic. Beatae enim et consequatur veniam neque aut.', 'header', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(2, 'At animi quos earum sint. Velit eos doloremque sed distinctio perferendis consequuntur quae. Molestiae omnis ea nihil hic voluptate est et. Et incidunt ad et excepturi architecto autem et optio.', 'header', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(3, 'Perferendis nesciunt repellendus sed ut porro velit recusandae. Et modi officiis eos aliquam totam voluptatum voluptas atque. Molestiae sunt cum aliquid velit quidem ullam vel. Aspernatur voluptatem voluptas impedit laudantium.', 'footer', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(4, 'Dicta aspernatur sint praesentium sapiente et. Cum voluptatibus rem quia ut minima nostrum vel culpa. Dignissimos distinctio maxime minima.', 'sidebar', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(5, 'Hic molestias necessitatibus ea et iusto ut consequatur. Perspiciatis aliquid omnis odit quia. Adipisci debitis aut dignissimos. Et assumenda repudiandae quas dolorem.', 'sidebar', '2025-04-30 13:13:02', '2025-04-30 13:13:02');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szerzos`
--

CREATE TABLE `szerzos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nev` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `szerzos`
--

INSERT INTO `szerzos` (`id`, `nev`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Jon Gulgowski', 'nitzsche.rod@example.org', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(2, 'Dr. Nelson Waelchi V', 'daphne.bartell@example.net', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(3, 'Dr. Tristin Conroy', 'roberts.liliane@example.net', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(4, 'Dr. Lionel O\'Reilly', 'wboehm@example.net', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(5, 'Mireille Hartmann', 'lula61@example.com', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(6, 'Ms. Daphnee Tremblay PhD', 'qrunolfsdottir@example.com', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(7, 'Katharina Lueilwitz', 'vharber@example.org', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(8, 'Mr. Jessie Hintz DDS', 'osatterfield@example.org', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(9, 'Dr. Sammie Raynor Jr.', 'deborah21@example.net', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(10, 'Dr. Otis Purdy', 'itromp@example.net', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(11, 'Lois Bayer', 'ogrant@example.com', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(12, 'Ms. Janet Kuphal', 'viva.little@example.com', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(13, 'Art Stokes', 'xtreutel@example.com', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(14, 'Gregory Douglas', 'ankunding.veronica@example.net', '2025-04-30 13:13:02', '2025-04-30 13:13:02'),
(15, 'Mabelle Hilpert', 'fmurphy@example.com', '2025-04-30 13:13:02', '2025-04-30 13:13:02');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'asdasd3@asd.asd', '$2y$12$uYRiIY2tWGD46yqHkn9WUOMovo1v1Bu39kjTudlZjQDA.ZrH66yQm', NULL, '2025-04-30 13:20:16', '2025-04-30 13:20:16');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- A tábla indexei `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- A tábla indexei `cikks`
--
ALTER TABLE `cikks`
  ADD PRIMARY KEY (`cikk_id`),
  ADD KEY `cikks_kategoria_id_foreign` (`kategoria_id`),
  ADD KEY `cikks_szerzo_id_foreign` (`szerzo_id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- A tábla indexei `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `kategorias`
--
ALTER TABLE `kategorias`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `oldal_elems`
--
ALTER TABLE `oldal_elems`
  ADD PRIMARY KEY (`elem_id`);

--
-- A tábla indexei `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `reklams`
--
ALTER TABLE `reklams`
  ADD PRIMARY KEY (`reklam_id`);

--
-- A tábla indexei `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- A tábla indexei `szerzos`
--
ALTER TABLE `szerzos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `szerzos_email_unique` (`email`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cikks`
--
ALTER TABLE `cikks`
  MODIFY `cikk_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `kategorias`
--
ALTER TABLE `kategorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `oldal_elems`
--
ALTER TABLE `oldal_elems`
  MODIFY `elem_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `reklams`
--
ALTER TABLE `reklams`
  MODIFY `reklam_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `szerzos`
--
ALTER TABLE `szerzos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `cikks`
--
ALTER TABLE `cikks`
  ADD CONSTRAINT `cikks_kategoria_id_foreign` FOREIGN KEY (`kategoria_id`) REFERENCES `kategorias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cikks_szerzo_id_foreign` FOREIGN KEY (`szerzo_id`) REFERENCES `szerzos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
