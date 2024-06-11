-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2024 pada 07.13
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bungakosmetik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detiltransaksis`
--

CREATE TABLE `detiltransaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detiltransaksis`
--

INSERT INTO `detiltransaksis` (`id`, `transaksi_id`, `produk_id`, `jumlah`, `harga`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 3, 100000, '2024-06-10 21:51:00', '2024-06-10 21:51:00'),
(2, 3, 2, 1, 100000, '2024-06-10 21:51:08', '2024-06-10 21:51:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2024_04_24_074221_create_pelanggans_table', 1),
(4, '2024_04_24_074458_create_produks_table', 1),
(5, '2024_04_26_051356_create_supliers_table', 1),
(6, '2024_04_26_055021_create_transaksis_table', 1),
(7, '2024_04_26_061046_create_detiltransaksis_table', 1),
(8, '2024_05_07_090155_relasi', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `hp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggans`
--

INSERT INTO `pelanggans` (`id`, `nama`, `hp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Safrizal', '08817268127323', 'Desa simpang IV Upah', '2024-06-10 21:43:05', '2024-06-10 21:43:05'),
(2, 'ahmadi muslim', '08213212163172', 'Desa Medang ara', '2024-06-10 21:43:13', '2024-06-10 21:43:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `produks`
--

CREATE TABLE `produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `suplier_id` bigint(20) UNSIGNED NOT NULL,
  `jeniskategori` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produks`
--

INSERT INTO `produks` (`id`, `nama`, `suplier_id`, `jeniskategori`, `deskripsi`, `stock`, `harga`, `created_at`, `updated_at`) VALUES
(2, 'bedak', 1, 'Cair', 'Paket', 6, 100000, '2024-06-10 21:24:28', '2024-06-10 21:51:18'),
(3, 'lipstik', 2, 'Padat', 'Satuan', 300, 100000, '2024-06-10 21:25:26', '2024-06-10 21:25:26'),
(4, 'minyak rambut ddit', 2, 'Cair', 'Satuan', 200, 43000, '2024-06-10 21:26:15', '2024-06-10 21:26:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supliers`
--

CREATE TABLE `supliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggalmou` date NOT NULL,
  `hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supliers`
--

INSERT INTO `supliers` (`id`, `nama`, `tanggalmou`, `hp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'ahmadi', '2024-06-11', '08817268127323', 'Desa simpang IV Upah', '2024-06-10 21:08:19', '2024-06-10 21:08:19'),
(2, 'Bang Muslim', '2024-06-02', '08123823823', 'Desa simpang IV Upah', '2024-06-10 21:23:57', '2024-06-10 21:23:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pelanggan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksis`
--

INSERT INTO `transaksis` (`id`, `pelanggan_id`, `user_id`, `invoice`, `total`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 'INV-3', 400000, '2024-06-10 21:50:50', '2024-06-10 21:51:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `hp` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `hp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahmadi Muslim', 'ahmadi@muslim.com', NULL, '$2y$12$ZxNbK6E9TfWv2lIJRp9/SO0P56RuuPlxG9N5SD840UCHHX/CLlUoq', '08817268127323', NULL, '2024-06-10 20:31:45', '2024-06-10 20:31:45');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detiltransaksis_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `detiltransaksis_produk_id_foreign` (`produk_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produks_suplier_id_foreign` (`suplier_id`);

--
-- Indeks untuk tabel `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksis_invoice_unique` (`invoice`),
  ADD KEY `transaksis_pelanggan_id_foreign` (`pelanggan_id`),
  ADD KEY `transaksis_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `supliers`
--
ALTER TABLE `supliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  ADD CONSTRAINT `detiltransaksis_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detiltransaksis_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD CONSTRAINT `produks_suplier_id_foreign` FOREIGN KEY (`suplier_id`) REFERENCES `supliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_pelanggan_id_foreign` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
