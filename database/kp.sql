-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2024 at 04:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `divisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `divisi`) VALUES
(0, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 0),
(1, 'admin1', '25f43b1486ad95a1398e3eeb3d83bc4010015fcc9bedb35b432e00298d5021f7', 1),
(2, 'admin2', '1c142b2d01aa34e9a36bde480645a57fd69e14155dacfab5a3f9257b77fdc8d8', 2),
(3, 'admin3', '4fc2b5673a201ad9b1fc03dcb346e1baad44351daa0503d5534b4dfdcc4332e0', 3),
(4, 'admin4', '110198831a426807bccd9dbdf54b6dcb5298bc5d31ac49069e0ba3d210d970ae', 4);

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `nama_divisi` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`) VALUES
(0, 'Super Admin'),
(1, 'Hoaks Berita'),
(2, 'Hoaks Kesehatan'),
(3, 'Hoaks Politik'),
(4, 'Hoaks Sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `telpon` varchar(12) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `tujuan` int(11) NOT NULL,
  `isi` varchar(2048) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `nama`, `email`, `telpon`, `alamat`, `tujuan`, `isi`, `tanggal`, `status`) VALUES
(100, 'Leon Lee Saputra', 'grim88.apc@gmail.com', '085336565485', 'Dukuh Kupang Timur VI 9', 2, 'Susu kental manis itu bukan susu tapi gula -_______-&quot;', '2024-06-09 13:22:52', 'Ditanggapi'),
(101, 'Syarif Hidayatullah', 'syarif@gmail.com', '085133562483', 'Raya Darmo Permai III', 1, 'Ombak Besar Menyapu Habis 2 Daerah di Bali?', '2024-06-09 15:01:16', 'Menunggu'),
(102, 'Senina Gatra Wibianti', 'Senina@gmail.com', '085333457548', 'Embong Malang', 3, 'Pilpres 2024 damai?', '2024-06-09 15:02:55', 'Menunggu'),
(103, 'John Doe', 'johndoe@gmail.com', '081234567890', 'menganti IV no 9', 1, 'Ada dugaan penyalahgunaan kekuasaan oleh pejabat di lingkungan pemerintahan setempat. Kami meminta investigasi menyeluruh terhadap tuduhan ini agar keadilan dapat ditegakkan.', '2024-06-09 15:09:42', 'Menunggu'),
(104, 'Agatha yanuar', 'agathaaayan@gmail.com', '082535188923', 'Asemrowo II', 4, 'Apa benar ya kalau Belanda sempat di bantai masal di indonesia?', '2024-06-10 00:48:50', 'Menunggu'),
(105, 'Ardi Pratama', 'ardi.pratama@gmail.com', '081234567890', ' Merdeka No 2', 1, 'Saya ingin melaporkan sebuah berita yang saya yakini sebagai hoaks. Berita tersebut menyebar di media sosial dan berisi informasi yang tidak benar mengenai kesehatan masyarakat. Informasi yang disebarkan sangat menyesatkan dan dapat menyebabkan kepanikan di kalangan masyarakat. Saya berharap pihak berwenang dapat segera menindaklanjuti laporan ini dan mengambil tindakan yang diperlukan untuk mengatasi penyebaran berita palsu ini. Terima kasih.', '2024-06-10 01:03:02', 'Menunggu'),
(106, 'Dian Cahaya', 'dian.cahaya@gmail.com', '082345678901', 'Mawar IX No 10', 1, 'Saya ingin melaporkan adanya praktik penipuan online yang saya alami baru-baru ini. Saya telah melakukan pembelian barang melalui sebuah situs e-commerce yang ternyata barang yang saya terima tidak sesuai dengan yang diiklankan. Selain itu, penjual juga tidak memberikan informasi yang jelas mengenai proses pengiriman dan tidak responsif terhadap pertanyaan saya setelah pembayaran dilakukan. Saya merasa sangat dirugikan oleh praktik penipuan ini dan berharap agar pihak terkait dapat segera mengambil tindakan untuk menindak pelaku dan mengembalikan kerugian yang saya alami. Terima kasih atas perhatiannya.', '2024-06-10 01:04:58', 'Menunggu'),
(107, 'Budi Santoso', 'budi.santoso@gmail.com', '087654321098', 'Bulak Banteng XI', 2, 'Saya ingin melaporkan adanya aktivitas yang merusak lingkungan di sekitar tempat tinggal saya. Beberapa waktu belakangan ini, saya telah mencatat peningkatan pembuangan sampah sembarangan di sekitar sungai dan taman kota. Selain itu, pembakaran sampah juga sering terjadi, menyebabkan polusi udara yang merugikan bagi kesehatan masyarakat. Saya sangat prihatin dengan kondisi lingkungan ini dan berharap agar pihak terkait dapat segera mengambil tindakan untuk membersihkan lingkungan dan memberikan edukasi kepada masyarakat tentang pentingnya menjaga kebersihan lingkungan. Terima kasih atas perhatiannya.', '2024-06-10 01:06:27', 'Menunggu'),
(108, 'Siti Rahayu', 'siti.rahayu@yahoo.com', '081234567890', 'Jalan Kusuma Bangsa No 15 ', 1, 'Saya ingin melaporkan adanya hoaks berita yang berkaitan dengan kesehatan yang beredar di media sosial belakangan ini. Hoaks tersebut mengklaim bahwa minum air panas dengan tambahan bahan tertentu dapat menyembuhkan segala macam penyakit, mulai dari flu hingga kanker. Informasi ini sangat menyesatkan dan dapat membahayakan kesehatan masyarakat jika dipercaya dan diikuti tanpa penelitian yang cermat. Saya berharap pihak yang berwenang dapat segera mengambil tindakan untuk menghentikan penyebaran hoaks ini dan memberikan edukasi yang benar mengenai kesehatan kepada masyarakat. Terima kasih atas perhatiannya.', '2024-06-10 01:08:17', 'Menunggu'),
(109, 'Andi Cahyono', 'andi.cahyono@yahoo.com', '087712345678', 'Gubernur Suryo No 28', 3, 'Saya ingin melaporkan penyebaran hoaks politik yang sangat meresahkan di lingkungan saya belakangan ini. Hoaks tersebut menyebarkan informasi palsu mengenai kandidat politik tertentu, mencemarkan nama baiknya dengan tuduhan yang tidak berdasar. Penyebaran hoaks semacam ini dapat mempengaruhi opini masyarakat dan mengganggu proses demokrasi yang sehat. Saya berharap pihak yang berwenang dapat segera mengidentifikasi dan menghentikan penyebaran hoaks ini serta mengambil tindakan hukum terhadap pelaku agar tidak ada lagi manipulasi informasi yang merugikan dalam konteks politik. Terima kasih atas perhatiannya.', '2024-06-10 01:09:10', 'Menunggu'),
(110, 'testt', 'testt@gmail.com', '085336565466', 'testt ', 4, 'adwqfwqdqwA', '2024-06-10 01:36:24', 'Menunggu');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_laporan` int(11) NOT NULL,
  `admin` varchar(64) NOT NULL,
  `isi_tanggapan` varchar(2048) NOT NULL,
  `tanggal_tanggapan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_laporan`, `admin`, `isi_tanggapan`, `tanggal_tanggapan`) VALUES
(3, 100, 'Admin', 'aowkaokwoak emg', '2024-06-09 13:22:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `divisi` (`divisi`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tujuan` (`tujuan`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`divisi`) REFERENCES `divisi` (`id_divisi`);

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`tujuan`) REFERENCES `divisi` (`id_divisi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
