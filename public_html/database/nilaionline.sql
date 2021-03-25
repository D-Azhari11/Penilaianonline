-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 25, 2021 lúc 04:30 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nilaionline`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `userName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dosen`
--

CREATE TABLE `dosen` (
  `NIP` varchar(30) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `kode_Matkul` varchar(5) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(30) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Jenis_Kelamin` char(10) NOT NULL,
  `Jurusan` varchar(30) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Jenis_Kelamin`, `Jurusan`, `Password`) VALUES
('201913017', 'DICKY PRIMA AZHARI', 'Laki-laki', 'Teknik Informatika', 'sayadicky112'),
('324', 'Saya dicky loh', 'Laki-laki', 'Teknik Informatika', 'abcd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_Matkul` varchar(10) NOT NULL,
  `nama_Matkul` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nilai`
--

CREATE TABLE `nilai` (
  `nilai_Tugas` int(11) NOT NULL,
  `nilai_UTS` int(11) NOT NULL,
  `nilai_UAS` int(11) NOT NULL,
  `NIM` varchar(20) NOT NULL,
  `NIP` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userName`);

--
-- Chỉ mục cho bảng `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIP`);

--
-- Chỉ mục cho bảng `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Chỉ mục cho bảng `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_Matkul`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
