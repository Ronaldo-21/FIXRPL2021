-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2021 pada 00.19
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sikp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `batas_kp_new`
--

CREATE TABLE `batas_kp_new` (
  `id_batas_kp` int(11) NOT NULL,
  `id_kp` int(11) NOT NULL,
  `tanggal_batas` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `batas_kp_new`
--

INSERT INTO `batas_kp_new` (`id_batas_kp`, `id_kp`, `tanggal_batas`) VALUES
(2, 1, '2020-06-03'),
(3, 2, '2020-06-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `koor_kp`
--

CREATE TABLE `koor_kp` (
  `id_koor` int(20) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `koor_kp`
--

INSERT INTO `koor_kp` (`id_koor`, `nik`, `nama`, `email`, `password`, `status`) VALUES
(1, 11223344, 'Sigit Irawan', 'sigit.irawan@students.ukdw.ac.id', 'dosensigit21', 1),
(2, 11223345, 'David Yerusal', 'david.yerusal@students.ukdw.ac.id', 'koordavid21', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kp`
--

CREATE TABLE `kp` (
  `id_kp` int(11) NOT NULL,
  `tahun` int(5) NOT NULL,
  `semester` int(1) NOT NULL,
  `nim` int(50) NOT NULL,
  `judul` text NOT NULL,
  `penguji` int(11) DEFAULT NULL,
  `nik` int(8) DEFAULT NULL,
  `tools` varchar(225) NOT NULL,
  `spesifikasi` varchar(225) NOT NULL,
  `dokumen` varchar(225) NOT NULL,
  `ruang` char(60) DEFAULT NULL,
  `lembaga` varchar(225) NOT NULL,
  `pimpinan` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `no_telp` char(13) NOT NULL,
  `pembimbing` int(11) DEFAULT NULL,
  `status_ujian` int(1) DEFAULT NULL,
  `tanggal_ujian` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kp`
--

INSERT INTO `kp` (`id_kp`, `tahun`, `semester`, `nim`, `judul`, `penguji`, `nik`, `tools`, `spesifikasi`, `dokumen`, `ruang`, `lembaga`, `pimpinan`, `alamat`, `no_telp`, `pembimbing`, `status_ujian`, `tanggal_ujian`, `status`) VALUES
(3, 2021, 2, 72180250, 'iyaaa', 1, 0, 'yoiks', 'sama', 'blum slsai', '0', 'pt binamarga', 'Roni', 'Iromjan', '081234568', 0, NULL, '2021-06-15', 1),
(4, 2021, 2, 72180121, 'jgvhghmf', 0, 0, 'gf', 'hcf', 'Auth Client Laravel8LogIn.txt', '0', 'hfjyrfc', 'yoyyo', 'iromjan', '0821212121', 0, NULL, '1111-11-11', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(8) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `google_Id` varchar(150) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `email`, `password`, `google_Id`, `updated_at`, `created_at`, `id`) VALUES
(NULL, 'Ronaldo 21', 'ronaldo.engelbert@si.ukdw.ac.id', NULL, '107604869417849644503', '2021-05-08 06:17:16', '2021-05-08 06:17:16', 9),
(NULL, 'Ronaldo', 'bowowjack@gmail.com', NULL, '105895959112968211743', '2021-05-08 07:07:51', '2021-05-08 07:07:51', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prakp`
--

CREATE TABLE `prakp` (
  `id_prakp` int(11) NOT NULL,
  `nim` int(50) NOT NULL,
  `tahun` int(5) NOT NULL,
  `semester` int(1) NOT NULL,
  `judul` text NOT NULL,
  `tools` varchar(225) NOT NULL,
  `spesifikasi` varchar(225) NOT NULL,
  `dokumen` text NOT NULL,
  `penguji` varchar(60) DEFAULT NULL,
  `ruang` char(60) NOT NULL,
  `lembaga` varchar(225) NOT NULL,
  `pimpinan` varchar(100) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `no_telp` char(13) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `prakp`
--

INSERT INTO `prakp` (`id_prakp`, `nim`, `tahun`, `semester`, `judul`, `tools`, `spesifikasi`, `dokumen`, `penguji`, `ruang`, `lembaga`, `pimpinan`, `alamat`, `no_telp`, `status`) VALUES
(8, 7218021, 2021, 2, 'yayaya', 'yoik', 'sama', 'belum masih salah', '0', '0', 'pt binamarga', 'Roni', 'iromejan', '1234567890', 0),
(9, 72180250, 2021, 2, 'iyaiya', 'yoik', 'sama', 'belum masih salah', '0', '0', 'pt binamarga', 'Roni', 'iromejan', '1234567890', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keterangan`
--

CREATE TABLE `surat_keterangan` (
  `id_skp` int(11) NOT NULL,
  `tahun` int(5) NOT NULL,
  `semester` int(1) NOT NULL,
  `nim` int(50) NOT NULL,
  `lembaga` varchar(225) NOT NULL,
  `pimpinan` varchar(225) NOT NULL,
  `no_tlpn` char(13) DEFAULT NULL,
  `alamat` varchar(225) NOT NULL,
  `fax` char(60) NOT NULL,
  `dokumen` varchar(225) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_keterangan`
--

INSERT INTO `surat_keterangan` (`id_skp`, `tahun`, `semester`, `nim`, `lembaga`, `pimpinan`, `no_tlpn`, `alamat`, `fax`, `dokumen`, `status`) VALUES
(7, 2021, 1, 72180250, 'pt binamarga', 'Roni', NULL, 'iromejan', '12342314231', 'belum masih salah', 1),
(8, 2021, 2, 72180121, 'pt binamarga', 'Roni', NULL, 'iromejan', '12342314231', 'Auth Client Laravel8LogIn.txt', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_kp`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_kp` (
`id_kp` int(11)
,`tahun` int(5)
,`semester` int(1)
,`nim` int(50)
,`penguji` int(11)
,`tanggal_ujian` date
,`status` int(1)
,`judul` text
,`nik` int(20)
,`nama` varchar(50)
,`email` varchar(50)
,`password` varchar(50)
,`status_koor` int(1)
,`tanggal_batas` date
,`id_batas_kp` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_prakp`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_prakp` (
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_kp`
--
DROP TABLE IF EXISTS `view_kp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_kp`  AS SELECT `kp`.`id_kp` AS `id_kp`, `kp`.`tahun` AS `tahun`, `kp`.`semester` AS `semester`, `kp`.`nim` AS `nim`, `kp`.`penguji` AS `penguji`, `kp`.`tanggal_ujian` AS `tanggal_ujian`, `kp`.`status` AS `status`, `kp`.`judul` AS `judul`, `koor_kp`.`nik` AS `nik`, `koor_kp`.`nama` AS `nama`, `koor_kp`.`email` AS `email`, `koor_kp`.`password` AS `password`, `koor_kp`.`status` AS `status_koor`, `batas_kp_new`.`tanggal_batas` AS `tanggal_batas`, `batas_kp_new`.`id_batas_kp` AS `id_batas_kp` FROM ((`kp` left join `koor_kp` on(`kp`.`penguji` = `koor_kp`.`id_koor`)) left join `batas_kp_new` on(`batas_kp_new`.`id_kp` = `kp`.`id_kp`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_prakp`
--
DROP TABLE IF EXISTS `view_prakp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_prakp`  AS SELECT `prakp`.`id_prakp` AS `id_prakp`, `prakp`.`nim` AS `nim`, `prakp`.`tahun` AS `tahun`, `prakp`.`semester` AS `semester`, `prakp`.`judul` AS `judul`, `koor_kp`.`nik` AS `nik`, `koor_kp`.`nama` AS `nama`, `koor_kp`.`email` AS `email`, `koor_kp`.`password` AS `password`, `mahasiswa`.`nama` AS `nama_mahasiswa`, `mahasiswa`.`email` AS `email_mahasiswa`, `mahasiswa`.`password` AS `password_mahasiswa`, `mahasiswa`.`google_Id` AS `google_Id`, `mahasiswa`.`updated_at` AS `updated_at`, `mahasiswa`.`created_at` AS `created_at`, `mahasiswa`.`id` AS `id`, `prakp`.`status` AS `status` FROM ((`prakp` join `koor_kp` on(`prakp`.`pembimbing` = `koor_kp`.`id_koor`)) join `mahasiswa` on(`prakp`.`nim` = `mahasiswa`.`nim`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `batas_kp_new`
--
ALTER TABLE `batas_kp_new`
  ADD PRIMARY KEY (`id_batas_kp`);

--
-- Indeks untuk tabel `koor_kp`
--
ALTER TABLE `koor_kp`
  ADD PRIMARY KEY (`id_koor`);

--
-- Indeks untuk tabel `kp`
--
ALTER TABLE `kp`
  ADD PRIMARY KEY (`id_kp`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prakp`
--
ALTER TABLE `prakp`
  ADD PRIMARY KEY (`id_prakp`);

--
-- Indeks untuk tabel `surat_keterangan`
--
ALTER TABLE `surat_keterangan`
  ADD PRIMARY KEY (`id_skp`);

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
-- AUTO_INCREMENT untuk tabel `batas_kp_new`
--
ALTER TABLE `batas_kp_new`
  MODIFY `id_batas_kp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `koor_kp`
--
ALTER TABLE `koor_kp`
  MODIFY `id_koor` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kp`
--
ALTER TABLE `kp`
  MODIFY `id_kp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `prakp`
--
ALTER TABLE `prakp`
  MODIFY `id_prakp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `surat_keterangan`
--
ALTER TABLE `surat_keterangan`
  MODIFY `id_skp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
