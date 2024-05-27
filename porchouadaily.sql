-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 01:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `porchouadaily`
--

-- --------------------------------------------------------

--
-- Table structure for table `necessary`
--

CREATE TABLE `necessary` (
  `id` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `is_delete` int(1) NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `necessary`
--

INSERT INTO `necessary` (`id`, `content`, `date`, `is_delete`, `timestamp`) VALUES
(1, 'test', 'test', 1, '2024-04-21 19:12:08'),
(2, 'ດື່ມນ້ຳ 4 ຈອກ', 'ທຸກໆຕອນເຊົ້າຫຼັງຕື່ນນອນ', 0, '2024-04-21 19:17:06'),
(3, 'ດື່ມນ້ຳ 2 ຈອກ', 'ທຸກໆຕອນທ່ຽງ', 0, '2024-04-21 19:18:12'),
(4, 'ດື່ມນ້ຳ 4 ຈອກ', 'ທຸກໆຕອນແລງ', 0, '2024-04-21 19:18:29'),
(5, 'ຕັດຜົມ', 'ທຸກໆວັນທີ່ 10 ແລະ 24', 0, '2024-04-22 17:07:01'),
(6, 'ເວລາຄືເວລາ', 'ທຸກໆວັນ', 0, '2024-05-16 11:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(3) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `modules` varchar(50) DEFAULT NULL,
  `is_delete` int(2) NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `content`, `image`, `modules`, `is_delete`, `timestamp`) VALUES
(1, '1.  ໝູ່ 5 ຄົນທີ່ເຮົາໃກ້ສິດທີ່ສຸດແມ່ນໃຜ?\r\n2.  ໜັງສື 5 ເຫຼັ້ມທີ່ຂ້ອຍມັກຜ່ານທີ່ສຸດແມ່ນຫຍັງ?\r\n    - Advance English\r\n    - Grammar English\r\n    - Chinese Primary\r\n    - Marketing Online\r\n    - Rich Dad/ Poor Dad\r\n3.  ຊ່ອງ youtube ຫຼື facebook page ທີ່ຂ້ອຍຕິດຕາມທີ່ສຸດແມ່ນຊ່ອງໃດ?\r\n    -  borndev\r\n    -  surfside media\r\n    -  ceo noppakrit\r\n    -  รู้รอบตอบโจทก์ทุรกิด\r\n    -  mark hais lus hmoob\r\n4.  ເວລາຫວ່າງຂ້ອຍມັກຈະເຮັດຫຍັງ?\r\n    -  ຮັກສຸຂະພາບ\r\n    -  ຮຽນພາສາອັງກິດ\r\n    -  ຮຽນພາສາໂປຣແກຣມ\r\n    -  ຮຽນພາສາຈີນ\r\n    -  ຂຽນບົດຈົບຊັ້ນ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-01-05 22:04:59'),
(3, '9/1/2024\r\nວັນນີ້ເປັນວັນດີເປັນວັນທີ9\r\nຂໍໃຫ້ເປັນ 9 ທຳອິດປີທີ່ດີຂອງທຸກຄົນ\r\nເປັນ 9 ແຫ່ງການເລີ່ມຕົ້ນທີ່ດີ\r\nເປັນ 9 ທີ່ພົບແຕ່ສິ່ງດີໆ\r\nເປັນ 9 ທີ່ຈະກ້າວໜ້າເດີນຕໍ່ໄປ\r\nເປັນ 9 ທີ່ຈະປະສົບແຕ່ຄວາມສຳເລັດ\r\nເປັນ 9 ທີ່ຈະພົບແຕ່ຄວາມສຸກ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-01-17 20:57:13'),
(5, 'Top 10 ບໍລິສັດມະຫາຊົນທີ່ມີມູນຄ່າສູງສຸດໃນ ສປປ ລາວ ປະຈຳປີ 2023\r\n1. ລາວອາຊຽນ ເຊົ່າສິນເຊື່ອ\r\n2. ຜະລິດ-ໄຟຟ້າ\r\n3. ພູສີກໍ່ສ້າງ\r\n4. ທະນະຄານການຄ້າ\r\n5. ສຸວັນນີ\r\n6. ປີໂຕຼລຽນເທຼດດິ້ງ\r\n7. ມະຫາທຶນ ເຊົ່າສິນເຊື່ອ\r\n8. ວຽງຈັນເຊັນເຕີ\r\n9. ລາວອາໂກຼເທັກ\r\n10. ຊີມັງລາວ', NULL, 'ອື່ນໆ', 0, '2024-01-17 21:03:48'),
(6, '#  website ກ່ຽວກັບໂປຣແກຣມມິ່ງທີ່ໜ້າສົນໃຈມີຄື:\r\n1. Borntodev.com\r\n2. designer.microsoft.com\r\n3. itgenius.co.th/online-courses/flutter3-full-stack-workshop.html\r\n4. techringe.com/category/free-programming-books/\r\n5.w3schools.com', NULL, 'Websites', 0, '2024-01-17 21:37:52'),
(7, 'website ກ່ຽວກັບພາສາອັງກິດທີ່ໜ້າສົນໃຈມີຄື:\r\n1. spinbot.com/\r\n2. grammarlookup.com/\r\n3. ielts-up.com/\r\n4. youtube.com/watch?v=NXJa7GFjY3U', NULL, 'Websites', 0, '2024-01-17 21:50:02'),
(8, 'ເລີກໄດ້ຊີວິດຈະດີຂື້ນ\r\n1. ເລີກຢາກເປັນຄົນອື່ນ\r\n2. ເລີກເຮັດຕາມລົມປາກ\r\n3. ເລີກປຽບທຽບຕົວເອງກັບຄົນອື່ນ\r\n3. ເລີກຊ່ວຍຄົນທີ່ບໍ່ຕ້ອງການ\r\n4. ເລີກຄິດເຖິງເລື່ອງເກົ່າໆ\r\n5. ເລີກຄິດຫຼາຍກັບຄຳເວົ້າຂອງຄົນອື່ນ\r\n6. ເລີກຢາກຮູ້ເລື່ອງຂອງຄົນອື່ນ\r\n7. ເລີກຮັກຄົນທີ່ບໍ່ເຫັນຄຸນຄ່າເຮົາ\r\n8. ເລີກບໍ່ເຫັນຄ່າຂອງຕົນເອງ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-01-17 22:05:42'),
(10, 'ເລື່ອງຂອງວິໄນເປັນຫົວໃຈຫຼັກທີ່ສຳຄັນ:\r\n- ຕ້ອງເຮັດຕ້ອງທຳເພື່ອສ້າງວິໄນ\r\n- ວິໄນສ້າງນິດໄສ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-01-19 15:38:35'),
(11, 'ວີດີໂອທີ່1:\r\n- ການສື່ສານມີຄວາມສຳຄັນຄືການເຊື່ອມຕໍ່ທີ່ດີ\r\n- ການສື່ສານກັບຕົນເອງ\r\n+ ເປັນຫຍັງຕ້ອງຕື່ນໄປເຮັດວຽກ\r\n- ການສື່ສານໃຫ້ມີປະສິດທິພາບ\r\n+ ວິທີການສື່ສານ\r\n+ ຈຸດປະສົງເວົ້າໃຫ້ເຂົ້າໃຈ\r\n+ ຜູ້ສົ່ງສານຕ້ອງເຂົ້າໃຈເລື່ອງນັ້ນ\r\n+ ເຮົາຕ້ອງເລືອກເຄື່ອງມືໃນການສື່ສານໃຫ້ເໝາະສົມ\r\n+ ໜ້ອຍຄືຫຼາຍ, ຫຼາຍຄືໜ້ອຍ\r\n# ການສື່ສານແບບ 2 ທັງຄື:\r\nວັກການຕອບສະໜອງ\r\n# ເຄັບລັບສຳຄັນຄືການເຊື່ອມຕໍ່ connection\r\n# ມີສາຍສຳພັນທີ່ດີ ມີກິດຈະກຳທີ່ດີ\r\n# ເວລາສື່ສານໃຫ້ຄິດເຖິງຄວາມຮູ້ສຶກຂອງຜູ້ຮັບສານ ແບບ 2 ທາງ\r\n# ມີຫົວໜ້າງານເປັນຄົນອາຍຸຫຼາຍ(ປະສົບການຫຼາຍ) ແຕ່ລູກນ້ອງເປັນຄົນອາຍຸຫນ້ອຍ (ໄຟແຮງ)\r\n# ເຮົາຕິດຄັດຕອນໃດເປີດໃຈຮັບແກ້\r\n# ທຳຄວາມເຂົ້າໃຈເລື່ອງກ່ອນທີ່ຈະແກ້\r\n# ເວົ້າໜ້ອຍຄິດຫຼາຍ (ຄິດລົບ) ເຮັດໃຫ້ຄວາມສຳພັນຫຼຸດລົງ\r\n# ທຸກໆຄົນຕ້ອງມີພາລະກິດທີ່ຕ້ອງໃຫ້ ວິທີໃຫ້ທີ່ດີຄືການສື່ສານໃຫ້ສົ່ງພະລັງຂື້ນ', NULL, 'CEONOPPAKRIT', 0, '2024-01-20 15:01:42'),
(12, 'ວີດີໂອທີ່2:\r\nຊ່ວງທຳອິດຂອງການເຮັດວຽກແນວໃດຈື່ງກ້າວໜ້າໄປໄດ້ດີ\r\n1. ເປັນການທົບທວນວ່າທ່ານໄດ້ເລືອກອາາຊີບທີ່ແມ່ນ ແລະ ອົງກອນທີ່ແມ່ນແລ້ວ ແມ້ວ່າ3ປີທຳອິດເປັນການສະແກນຫາຕົວຕົນທີ່ແທ້ຈິງຂອງຕົນເອງວ່າ ເຮົາເໜາະທີ່ຈະເຮັດອາຊີບໃດແນ່ ອາຊີບກໍ່ແມ່ນ, ບໍລິສັດກໍ່ແມ່ນ\r\n2. ເປັນການວາງເປົ້າໝາຍສູ່ການເຕີບໂຕໃນອາຊີບ ເມື່ອເຮົາພົບຕົນເອງແລ້ວວ່າ ອາຊີນີ້ແມ່ນເລີຍ ແລ້ວອົງກອນກໍ່ແມ່ນ ເຮົາກໍ່ຕ້ອງເບິ່ງເຖິງອະນາຄົດຍາວໆແລ້ວວ່າ 1 ປີຜ່ານໄປ 2ປີຜ່ານ 3ປີຜ່ານ 5ປີ 10 ປີຜ່ານໄປ ເຮົາຈະເດີນທາງໃນເສັ້ນທາງນີ້ແນວໃດ\r\n3. ການພັດທະນາຕົນເອງ ແລະ ສ້າງຜົນງານໃຫ້ໄດ້ ການທີ່ເຮົາເຂົ້າເຮັດວຽກໃໝ່ໆ ອາລົມທີ່ວ່າ ດາວຮຸ່ງ ພຸ່ງແຮງຈະຕ້ອງທຳໃຫ້ເກີດໃຫ້ໄດ້ \r\nດາວຮຸ່ງພຸ່ງແຮງໝາຍຄວາມວ່າ ເຮົາເປັນນ້ອງໃໝ່ທີ່ໄຟແຮງ ມີຄວາມສາມາດໃນການຮັບຜິດຊອບເນື້ອງານ ແລະ ກໍ່ສ້າງຜົນງານໄດ້ດັ່ງໃຈດ້ວຍເຊັ່ນ: ເອົາຄວາມຮູ້ທີ່ໄດ້ຮຽນຮູ້ໃນຫຼັກສູດຕ່າງໆມາປະສົມກັບການຮຽນຮູ້ສິ່ງໃໝ່ໆ ຕໍ່ຄວາມຮັບຜິດຊອບຂອງເຮົາຈົນເຂົາເອີ້ນວ່າ: ເຮົາເປັນນ້ອງໃໝ່ທີ່ໄຟແຮງ', NULL, 'CEONOPPAKRIT', 0, '2024-01-20 15:27:39'),
(13, 'ວີດີໂອທີ່3: 4 ຂັ້ນຕອນ ການຈັດຄວາມຄິດລົບ\r\nຂັ້ນຕອນທີ່1. ເຮົາຕ້ອງຮູ້ຈັກການໃຊ້ເຄື່ອງໃນການກວດວັກອາລົມຄວາມຮູ້ສຶກຄວາມຄິດລົບຂອງເຮົາ ຄື: ການກວດຈັດອາລົມຄວາມຮູ້ສຶກຂອງເຮົາ ເມື່ອເຮົາຮູ້ສຶກວ່າເມື່ອຍໆ ສະແດງວ່າກຳລັງຄິດລົບແລ້ວ\r\nຂັ້ນຕອນທີ່2: ການປັບມຸງມອງຄວາມຄິດຊ່ວຍເຕີມພະລັງໃຫ້ເຮົາຄິດຈາກລົບກາຍເປັນບວກໃຫ້ກັບເຮົາໄດ້ ໃຫ້ເນັ້ນໃສ່ແງ່ດີໂດຍປາສະຈາກແງ່ຮ້າຍເຊັ່ນ: ສົມມຸດເຮົາເນັ້ນໃສ່ບັນຫາວ່າເປັນຫຍັງມີແຕ່ບັນຫາເຮັດໃຫ້ເຮົາເມື່ອຍ ແຕ່ຄັນເຮົາເບິ່ງໄປໃນແງ່ດີວ່າບັນຫາເຫຼົ່ານີ້ຕ້ອງມີວິທີແກ້ເຮັດໃຫ້ເຮົາມີພະລັງເພີ່ມຂື້ນ\r\nຂັ້ນຕອນທີ່3: ການປັບປ່ຽນຕົວເອງໃຫ້ເປັນຄົນເຊິງຮຸກ ເຊິງຮຸກໝາຍເຖິງວ່າເປັນການເດີນເຂົ້າຫາບໍ່ແມ່ນຄົນນັ່ງລໍຄອຍໃຫ້ທຸກຢ່າງນັ້ນເປັນໄປ ບໍ່ແມ່ນໂຍນທຸກຢ່າງໃຫ້ຄົນອື່ນຮັບຜິດຊອບ ແຕ່ເຮົາເປັນຄົນທີ່ເລີ່ມຮັບຜິດຊອບໃນສິ່ງທີ່ກ່ຽວຂ້ອງກັບບົດບາດຂອງເຮົາເອງ ເປັນຄົນຄິດເອງເຮັດເອງ ບໍ່ແມ່ນລໍແຕ່ຄົນອື່ນເຮັດ\r\nຂັ້ນຕອນທີ່4: ການຫາສິ່ງແວດລ້ອມທີ່ເສີມພະລັງບວກໃຫ້ກັບເຮົາ ໃນໂລກນີ້ສິ່ງແວດລ້ອມທີ່ເຮົາຢູ່ກັບເປັນແຕ່ສິ່ງແວດລ້ອມທີ່ເຕີມພະລັງໃນສິ່ງລົບໃຫ້ເຮົາເທົ່ານັ້ນບໍ່ວ່າແມ່ນ ທີວີ ເຟສບຸກ ໜັງສືພິມ ມີແຕ່ເລື່ອງລົບໆຮ້າຍໆ ເຮົາຕ້ອງຫາສິ່ງແວດລ້ອມໃຫ້ເໝາະສົມເຊັ່ນ 5ຄົນທີ່ໃກ້ສິດ, 5ເຫຼັ້ມໜັງສື, 5 ຊ່ອງຢູທູບ, ', NULL, 'CEONOPPAKRIT', 0, '2024-01-20 16:31:04'),
(14, 'ວີດີໂອທີ່4: 4ວິໄນສູ່ອິດສະຫຼະພາບ\r\n# ອິດສະຫຼະພາບເລຶ່ອງເວລາ ແລະ ໝົດຫ່ວງເລື່ອງການເງິນ\r\n- ວິໄນ ແລະ ຄວາມຮັບຜິດຊອບ\r\n1. ວິໃນການດູແລສຸຂະພາບຂອງຕົນເອງ ທັ້ງໃນເລື່ອງຂອງສຸຂະພາບກາຍ ແລະ ໃຈ (Mind and Body are One)\r\n2. ວິໃນການພັດທະນາຕົນເອງໃຫ້ມີຄວາມຮູ້ຄວາມສາມາດໃຫ້ຫຼາຍຂື້ນ( ການພັດທະນາຕົນເອງຢ່າງຕໍ່ເນື່ອງໃຫ້ທັນກັບການຕະຫຼາດຍ້ອນມັນປ່ຽນໄວຫຼາຍ)\r\n3. ການລົງມືເຮັດໃນສິ່ງທີ່ຕ້ອງເັຮດໃຫ້ໄດ້ (ການປ່ຽນຕົນເອງໃຫ້ມີຄຳວ່າ ຕ້ອງຫຼາຍກວ່າມັກ)\r\n4. ການເຮັດວຽກນຳຄົນອື່ນໄດ້\r\nວິໃນເຫຼົ່ານີ້ຕອນທຳອິດເຮົາອາດຈະມີຄວາມຮູ້ສຶກອືດອັດໃຈໃນເວລາເຮົາສ້າງວິໄນ ເພາະເປັນສິ່ງທີ່ເຮົາຕ້ອງໃຊ້ການຄວບຄຸມຕົນເອງຢູ່ຕະຫຼອດເວລາແຕ່ຫຼັງຈາກເຮົາຄວບຄຸມຕົນເອງໄປໄລຍະໜຶ່ງ ມັນຈະມີສິ່ງມາແທນທີ່ ທີ່ເຮົາເອີ້ນວ່າ ນິດໄສ\r\nວິໄນຈະສ້າງ ນິດໄສ, ນິດໄສຈະສ້າງຊີວິດໃໝ່', NULL, 'CEONOPPAKRIT', 0, '2024-01-20 17:04:48'),
(16, 'ປະຕິບັດຕາມກົດ:\r\n- ກວດຫ້ອງທຸກໆເຊົ້າກ່ອນກິນເຂົ້າ\r\n- ປະຕິບັດຕາມຕາຕະລາງຂອງທ່ານ\r\n-ໂທລະສັບຂອງທ່ານແບັກເຕີຣີຕ້ອງບໍ່ຕຳ່ກວ່າ 30 %\r\n# ຖ້າຫາກທ່ານໃດບໍ່ປະຕິບັດຕາມກົດໂດຍທີ່ບໍ່ມີເຫດຜົນຈະຖືກປັບໝາຍຄັ້ງລະ 20000ກີບຕັ້ງແຕ່ວັນທີ່ 21/01/2024 ເປັນຕົ້ນໄປ', NULL, 'ອື່ນໆ', 0, '2024-01-21 07:08:12'),
(18, 'ເປັນຄົນດີຕັ້ງແຕ່ມື້ນີ້ເປັນຕົ້ນໄປຈົນຮອດມື້ມີຄົນມາສູ້ນຳກັນ ແລະ ແຕ່ງງານ', NULL, 'ແນວຄິດສ້າງສັນ', 1, '2024-01-21 16:26:58'),
(21, 'Studying Lesson 1 First Day \r\n学 习  xue xi  study\r\n到 语 dao yu introduction\r\n你 好 \r\n你 们 好\r\n老 师 好\r\n大 家 好\r\n看 一 看 kan yi kan   watch the dialogue\r\n老 师 好！\r\n你 好\r\n对 不 起, dui bu qi\r\n我 不 知道 我 的 教室 在 那人 wo bu zhidao wo de jiaoshi zai nar\r\n你 叫 什 么 名 子？ Ni jiao shen me ming zi?\r\n我叫 吗丁 wo jiao ma ding\r\n你 是 那 国 人？ni shi nar guo ren\r\n我 是 澳大利亚人  wo shi aodaliya ren\r\n你 的 教室 在 3 层，312  ni de jiaoshi zai san ceng, sanyao er\r\n谢谢\r\n学 一 学\r\n老师\r\n对 不 起 dui bu qi   sorry\r\n没 关 系  mei guan xi    it’s ok\r\n教室  jiaoshi  classroom\r\n在  zai   at, in\r\n那 na   where\r\n在 那\r\n名字\r\n国  guo country\r\n层 ceng  floor\r\n中 国 人  见 面 打 招呼 时， 一 般 常 用 “ 你 好 “ 。 如 果 临近 吃饭\r\n的 时间\r\n\r\n\r\n', NULL, 'ອື່ນໆ', 0, '2024-01-21 21:04:55'),
(22, 'ecommerce ຄວນຈະມີລະບົບ tracking ຫຼື ໃຫ້ຜູ້ຊື້ສາມາດຕິດຕາມຄວາມເຄື່ອນໄຫວ ຫຼື ຄວາມຄຶບໜ້າຂອງຄຳສັ່ງຊື້ເຂົາໄດ້\r\n- ການຄ້າເທິງເວັບຕ້ອງຢຶກຫຼັກການທີ່ວ່າ ສັນຍາຕ້ອງເປັນສັນຍາ\r\n- ຫຼັການໃນການຂຽນ Disclaimer: ກົດກະຕິກາມາລະຍາດ ແລະ ສິ່ງທີ່ເຮົາບໍ່ຮັບຜິດຊອບ ເພື່ອບໍ່ໃຫ້ເຂົາມາຮຽກຮ້ອງ ຫຼື ເອົາຜິດກັບເຮົາໄດ້\r\nweb ທີ່ໃຊ້ຈິງຄື: www.shoppingthai.com', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-01-22 08:43:47'),
(23, '1. ຄຳຖາມຄື: ເວລາທີ່ລູກຄ້າສັ່ງຊື່ສຳເັລດເຮົາຄວນຈະຕ້ອງຕອບແຊັດຫາລູກຄ້າທາງຊ່ອງໃດດີກວ່າລະຫວ່າງ Email ແລະ WhatsApp\r\n2. ຄຳຖາມຄື: ວິທີເຮັດສັນຍາຄວນມີວິທີແນວໃດເພື່ອໃຫ້ຖືກຕ້ອງ ແລະ ສະດວກທາງສອງຝ່າຍ?', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-01-22 08:50:11'),
(24, 'ສິ່ງທີ່ມັກຂຽນໃນ Disclaimer ຂອງ ecommerce ສຳຄັນທີ່ສຸດ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-01-22 08:59:28'),
(25, 'ບົດທີ່9 ecommerce ການປະຊາສຳພັນ web\r\n1. ການປະຊາສຳພັນຜ່ານລະບົບຄົ້ນຫາ (Search Engines)\r\n2. ເຕັກນິກໃນການລົງທະບຽນໃນລະບົບການຄົ້ນຫາ\r\n3. ການປະຊາສຳພັນຮ່ວມກັບສື່ອື່ນ ແລະ ດ້ວຍວິທີພິເສດ\r\n4. ການໃຊ້ Mailling List ໃນການສ້າງ Web Promotion', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-01-22 09:12:18'),
(26, '1. ການປະຊາສຳພັນຜ່ານລະບົບຄົ້ນຫາ (Search Engines)\r\n1. Yahoo https://www.yaho.com\r\n2. Netscape https://www.aol.com\r\n3. MSN Microsoft https://www.msn.com\r\n4. Excite https://www.excite.com', NULL, 'Websites', 0, '2024-01-22 09:16:36'),
(27, 'meta tag is important for ecommerce', NULL, 'Websites', 0, '2024-01-22 09:23:50'),
(28, 'xyum quag 3 hlis xyum nkeeg 3 taag kig', NULL, NULL, 1, '2024-01-24 06:17:11'),
(29, 'ປ່ຽນໄດ້ສິ່ງທີ່ນີ້ຊີວິດປ່ຽນທັນທີ: ຄວາມຄິດ, ການເວົ້າຈາ, ການກະທຳ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-01-25 09:31:02'),
(30, 'ບົດທີ່1:\r\n1. ນິຍາມຂອງ ecommerce:  ໝາຍເຖິງການຄ້າທຸກປະເພດທີ່ດຳເນີນການໂດຍຜ່ານສື່ເອເລັກໂທຣນິກເຊັ່ນ: Internet, Fax, Telephone, TV Media, ໂທລະສັບ...\r\n2. ຮູບແບບຂອງ ecommerce ມີຢູ່ 3 ຮູບແບບຄື: B2B, B2C, C2C', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-02-04 16:27:45'),
(31, 'kev sib yuav ntxov tsis zoo rau yus vim:\r\n1 tsis tau txawj khwv noj\r\n2 tsis sib nkag sib\r\n3 tsis tau ua hluas lawm, tsis muaj kev txawj ntse', NULL, NULL, 1, '2024-02-06 22:15:55'),
(32, 'ພະນັກງານ 5 ປະເພດ:\r\n1 ໂງ່ ແລະ ຂິ້ຄ້ານ: ບໍ່ຄິດ, ບໍ່ອ່ານ, ບໍ່ປະກອບສ່ວນ...\r\n2 ສ້າງ: ໂງ່ ແຕ່ຂະຫຍັນ\r\n3 ສະຫຼາດ ແຕ່ຂີ້ຄ້ານ: ຄັດຂວາງ ແຕ່ບໍ່ລົງມືເຮັດ\r\n4 ຕິດດາວ: ສະຫຼາດ ແລະ ຂະຫຍັນ ວາງແຜນເອງ, ສ້າງເອງ, ວາງແຜນໃຫ້ຫົວໜ້າໃຫ້ເຮັດຕາມ, ນົກອິນຊີ, ດາວແດງ\r\n5: ສຸດງ່າໃດ ກິນງ່ານັ້ນ: ປັບຕົວໄວ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-02-06 22:25:31'),
(33, '1 ຄົນລະດັບລຸ່ມ ຄວາມສຳເລັດມີໜ້ອຍແຕ່ຈຳນວນຄົນມີຫຼາຍ \r\n2 ຄົນລະດັບກາງ ຄວາມສຳເລັດພໍດີກັບຈຳນວນຄົນ\r\n3 ຄົນລະດັບສູງ ຄວາມສຳເລັດມີຫຼາຍ, ຄຸນນະພາບຂອງຄວາມສຳເລັດມີຫຼາຍ ແຕ່ຄົນສຳເລັດມີໜ້ອຍ\r\nເບິ່ງລະດັບຄົນ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-02-06 22:35:01'),
(34, ' 7 ຫຼັກການການຕັ້ງລາຄາສິນຄ້າ:\r\n1. ອາພິນິຫານເລກ 9 ເຊັ່ນ: 99000ກີບ\r\n2. ສິນຄ້າລາຄາສູງ: ຫ້າມໃຊ້ເລກກົມເຊັ່ນ: 500000ກີບ, 1000000ກີບ ໃຫ້ໃຊ້ເລກເສດເຊັ່ນ: 499000ກີບ, 999000ກີບ\r\n3. ຍິ່ງສັ້ນຍິ່ງຖືກເຊັ່ນ: 99000.00ກີບ ແລະ 99000ກີບ\r\n4. ຕັ້ງລາຄາເປັນຊຸດເຊັ່ນ: ຊື້2ແຖມ1\r\n5. ບອກລາຄາທີ່ລຸດເປັນ % ເຊັ່ນ: 1000000ກີບ ຫຼຸດ 10 % ເປັນຫຼຸດ 100000ກີບ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-02-06 22:45:37'),
(35, '30 ຄຳຄົມແຮງບັນດານໃຈຄົນລະດັບໂລກ:\r\n1. ຖ້າເຈົ້າຢາກລວຍ ຫ້າມໃຫ້ຕົນເອງມີຂໍ້ອ້າງ (Robert mizaki)\r\n2. ເວລາຂອງເຈົ້າມີຈຳກັດ ເພາະສະນັ້ນ ຫ້າມເສຍເວລາໃຊ້ຊີວິດຕາມແບບຊີວິດຂອງຄົນອື່ນ steve job\r\n3. ເມື່ອເຈົ້າຂາຍຂອງຄົນທຳອິດທີ່ຈະເຊື່ອຖືຄືເຈົ້າຈະເປັນຄົນແປກໜ້າ ເພື່ອນຈະຕັ້ງກຳແພງໃສ່ເຈົ້າ ເພື່ອນກິນຈະຕີຕົວອອກຫ່າງ, ຄອບຄົວຈະເບິ່ງແຄຣນເຈົ້າ ແຕ່ວັນທີ່ເຈົ້າປະສົບຄວາມສຳເລັດ ເຈົ້າເປັນຄົນຈ່າຍໃນທຸກຄັ້ງທີ່ລວມຕົວກັນຫຼືສັງສານລືຄ່ຳແຕ່ເຈົ້າຈະພົບວ່າທຸກຄົນຈະປາກົດຕົວຍົກເວັ້ນຄົນແປກໜ້າ ( Jack Ma)\r\n4. ຄົນທີ່ມົ່ວໃຊ້ເວລາໄປກັບການຈັບຜິດຄົນອື່ນມັກຈະບໍ່ມີເວລາແກ້ໄຂຕົນເອງ ( Ar jonah)\r\n5. ບໍ່ວ່າເຈົ້າຈະມີພອນສະຫວັນ ຫຼື ມານະພະຍາຍາມເທົ່າໃດ ບາງຢ່າງກໍ່ຕ້ອງໃຊ້ເວລາ ເຈົ້າບໍ່ສາມາດຄອກລູກໄດ້ພາຍໃນເດືອນດຽວ ໂດຍໃຊ້ຄົນອຸ່ນທ້ອງ 9 ຄົນ ( Wonley ma fack)\r\n6. ເມື່ອເຈົ້າພົບວ່າຕົນເອງຕົກລົງໄປໃນຫຼຸມສິ່ງສຳຄັນທີ່ສຸດເຈົ້າຄວນເຮັດຄື ຫ້າມຂຸດຫຼຸມນັ້ນໃຫ້ເລິກກວ່າເກົ່າ ( Wonley ma fack)\r\n7. ຄົນທີ່ເບິ່ງໂລກໃນແງ່ຮ້າຍຈະເຫັນອຸປະສັກຢູ່ໃນທຸກໆໂອການ ສ່ວນຄົນເບິ່ງໂລກໃນແງ່ດີຈະເຫັນໂອກາດຢູ່ໃນທຸກໆອຸປະສັກ (Winstone churn) \r\n8. ເຈົ້າຕ້ອງເຊື່ອໃນສິ່ງທີ່ຢູ່ໃນໃຈຂອງເຈົ້າແລ້ວ ໃຊ້ສະໝອງໃນການຕັດສິນໃຈ （michel dobert)\r\n9. ຊີວິດຄົນເຮົານັ້ນແສນສັ້ນ ຫ້າມມົ່ວເສຍເວລາກັບຄົນບໍ່ເອົາຖ່ານ ( jaf feso)\r\n10. ເຄິ່ງໜຶ່ງຂອງຄວາມສະຫຼາດຄືການທີ່ເຈົ້າຮູ້ວ່າຕົນເອງໂງ່ເລື່ອງໃດ (david kero)', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-02-06 23:17:08'),
(36, '11. ຖ້າເຈົ້າຍັງບໍ່ເລີກເປັນກົບໃນກະລາເຈົ້າຈະບໍ່ມີທາງຮູ້ເລີຍວ່າ ໂລກນີ້ກວ້າງໃຫຍ່ພຽງໃດ ( Anjolina joly)\r\n12. ຂ້ອຍມັກເລືອກຄົນຂີ້ຄ້ານມາເຮັດວຽກຍາກໆ ເພາະຄົນເຫຼົ່ານີ້ຈະຄິດວ່າ ຈະເຮັດແນວໃດໃຫ້ມັນງ່າຍ (Bill kate)\r\n13. ທ້າຍສຸດແລ້ວມັນບໍ່ສຳຄັນວາເຈົ້າມີຊີວິດຢູ່ຈັກປີ ສິ່ງສຳຄັນກວ່າຄື: ຕອນເຈົ້າມີຊີວິດຢູ່ເຈົ້າໃຊ້ມັນດີເທົ່າໃດ ( Araham bincon)\r\n14. ໃຊ້ຊີວິດດາວກັບວ່າເຈົ້າຈະເສຍຊີວິດມື້ອື່ນ ແຕ່ຈົ່ງຮຽນຮູ້ກັບວ່າ ເຈົ້າຈະມີຊີວິດຢູ່ຕະຫຼອດໄປ ( mahatama khanthee) \r\n15. ຄົນທີ່ລົ້ມເຫຼວຈະເໜືອນກັນຢູ່ຢ່າງໜຶ່ງຄຶ ພວກເຂົາທຸກຄົນມີແຕ່ຄຳເວົ້າວ່າເບິ່ງກ່ອນ ( Jack Ma)\r\n16. ທ້າຍທິດສຸດແລ້ວສິ່ງທີ່ຈະວັກຕົວເຈົ້ານັ້ນບໍ່ແມ່ນເຈົ້າທຳມາຫຼາຍເທົ່າໃດ ແຕ່ອັນໃດແດ່ທີ່ເຈົ້າເຮັດສຳເລັດຕາງຫາກ ( donuthrum) \r\n17. ມີຄົນຫຼາຍໃຊ້ເງິນທີ່ພວກເຂົາບໍ່ໄດ້ຫາເອງຊື້ສິ່ງທີ່ພວກເຂົາບໍ່ໄດ້ຕ້ອງການເພື່ອໄປອວດຄົນທີ່ພວກເຂົາບໍ່ມັກ ( wilsmith) \r\n18. ບໍ່ວ່າເຈົ້າຈະຄິດວ່າຕົນເອງເກັ່ງເທົ່າໃດ ເຈົ້າກໍ່ບໍ່ເກັ່ງພໍທີ່ຈະໄປດູຖູກໃຜກໍ່ໄດ້ 2（ paul walker)\r\n19. ຂ້ອຍບໍ່ໄດ້ລົ້ມເຫຼວ ຂ້ອຍພຽງແຕ່ພົບກັບ ໜຶ່ງໝື່ນວິທີທີ່ໃຊ້ງານບໍ່ໄດ້ ( Thomus adison)\r\n20. ເລີ່ມຕົ້ນດ້ວຍດີເທົ່າກັບສຳເລັດໄປແລ້ວເຄິ່ງໜຶ່ງ ( arithoter)', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-02-06 23:42:01'),
(37, '21. ຢາກໃຫ້ໃຜເຮັດແນວໃດກັບເົຮາ ເຮົາຕ້ອງເຮັດແນວນັ້ນກັບເຂົາກ່ອນ ( Bradly duple)\r\n22. ການເຮັດວຽກເຮັດໃຫ້ເຈົ້າຮູ້ຄວາມໝາຍ ແລະ ໜ້າທີ່ ຖ້າບໍ່ມີງານຊີວິດກໍ່ວ່າງເປົ່າ (stevephen hin)\r\n23. ຫ້າມຕັດສິນສິ່ງທີ່ເຂົາເຄີຍເປັນມາກ່ອນປ່ອຍໃຫ້ເຂົາໄດ້ສະແດງຕົວຕົນແລ້ວ ເບິ່ງທີ່ປະຈຸບັນບໍ່ແມ່ນອາດີດ ( thomy tanstund)\r\n24. ຈະກັງວົນໄປເຮັດຫຍັງ ຖ້າເຈົ້າເຮັດດີທີ່ສຸດເທົ່າທີ່ຈະເຮັດໄດ້ແລ້ວ ຄວາມກັງວົນບໍ່ເຄີຍເຮັດໃຫ້ອັນໃດດີຂື້ນເລີຍ (Vondisny)\r\n25. ເຈົ້າບໍ່ມີທາງຢູ່ໃຫ້ 500 ລ້ານຄົນໄດ້ ໂດຍທີ່ບໍ່ມີໃຜບາງຄົນເປັນສັດຕູ (Mark zuckerberge)\r\n26. ຄົນມັກຄິດວ່າຂ້ອຍເຮັດບໍ່ໄດ້ແຕ່ຄົນລວຍຈະຄິດວ່າ ຈະເຮັດແນວໃດ ( Robert Mizaki)\r\n27. ຄົນທີ່ບໍ່ເຄີຍເຮັດຜິດຄືຄົນທີ່ບໍ່ເຄີຍເຮັດຫຍັງເລີຍ (Albert EIstyle)\r\n28. ການເຮັດໃຫ້ຕົນເອງຕ່າງຈາກຄົນອື່ນນັ້ນງ່າຍ ແຕ່ເຮັດໃຫ້ດີກວ່າຄົນອື່ນນັ້ນຍາກຍິ່ງກວ່າ ( Jonaran aif)\r\n29. ຄວາມສຳເລັດເບິ່ງເໝືອນວ່າຈະເສື່ອມຕໍ່ກັບການກະທຳ ຄົນທີ່ປະສົບຄວາມສຳເລັດເຂົາໄປຕໍ່ແມ້ພວກເຂົາເຮັດຜິດພາດ ແຕ່ພວກເຂົາກໍ່ບໍ່ຍອມແພ້ ( conrad histon)\r\n30. ຊີວິດໄວຮຽນ ແລະ ຊີວິດຈິງແຕກຕ່າງກັນທີ່ຊີວິດໄວຮຽນ ເຮົາໄດ້ຮັບການສອນບົດຮຽນກ່ອນເຮັດແບບທົດສອບ ແຕ່ໃນຊີວິດຈິງນັ້ນ ເົຮາຈະໄດ້ເຮັດແບບທົດສອບທີ່ຈະສອນບົດຮຽນໃຫ້ກັບເຮົາ (Tom modet)', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-02-07 00:07:16'),
(38, 'ໝົກມຸ່ມຄວາມສຳເລັດ ຫ້າມຂີ້ຄ້ານ', NULL, NULL, 0, '2024-02-07 00:08:39'),
(39, 'ຈົ່ງຫ້າມຂີ້ຄ້ານ ຍ້ອນຄົນທີ່ລໍເຮົາປະສົບຄວາມສຳເລັດກຳລັງແກ່ຕົວຂື້ນທຸກວັນ (ພໍ່ແມ່)\r\nໃຫ້ພໍ່ແມ່ພູມໃຈ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-02-07 00:12:04'),
(40, 'cog paj tau kev dav cog pos tau kuv ti\r\n', NULL, NULL, 1, '2024-02-07 00:48:22'),
(41, 'ຖ້າຢາກລວຍໃຫ້ຂາຍຂອງກັບ 4 ກຸ່ມຄົນນີ້:\r\n1. ຜູ້ຍິງ\r\n2. ຄົນຂີ້ຄ້ານ\r\n3. ຜູ້ສູງອາຍຸ\r\n4. ເດັກ\r\n5. ສັດລ້ຽງ', NULL, NULL, 1, '2024-02-07 01:00:56'),
(42, 'ເງິນບໍ່ພໍໃຊ້ແກ້ແບບນີ້ ປ່ຽນທັກສະການຫາເງິນ: ປ່ຽນຄວາມຄິດເຊັ່ນ: ທັກສະການຂາຍ', NULL, NULL, 1, '2024-02-07 01:06:48'),
(43, 'ສາເຫດທີ່ຄົນຢ້ານໃນການເວົ້າ:\r\n1. ບໍ່ຮູ້ໃນສິ່ງທີ່ຈະເວົ້າ\r\n2. ບໍ່ຮູ້ວິທີເວົ້າ\r\n3. ຄິດລົບ ຢ້ານເວົ້າໄປແລ້ວມັນຜິດພຸ້ນ ຜິດພີ້\r\nວິທີແກ້ຄື: \r\n1. ກ່ອນຈະເວົ້າເລື່ອໃດ ໃຫ້ເຈົ້າເຂົ້າໃຈເລື່ອງນັ້ນ\r\n2. ຮຽນຮູ້ວິທີເວົ້າຈາກຜູ້ທີ່ມີປະສົບການ\r\n3. ປ່ຽນຊຸດຄວາມຄິດລົບມາເປັນຊຸດຄວາມຄິດບວກ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-02-07 01:18:44'),
(44, 'laravel+livewire ecommerce1 login and register ໃຫ້ໄດ້', NULL, NULL, 1, '2024-02-13 16:09:31'),
(45, 'blockchain', NULL, NULL, 1, '2024-02-13 17:43:12'),
(46, 'ແມ່ນຫຍັງເຮັດໃຫ້ສອງຄົນມີຊີວິດທີ່ແຕກຕ່າງກັນ:\r\n1.1 ເລີ່ມຈາກສິ່ງນ້ອຍໆຕົ້ນທຶນຄື ໄອເດຍ ເຮັດແບບບໍ່ໃຊ້ເງິນຫຼືໃຊ້ເງິນຄົນອື່ນ\r\n2.1 ຕົ້ນທຶນຂອງຄົນເຮົາບໍ່ເທົ່າກັນບໍ່ມີທືນເພາະເກີດມາຈົນຈື່ງເຮັດຫຍັງບໍ່ໄດ້\r\n1.2 ຮຽນເພື່ອເອົາຄວາມຮູ້ໄປສ້າງທຸລະກິດ\r\n2.2 ຮຽນເພື່ອເອົາວຸດທິໄປສະໝັກງານ\r\n1.3 ຊີວິດຂອງເຮົາຂື້ນຢູ່ກັບຕົວເອງ\r\n2.3 ຊີວິດຂອງເຮົາຂື້ນຢູ່ກັບຄົນອື່ນ\r\n1.4  ປ່ຽນຕົວເອງເພື່ອຊີວິດໃໝ່ທີ່ດີກວ່າເກົ່າ\r\n2.4 ບໍ່ປ່ຽນຕົວເອງເພື່ອຮັກສາຮູບແບບຊີວິດເກົ່າໆເອົາໄວ້\r\n1.5 ພັດທະນາຕົວເອງເພື່ອຂະຫຍາຍທຸລະກິດ (ເພີ່ມສັກກະຍາພາບ)\r\n2.5 ພັດທະນາຕົວເອງເພື່ອເງິນເດືອນເພີ່ມ (ເພີ່ມວຸດທິ)\r\n1.6 ສ້າງໜີ້ເພື່ອສ້າງທຸລະກິດ (ສ້າງລາຍໄດ້)\r\n2.6 ສ້າງໜີ້ເພື່ອບໍລິໂພກ (ສ້າງລາຍຈ່າຍ)\r\n1.7 ໂຟກັສທີ່ໂອກາດມີເຫດຜົນສຳລັບກ້າວໄປຂ້າງໜ້າ\r\n2.7 ໂຟກັສທີ່ອຸປະສັກມີເຫດຜົນສຳລັບການຢູ່ທີ່ເກົ່າ\r\n1.8 ເປັນຜູ້ນຳໝັ້ນໃຈຕົວເອງມີຄວາມຄິດສ້າງສັນຄິດນອກກອບ\r\n2.8 ເປັນຜູ້ຕາມບໍ່ໝັ້ນໃຈໃນຕົວເອງ ຖ້າຟັງຄຳສັ່ງຢູ່ໃນກອບ\r\n1.9 ມີຊີວິອິດສະຫຼະ ມີເວລາໄປຮຽນຮູ້ສິ່ງໃໝ່ໆ\r\n2.9 ບໍ່ມີອິດສະຫຼະ ເວລາສ່ວນໃຫຍ່ເຮັດແຕ່ງານ\r\n1.10 ຮັບຜິດຊອບທຸລະກິດທັງລະບົບງານໜັກບໍ່ຢ້ານ\r\n2.10 ຮັບຜິດຊອບພຽງໜ້າທີ່ຕົວເອງບໍ່ມັກງານໜັກ\r\n1.11 ບໍ່ອົດທົນກັບຮູບແບບຊີວິດທີ່ບໍ່ຕ້ອງການ\r\n2.11 ອົດທົນສູງຮັບຮູບແບບຊີວິດທີ່ບໍ່ຕ້ອງການ\r\n1.12 ຄິດໃຫຍ່ ຕ້ອງລວຍເທົ່ານັ້ນຊີວິດຕ້ອງດີຂື້ນ\r\n2.12 ຄິດນ້ອຍພຽງຢູ່ໄດ້ກໍ່ພໍບໍ່ລວຍກໍ່ໄດ້\r\n1.13 ເຊື່ອວ່າສຳເລັດໄດ້ເຖິງຈະບໍ່ພ້ອມ ແລະ ເຊື່ອວ່າຄົນເຮົາພັດທະນາໃຫ້ເກັ່ງໄດ້\r\n2.13 ເຊື່ອວ່າຈະສຳເລັດຕ້ອງພ້ອມ ແລະ ເກັ່ງເບິ່ງຕົວເອງວ່າບໍ່ເກັ່ງ ແລະ ພັດທະນາບໍ່ໄດ້\r\n1.14 ມັກໃຊ້ເວລາວ່າງຫາຄວາມຮູ້ໃໝ່ໆເພື່ອພັດທະນາທຸລະກິດ\r\n2.14 ມັກໃຊ້ເວລາວ່າງພັກຜ່ອນ ສ່າງສັນ ຫຼື ຄວາມບັນເທິງ\r\n1.15 ຕ້ອງສຳເລັດເທົ່ານັ້ນ ແລະ ກ້າລົງມືເຮັດບໍ່ຢ້ານຜິດພາດ (ເຮັດຜິດກໍ່ແກ້ໄຂ)\r\n2.15 ຢາກສຳເລັດແຕ່ບໍ່ກ້າເຮັດຫຍັງ ເພາະຢ້ານຜິດພາດ (ເຮັດຜິດກໍ່ແກ້ໂຕ)\r\n1.16 ຮູ້ວ່າແຕ່ລະວັນຕ້ອງເຮັດຫຍັງແນ່ ແລະ ແລ້ວເມື່ອໃດ\r\n2.16 ບໍ່ມີແຜນວ່າໃນແຕ່ລະວັນຕ້ອງເຮັດຫຍັງແນ່\r\n1.17 ເຮັດສິ່ງທີ່ຮັກ ມີຄວາມສຸກກັບວຽກ ແຕ່ລະວັນຜ່ານໄປຢ່າງວ່ອງໄວ\r\n2.17 ເຮັດສິ່ງທີ່ໄດ້ເງິນ ຕ້ອງອົດທົນເຮັດວຽກເວລາແຕ່ລະຊົ່ວໂມງຜ່ານໄປຢ່າງຊ້າໆ\r\n1.18 ໃຊ້ຄວາມຄິດເພື່ອສ້າງຖານະເປັນສ່ວນໃຫຍ່\r\n2.18 ໃຊ້ຄວາມຄິດກັບການເຮັດວຽກເປັນສ່ວນໃຫຍ່\r\n1.19 ມັກພັດທະນາຕົວເອງ ແລະ ຮຽນຮູ້ສິ່ງໃໝ່ໆຢູ່ຕະຫຫຼອດເວລາ ເພື່ອພັດທະນາທຸລະກິດ\r\n2.19 ຈະພັດທະນາຕົວເອງ ແລະ ຮຽນຮູ້ສິ່ງໃໝ່ໆເທົ່າທີ່ຈຳເປັນເພື່ອຮັກສາຕຳແໜ່ງ\r\n1.20 ໄດ້ຮັບລາງວັນເປັນຄຸນນະພາບຊີວິດທີ່ເຮົາຕ້ອງການ\r\n2.20 ໄດ້ຮັບລາງວັນເປັນໃບປະກາດໂລ່ ແລະ ຄຳຊົມ\r\n1.21 ເປົ້າໝາຍຊັດເຈນ ສາມາດລະບຸໄດ້ແບບເຈາະຈົງ\r\n2.21 ເປົ້າໝາຍກວ້າງເລື່ອນລອຍ ບໍ່ຊັດເຈນບໍ່ເຈາະຈົງ\r\n1.22 ເປັນເຄື່ອງປັ່ນໄຟ ປັ່ນໄຟໃຊ້ເອງ ມີແຮງບັນດານໃຈຢ່າງຕໍ່ເນື່ອງ\r\n2.22 ເປັນແບັດເຕີຣີ້ ເມື່ອແບັດໝົດຕ້ອງໄປສາກ (ໃຫ້ຄົນອື່ນເປັນແຮງຈູງໃຈ)\r\n1.23 ປະຢັດ ຊື້ແຕ່ຂອງຈຳເປັນ ແລະ ໃຊ້ຢ່າງຮູ້ຄ່າ\r\n2.23 ຟຸ່ມເຟື່ອຍ ຊື້ຂອງທີ່ບໍ່ຈຳເປັນໄປວາງຖີ້ມ ບໍ່ໄດ້ໃຊ້\r\n1.24 ຫາທີ່ປຶກສາທີ່ຮູ້ແທ້ ຊ່ຽວຊານ ຊ່ວຍຄິດ\r\n2.24 ຂໍຄຳປຶກສາຈາກຄົນໃກ້ຕົວ ອາດຈະບໍ່ຊ່ຽວຊານ\r\n1.25 ມີວິໄສທັດພ້ອມທີ່ຈະເມື່ອຍ ແລະ ກ້າທີ່ຈະລົງທືນເພື່ອອານາຄົດ\r\n2.25 ບໍ່ມີວິໄສທັດບໍ່ຍອມເມື່ອຍ ແລະ ບໍ່ກ້າລົງທືນເພື່ອອານາຄົດ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-02-14 15:58:34'),
(47, 'blockchain', NULL, NULL, 1, '2024-02-19 20:01:57'),
(48, 'ການ upload project to github \r\n1. git init\r\n2. git add .\r\n3. git commit -m \"first commit\"\r\n4. git status\r\n5. git remote add origin https://....\r\n6. git push -u origin master\r\nການເພີ່ມ file ໃນ project ເທິງ github\r\n1. git init\r\n2. git add .\r\n3. git commit -m \"add file\"\r\n4. git push\r\nການ update file ໃນ project ເທິງ github\r\n1. git init\r\n2. git add filename\r\n3. git commit -m \"add file\"\r\n4. git push\r\nການລຶບ file ໃນ project ເທິງ github\r\n1. git init\r\n2. git restore filename\r\n3. git commit -m \"add file\"\r\n4. git push', NULL, 'CodingProgramming', 0, '2024-03-06 19:34:53'),
(49, 'ວັນຈັນ: ຊົ່ວໂມງ1: Lect. ວິຊາເລືອກ (FNS313)\r\nວັນຈັນ: ຊົ່ວໂມງ2: Ex.ສຳມະນາ 1 (FNS208) ອຈ ບຸນມີ\r\nວັນຈັນ: ຊົ່ງໂມງ3: Lab. ຄວາມປອດໄພຂອງເວບໄຊ (CS005) ອຈ ເພັດ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-18 08:55:11'),
(50, 'ວັນອັງຄານ: ຊົ່ວໂມງ1: Lect. ມາຊີນເລີນນິ່ງ (Machine Learning) (FNS312) ອຈ ສຸກປະເສີດ\r\nວັນອັງຄານ: ຊົ່ວໂມງ2: Lect. ການພັດທະນາເວບໄຊດ້ວຍພາສາ ASP.net2+framework (FNS313) ອຈ ສຸລິດ\r\nວັນອັງຄານ: ຊົ່ວໂມງ3: Lect. ຄວາມປອດໄພຂອງເວບໄຊ (FNS313) ອຈ. ເພັດ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-18 08:57:43'),
(51, 'ວັນພຸດ:ຊົ່ວໂມງ1: Lab.ວິຊາເລືອກ (FNS312) ອຈ ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-18 08:59:17'),
(52, 'ວັນພະຫັດ: ຊົ່ວໂມງ1:  Lect. ວິສະວະກຳຊັອບແວ (MA201) ອຈ ບົວສົດ\r\nວັນພະຫັດ: ຊົ່ວໂມງ3: Lect. ມະນຸດ​ສຳພັນ (FNS210) ອຈ ຈັນດາວັນ\r\nວັນພະຫັດ: ຊົ່ວໂມງ4: Lab. ການຂຽນໂປຣແກຣມເທິງມືຖື 2(CS007) ອຈ ບຸນມີ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-18 09:01:36'),
(53, 'ວັນສຸກ: ຊົ່ວໂມງ3: Lect. ການຂຽນໂປຣແກຣມເທິງມືຖື 2 (FNS207)\r\nອຈ ບຸນມີ\r\nວັນສຸກ: ຊົ່ວໂມງ4: Lab. ການພັດທະນາເວບໄຊດ້ວຍພາສາ \r\n ASP.net2+framework (MA201) ອຈ ສຸກປະເສີດ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-18 09:03:32'),
(54, '10000 kip per 10000 MB', NULL, NULL, 1, '2024-03-18 13:38:18'),
(55, 'ຄວາມປອດໄພເວັບ : Web Security\r\nຜະລິດຕະພັນຂອງ microsoft\r\nວິຊານີ້ຈະໄດ້ຮຽນຮູ້ກ່ຽວກັບຄວາມປອດໄພພື້ນຖານຂອງເວັບໄຊ້, ຄວາມສ່ຽງ ແລະ ໄພຄຸກຄາມ, ຊື່ງລົງເລິກໃນການສຶກສາຄວາມສ່ຽງ, ໄພຄຸກຄາມສຳລັບເວັບໄຊ້, ວິທີໃນການຈັດການຄວາມສ່ຽງ, ຫຼັກການໃນການໂຈມຕີເລວໄຊ້ດ້ວຍວິທີການຕ່າງໆ, ການບຸກໂຈມຕີດ້ວຍ SQL Injection(SQL Injection Attack), ການບຸກໂຈມຕີດ້ວຍ Cross-Site Scripting, ການບຸກໂຈມຕີດ້ວຍ RemoteLocal File including, ການບຸກໂຈມຕີດ້ວຍ Small issues and Reference, ການປ້ອງກັນການໂຈມຕີດ້ວຍ SQL Injection, Cross-Site Scripting ແລະ Remote/Local File including. ນອກຈາກນີ້ຍັງໄດ້ຮຽນຮູ້ ແລະ ທົດລອງການພັດທະນາເວັບໄຊ້ໃຫ້ມີຄວາມປອດໄພ\r\n+ ຈຸດປະສົງ ແລະ ຄາດໝາຍຂອງວິຊານີ້:\r\nພາຍຫຼັງຮຽໜຈົບວິຊານີ້ ນັກສຶກສາສາມາດ:\r\n- ຮຽນຮູ້ ເຂົ້າໃຈກ່ຽວກັບຄວາມປອດໄພ, ຄວາມສ່ຽງ ແລະ ໄພຄຸກຄາມເວັບໄຊ້, ການບຸກໂຈມຕີ, ການບໍລິຫານຈັດການຄວາມສ່ຽງ ແລະ ການປ້ອງກັນການບຸກໂຈມຕີ.\r\n- ສາມາດສ້າງການຈຳລອງການບຸກໂຈມຕີເວັບດ້ວຍ SQL Injection, Cross-Site Scripting, Remote/Local File including ແລະ ການປ້ອງກັນການໂຈມຕີໄດ້.\r\n- ສາມາດນຳຄວາມຮູ້ທີ່ໄດ້ຈາກການຮຽນໄປຜັນຂະຫຍາຍ ແລະ ປະຕິບັດຕົວຈິງດ້ານຄວາມປອດໄພຂອງເວັບໄຊ້ໃຫ້ນຳໄປໃຊ້ວຽກງານໄດ້', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-18 13:41:12'),
(56, '', NULL, NULL, 1, '2024-03-18 13:42:15'),
(57, 'ບົດທີ່1: ຄວາມຮູ້ເບື້ອງຕົ້ນກ່ຽວກັບຄວາມປອດໄພ\r\nບົດທີ່2 : Information Gathering\r\nບົດທີ່3 : ຄວາມສ່ຽງຕໍ່ໄພຄຸກຄານ ແລະ ວິທີການ\r\nບົດທີ່4:  ການໂຈມຕີດ້ວຍ SQL Injection(SQL Injection Attack)\r\nບົດທີ່5:  ການນຳໃຊ້ເຄື່ອງມີ SQL Injection(SQL Injection Tools)\r\nບົດທີ່6: ການປ້ອງກັນການໂຈມຕີດ້ວຍ SQL Injection(Prevent SQL Injection Attack)\r\nບົດທີ່7: ການບຸກໂຈມຕີດ້ວຍ Cross-Site Scripting (XSS Attack)\r\nບົດທີ່8: ການປ້ອງກັນການບຸກໂຈມຕີດ້ວຍ Cross-Site Scripting (Prevent XSS Attack)\r\nບົດທີ່9: ການບຸກໂຈມຕີ ແລະ ການປ້ອງກັນ Remote/Local File including\r\nບົດທີ່ 10 WebCruiser ແລະ API Testing', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-18 13:49:44'),
(58, 'Kali Linux ໃນ Virtual Box\r\nLinux version', NULL, NULL, 1, '2024-03-18 13:53:55'),
(59, 'sdfsd', NULL, NULL, 1, '2024-03-18 14:00:53'),
(60, 'dfgdfgdgd', NULL, NULL, 1, '2024-03-18 14:13:01'),
(61, 'dfsdfsfs', NULL, NULL, 1, '2024-03-18 14:15:47'),
(62, 'cfdsdfs', NULL, NULL, 1, '2024-03-18 20:31:08'),
(63, 'ffsf', NULL, NULL, 1, '2024-03-18 20:32:10'),
(64, 'fdgfdgfdgfd', NULL, NULL, 1, '2024-03-18 20:32:46'),
(65, 'dfsdf', NULL, NULL, 1, '2024-03-18 20:33:04'),
(66, 'dfgfdgd', NULL, NULL, 1, '2024-03-18 20:33:21'),
(67, 'fgdf', NULL, NULL, 1, '2024-03-18 20:34:24'),
(68, 'sfsds', NULL, NULL, 1, '2024-03-18 20:35:46'),
(69, 'sdfs', NULL, NULL, 1, '2024-03-18 20:36:19'),
(70, 'gdfgd', NULL, NULL, 1, '2024-03-18 20:36:57'),
(71, 'sdfs', NULL, NULL, 1, '2024-03-18 20:37:03'),
(72, 'sdfsd', NULL, NULL, 1, '2024-03-18 20:37:18'),
(73, 'sdfsd', NULL, NULL, 1, '2024-03-18 20:37:30'),
(74, 'sdsdfsd', NULL, NULL, 1, '2024-03-18 20:37:59'),
(75, 'sdfs', NULL, NULL, 1, '2024-03-18 20:38:11'),
(76, 'dfgfd', NULL, NULL, 1, '2024-03-18 20:41:56'),
(77, 'gsdffdgfd', NULL, NULL, 1, '2024-03-18 20:43:34'),
(78, 'dfgdfgd', NULL, NULL, 1, '2024-03-18 20:44:41'),
(79, 'sdfsd ', NULL, NULL, 1, '2024-03-18 20:45:35'),
(80, 'dfds', NULL, NULL, 1, '2024-03-18 20:46:19'),
(81, '', NULL, NULL, 1, '2024-03-18 20:46:58'),
(82, 'dfs', NULL, NULL, 1, '2024-03-18 20:48:15'),
(83, 'sfs', NULL, NULL, 1, '2024-03-18 20:48:39'),
(84, '', NULL, NULL, 1, '2024-03-18 20:52:50'),
(85, 'sdsfds', NULL, NULL, 1, '2024-03-18 20:53:09'),
(86, 'fsdfs', NULL, NULL, 1, '2024-03-18 20:56:18'),
(87, 'sd', NULL, NULL, 1, '2024-03-18 22:16:08'),
(88, 'xc', NULL, NULL, 1, '2024-03-19 07:25:29'),
(89, '. ແຫຼ່ງການຮຽນຮູ້ \r\n ຫໍສະໝຸດ\r\n- ມະຫາວິທະຍາໄລແຫ່ງຊາດ\r\n- ຫ້ອງອ່ານຄະນະວິທະຍາສາດທ າມະຊາດ.\r\n ອິນເຕີແນັດ\r\n- www.dusit.ac.th/~surasit_son/perfomance/paperIt-security/11it6-6.doc\r\n- http://www.etcommission.go.th', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-19 07:32:40'),
(90, 'Blockchain technology is a revolutionary and transformative innovation that has the potential to disrupt a wide range of industries and sectors. At its core, a blockchain is a decentralized and distributed digital ledger that records transactions across a network of computers. Each transaction is securely and permanently recorded in a \"block\" and linked to the previous block, creating a chain of blocks, hence the name \"blockchain.\"\r\n\r\nOne of the key features of blockchain technology is its transparency and immutability. Once a transaction is recorded on the blockchain, it cannot be altered or deleted, providing a high level of security and trust. This makes blockchain particularly well-suited for applications where transparency and security are paramount, such as financial transactions, supply chain management, and identity verification.\r\n\r\nBlockchain technology also eliminates the need for intermediaries, such as banks or third-party payment processors, by allowing direct peer-to-peer transactions. This can result in faster and more cost-effective transactions, as well as greater financial inclusion for those who are currently underserved by traditional banking systems.\r\n\r\nAnother important aspect of blockchain technology is its potential for enabling smart contracts, which are self-executing contracts terms of the agreement directly written into code. This can automate and streamline various business processes, reducing the need for manual intervention and increasing efficiency.\r\n', NULL, NULL, 1, '2024-03-19 07:46:00'),
(91, 'Machine Learning ຄືການເຮັດໃຫ້ລະບົບຄອມພິວເຕີຮຽໜຮູ້ໄດ້ຕົນເອງ ໂດຍນຳໃນ້ຂໍ້ມູນ ເຊິ່ງແຕກຕ່າງກັບການຂຽນໂປຣແກຣມທົ່ວໄປ ເພາະວ່າ Programming ຈະໃສ່ຂໍ້ມູນ (Data) ແລະ Program ເຂົ້າໄປເພື່ອໃຫ້ໄດ້ Output\r\n+ Machine Learning ໄດ້ແບ່ງອອກເປັນ 3 ແບບດັ່ງລຸ່ມນີ້:\r\n1. Supervised Learning: ຮຽນຮູ້ໂດຍມີຂໍ້ມູນມາສອນ\r\n2. Unsupervised Learning: ຮຽນຮູ້ໂດຍບໍ່ມີຂໍ້ມູນມາສອນ\r\n3. Reinforcement Learning: ຮຽນຮູ້ຕາມສະພາບແວດລ້ອມ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-19 10:39:15'),
(92, 'https://gemini.google.com/app/\r\nhttps://chat.haltech.la/\r\nhttps://openai.com/chatgpt\r\nhttps://www.sourcecodester.com/\r\nhttps://www.thaiware.com/', NULL, 'AI', 0, '2024-03-19 10:51:58'),
(93, 'test', NULL, NULL, 1, '2024-03-19 10:53:29'),
(94, 'hj', NULL, NULL, 1, '2024-03-19 11:10:15'),
(95, '55', NULL, NULL, 1, '2024-03-19 11:17:03'),
(96, 'sdsd', NULL, NULL, 1, '2024-03-19 11:24:12'),
(97, '25', NULL, NULL, 1, '2024-03-19 11:25:45'),
(98, 'ແກເ', NULL, NULL, 1, '2024-03-20 09:42:50'),
(99, 'ຫກາດ່ຫາກດ່ຫສາກ\r\n', NULL, NULL, 1, '2024-03-20 18:03:36'),
(100, 'tsadfssadfsdfsad', NULL, NULL, 1, '2024-03-20 18:03:56'),
(101, 'React is open source library for building user interfaces not a framework\r\nreact created and maintained by Facebook\r\nnpx create-react-app projectname\r\nrender is print\r\nfunctional there are {\r\nSimple functions\r\nuse function components as much as possible \r\nAbsence of this keyword solution without using state mainly responsible for the UI Stateless/Dumb/Presentational\r\n} \r\nClass {\r\nmore feature rich\r\nmaintain their own private data-state\r\ncomplex ui logic\r\nprovide lifecycle hooks\r\nstateful/smart/container\r\n}\r\nprops to show in terminal and get in array', NULL, NULL, 1, '2024-03-20 20:45:45'),
(102, 'seminar python programming language and java language', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-21 07:02:10'),
(103, 'ວິສະວະກຳຊອບແວ ແລະ ໂປຣແກຣມມິ່ງ ແຕກຕ່າງກັນແນວໃດ?\r\nວິສະວະກຳຊອບແວ ເປັນການອອກແບບ ແລະ ພັດທະນາ\r\nໂປຣແກຣມມິ່ງ ຂຽນໂປຣແກຣມ', NULL, 'CodingProgramming', 0, '2024-03-21 08:17:20'),
(104, '', NULL, NULL, 1, '2024-03-21 09:20:12'),
(105, 'ອົງກອນ ແລະ ອົງການ ແຕກຕ່າງກັນແນວໃດ\r\nອົງການ ໃຫຍ່ກວ່າ ອົງກອນ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-03-21 09:20:52'),
(106, 'ອົງການ ໃຫຍ່ກວ່າ ອົງກອນ', NULL, NULL, 1, '2024-03-21 09:27:31'),
(107, 'ຄວາມສຸກຄື: ເງິນ, ເວລາ ແລະ ສຸຂະພາບ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-03-21 09:32:51'),
(108, 'ມະນຸດສຳພັນ: ການຂີ້ຖີ່ໃນການຮຽນ', NULL, NULL, 1, '2024-03-21 13:29:23'),
(109, '1 Yes, 2 Yes, 3 No, 4 Yes, 5 Yes, 6 Yes, 7 Yes, 8 Yes, 9 Yes, 10 Yes, 11 No ,12 No, 13 Yes, 14 Yes, 15 Yes ,16 No ,17 Yes, 18 Yes, 19 Yes, 20 No', NULL, NULL, 1, '2024-03-21 13:39:30'),
(110, 'ຄວາມໝາຍຂອງມະນຸດສຳພັນ:\r\n-ມະນຸດ ແປວ່າ: ຄົນ ຫຼື ຜູ້ມີຈິດໃຈສູງ\r\n-ສຳພັນ ແປວ່າ: ຄວາມກ່ຽວຂ້ອງກັນ, ການຢູ່ຮ່ວມກັນ ຫຼື ການຕິດຕໍ່ພົວພັນກັນ\r\nອະໄວຍະວະທີ່ໃຊ້ໃນມະນຸດສຳພັນ: ຕາ, ປາກ, ກາຍ, ຫູ, ດັງ, ໃຈ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-21 14:02:19'),
(111, 'react native', NULL, NULL, 1, '2024-03-21 15:33:26'),
(112, 'Startup ຫຼື SME?\r\nStartup is backbone such as : canva, food panda\r\nSME such as: bank\r\nStartup \r\n- ນຳໃຊ້ຄວາມຄິດແບບໃໝ່ ແລະ ນະວັດຕະກຳ.\r\n- ເຕີບໂຕແບບກ້າວກະໂດດ.\r\n- ຕ້ອງການເງິນທືນຈຳນວນຫຼາຍໃນການຂະຫຍາຍ.\r\n- ສິນຄ້າ ແລະ ການບໍລິການ ສ່ວນຫຼາຍເປັນຮູບແບບອອນລາຍ.\r\nSME \r\n- ຜະລິດສິນຄ້າ ແລະ ບໍລິການທີ່ນຳໃຊ້ໃນຊີວິດປະຈຳວັນ.\r\n- ມີການເຕີບໂຕແບບຄ່ອນເປັນຄ່ອຍໄປ ແລະ ຄົງທີ່.\r\n- ຕ້ອງການສ້າງກຳໄລຕັ້ງແຕ່ເລີ່ມ ເພື່ອການຂະຫຍາຍທຸລະກິດ\r\n- ສິນຄ້າ ແລະ ການບໍລິການສ່ວນໃຫຍ່ເປັນຮູບແບບອອຟລາຍ.\r\n', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-03-22 12:19:57'),
(113, '', NULL, NULL, 1, '2024-03-23 18:11:51'),
(114, 'ຄວາມປອດໄພຂອງເວັບໄຊ້, ມີຫຼາຍແນວຄວາມຄິດເຊັ່ນວ່າ: ', NULL, NULL, 1, '2024-03-25 13:38:16'),
(115, 'kali linux, wireless attacks, Information Gathering', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-25 13:48:33'),
(116, 'tssfasdfsa', NULL, NULL, 1, '2024-03-25 13:51:38'),
(117, 'vmware, internet, kali linux', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-25 13:54:08'),
(118, 'web security is ນັກທົດສອບລະບົບ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-25 14:04:42'),
(119, 'bcel.com.la\r\n', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-25 14:15:01'),
(120, 'nmap', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-25 14:16:24'),
(121, 'ປະເພດຂອງຊອບແວຣ:\r\n1. System Software\r\n2. Application Software\r\n3. Scientific Software/Engineering\r\n4. Embedded Software\r\n5. Product-Line Software\r\n6. Web Application\r\n7. Mobile Application\r\n8. Artificial Intelligence', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-28 08:37:51'),
(122, 'ເວາລາ, ຕົ້ນທຶນ ແລະ ຄຸນນະພາບ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-28 08:42:46'),
(123, 'ມະນຸດສຳພັນ ບົດທີ່2: ແນວຄວາມຄິດ-ທິດສະດີກ່ຽວກັບມະນຸດ\r\n- ອາຫານ\r\n- ເຄື່ອງນຸ່ງຫົ່ມ\r\n- ຢາປົວພະຍາດ\r\n- ທີ່ຢູ່ອາໄສ\r\n2 ແນວຄວາມຄິດແບບສັງຄົມວິທະຍາ\r\n- ກົດໝາຍ ຖືກຜິດ\r\n- ວິຖີປະຊາ ເປັນກາລະເທສະ\r\n- ຈາຮີດປະເພນີ: ພະຍາຍາມຢ່າເຮັດຜິດ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-03-28 14:27:46'),
(124, 'React is open source library for building user interfaces not a framework\r\nreact created and maintained by Facebook\r\nnpx create-react-app projectname\r\nrender is print\r\nfunctional there are {\r\nSimple functions\r\nuse function components as much as possible \r\nAbsence of this keyword solution without using state mainly responsible for the UI Stateless/Dumb/Presentational\r\n} \r\nClass {\r\nmore feature rich\r\nmaintain their own private data-state\r\ncomplex ui logic\r\nprovide lifecycle hooks\r\nstateful/smart/container\r\n}\r\nprops to show in terminal and get in array\r\n', NULL, 'CodingProgramming', 0, '2024-03-31 17:54:23'),
(125, 'teasdssfdasdfsdfa', NULL, NULL, 1, '2024-04-01 13:32:06'),
(126, 'ເຮັດວຽກມີປະສິດທິພາບຄືຜົນຫຼັບທຽບກັບເວລາ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-04-01 14:47:44'),
(127, 'ວິທີ ແລະ ຂັ້ນຕອນໃນການຕິດຕັ້ງ vue.js project\r\n1 npm install -g @vue/cli\r\n2 vue create project_name\r\n3 cd project_name\r\n4 npm run serve\r\n5 npm run build', NULL, 'CodingProgramming', 0, '2024-04-02 10:44:35'),
(128, 'ຈິດໃຈສຳຄັນ', NULL, NULL, 1, '2024-04-02 17:00:54'),
(129, 'Hooks:\r\nNo breaking changes.\r\nCompletely option and 100 % backwards-compatible.', NULL, 'CodingProgramming', 0, '2024-04-03 14:41:12'),
(130, 'jsx : JavaScript XML extension to the Javascript language syntax.\r\nwrite xml like code for element and component.\r\nJSX tags have a tag name, attributes, and children.\r\nJSX is not a necessity to write React applications.\r\nJSX makes your react code simpler and elegant.\r\nJSX ulitmately transpile to pure JavaScript which is understood by browser', NULL, 'CodingProgramming', 0, '2024-04-03 14:59:59'),
(131, 'props: props get passed to the component\r\nfunction parameters\r\nprops are immutable\r\nprops function component\r\nthis.props - class component\r\nstate: state is managed within the component \r\nVariables declared in the function body state can be changed\r\nuseState Hook - Function Components this.state-class components\r\nsetState: alway make use of setState and never modify the state directly.\r\nCode has to be executed after the state has been updated? place that code in the call back function which is the second argument to the setState method.\r\nWhenyou have to update state based on the previous state value, pass in a function as an argument instead of the regular object', NULL, 'CodingProgramming', 0, '2024-04-03 18:33:31'),
(132, 'Lifecycle Methods\r\nMounting: When an instance of a component is being created and inserted into the DOM\r\nUpdating: When a component is being re-rendered as a result of changes to either its props or state\r\nUnmounting: When a component is being removed from the DOM\r\nError Handing: When there is an error during rendering, in a lifecycle method, or in the constructor of any child component', NULL, 'CodingProgramming', 0, '2024-04-03 22:48:43'),
(133, 'AI website:\r\nhttps://openai.com/sora\r\nhttps://chat.haltech.la/\r\nhttps://chat.openai.com/\r\nhttps://gemini.google.com/app\r\nhttps://new.express.adobe.com/\r\nfacecheck.id\r\nhttps://copilot.microsoft.com/', NULL, 'AI', 0, '2024-04-06 17:40:28'),
(134, 'ຮຽນຮູ້ - ອອກກຳລັງໄກ - ເຮັດວຽກ', NULL, 'ແນວຄິດສ້າງສັນ', 1, '2024-04-06 17:41:45'),
(135, 'Full Stack Developer\r\nSalary: 35000-50000\r\nExperience: more 3 years\r\nHybrid', NULL, 'CodingProgramming', 0, '2024-04-06 17:49:33'),
(136, 'Front End Developer\r\nSalary: 30000-50000\r\nReact.js, Nest.js, Progress SQL\r\nExperience: more 3-5 years\r\nHybrid', NULL, 'CodingProgramming', 0, '2024-04-06 17:51:13'),
(137, 'ເທັກນິກດື່ມນ້ຳເພື່ອອາຍຸຍືນ\r\n1.ດື່ມເລື້ອຍໆ: ສັງເກີດຜິວປາກເມື່ອເລີ່ມແຫ້ງ ສະແດງວ່າຮ່າງການຕ້ອງການນ້ຳແລ້ວ\r\n2.ດື່ມຈົນປັດສະວະໃສ: ຮ່າງກ່າຍເຮົາຈະຕ້ອງປັດສະວະທຸກໆ 3-4 ຊົ່ງໂມງ ແລະ ຄວນເປັນສີໄສ\r\n3. ຢ່າດື່ມນ້ຳເວລາກິນອາຫານ: ການກິນອາຫານໄປ ດື່ມນ້ຳໄປຈະຫຼຸດປະສິດທິພາບການເຮັດວຽກຂອງນ້ຳຍ່ອຍ\r\n4. ດື່ມຕາມນ້ຳໜັກໂຕ: ເຊັ່ນ ຫາກມີນ້ຳໜັກ 40 kg ໃຫ້ດື່ມມື້ລະ 4 ແກ້ວ\r\n5. ດື່ມຫຼັງຕື່ນນອນ: ຊ່ວຍຫຼຸດພາວະຂາດນ້ຳ ແລະ ຫຼຸດຄວາມເປັນກົດໃນຮ່າງກາຍ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-04-06 18:23:46'),
(138, 'website graphic design: https://www.remove.bg/upload\r\nhttps://www.flaticon.com/\r\nhttps://www.miricanvas.com/en\r\nhttps://flash.figr.design/', NULL, 'Websites', 0, '2024-04-06 18:28:39'),
(139, '6 website for html,css and javascript template: \r\n1 creative-tim.com\r\n2 themesberg.com\r\n3 cruip.com\r\n4 html5up.net\r\n5 w3layouts.com\r\n6 uideck.com\r\n7 https://swiperjs.com/', NULL, 'Websites', 0, '2024-04-06 18:41:05'),
(140, 'ສຸດຍອດເຄື່ອງມື ai ຊ່ວຍງານ10ເທົ່າ\r\n1. Addy AI : ຂຽນອີເມວ\r\n2.  :ລຽນແບບສຽງເວົ້າ\r\n3. Harvey : ງານດ້ານກົດໝາຍ\r\n4. Jasper AI : ງານຂຽນຕ່າງໆ\r\n5. Kickresume : ແຕ່ງ Resume https://resume.io/app/create-resume/templates\r\n6. MidJourney : ສ້າງຮູບພາບ\r\n7. Neural Text : ຂຽນ SEO', NULL, 'AI', 0, '2024-04-06 19:03:34'),
(141, 'ກິດຈະກຳທີ່ເຮັດໃນຊີວິດປະຈຳວັນຄື: ຮຽນຮູ້ - ອອກກຳລັງໄກ - ເຮັດວຽກ', NULL, 'ອື່ນໆ', 0, '2024-04-06 20:40:31'),
(142, 'ນັກວິເຄາະ\r\nວິເຄາະກ່ອນເຮັດ', NULL, NULL, 1, '2024-04-06 20:42:24'),
(143, 'useEffect for count number\r\nuseState for show text, number\r\nuseRef for default value\r\nuseReducer for excusive function\r\nuseCallback for callback function', NULL, 'CodingProgramming', 0, '2024-04-09 16:07:44'),
(144, 'ການເຮັດວຽກມີປະສິດທິພາບຄືການເຮັດວຽກທີ່ບໍ່ໃຫ້ເສຍເວລາ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-04-10 12:48:20'),
(145, 'axios is api in react js', NULL, 'CodingProgramming', 0, '2024-04-10 18:01:05'),
(146, 'ວັນສຸກ ກັບບ້ານ+react js\r\nວັນເສົາ react js\r\nວັນທິດ react js\r\nວັນຈັນ react js\r\nວັນອັງຄານ react js\r\n', NULL, 'CodingProgramming', 1, '2024-04-11 20:19:26'),
(147, '', 'uploads/th.png', NULL, 1, '2024-04-11 21:20:05'),
(148, '', 'uploads/th.png', NULL, 1, '2024-04-11 21:22:46'),
(149, '', 'uploads/6.png', 'ການອອກແບບ', 0, '2024-04-11 21:37:46'),
(150, '', 'uploads/8.png', 'ການອອກແບບ', 0, '2024-04-11 21:38:56'),
(151, '', 'uploads/12.png', 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-04-11 22:03:16'),
(152, 'ຄົນທີ່ບໍ່ຄວນໃກ້ສິດ\r\n1. ຈົວ\r\n2. ບຸນລາ\r\n3. ຮົວ\r\n4. ກົງໃຫ\r\n5. ຢູ້\r\n6. ຈີນຸ່\r\n7. ໄຊ\r\n8. ກູ້', NULL, 'ແນວຄິດສ້າງສັນ', 1, '2024-04-16 16:11:22'),
(153, '', 'uploads/blue professional modern CV resume.png', 'ອື່ນໆ', 1, '2024-04-18 10:29:59'),
(154, 'ເລີ່ມໃໝ່ມື້ນີ້ເປັນຕົ້ນໄປ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-04-21 16:37:30'),
(155, 'ຈົ່ງເຮັດວຽກມີມາດຕະຖານ ແລະ ຄວາມຮັບປະກັນ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-04-21 19:21:12'),
(156, 'ຂົມເປັນຢາ ຫວານເປັນຜິດ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-04-21 19:25:53'),
(157, 'ຈົ່ງກິນຜັກຫຼາຍກວ່າຊິ້ນ 70:30', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-04-21 19:33:07'),
(158, '', 'uploads/pv.png.jpg', 'ອື່ນໆ', 0, '2024-04-22 18:59:28'),
(159, '', 'uploads/background.png', 'ແນວຄິດສ້າງສັນ', 1, '2024-04-23 09:40:27'),
(160, 'how to run vue.js   npm run serve', NULL, 'CodingProgramming', 0, '2024-04-23 10:31:06'),
(161, '', 'uploads/IMG_25630820_160450.JPG', 'ອື່ນໆ', 0, '2024-04-23 19:36:26'),
(162, '21:11 video 5', NULL, 'ອື່ນໆ', 1, '2024-04-24 16:58:47'),
(163, 'hotel booking ຕ້ອງແລ້ວວັນທິດນີ້ໃຫ້ໄດ້', NULL, 'ອື່ນໆ', 0, '2024-04-24 18:15:25'),
(164, 'ຂອບໃຈຈິດສຳນຶກຂອງຂ້ອຍ', NULL, 'ແນວຄິດສ້າງສັນ', 0, '2024-04-24 18:16:29'),
(165, 'ໂຄງການ: ໝາຍເຖິງການດຳເນີນກິດຈະກຳຕາມແຜນວຽກທີ່ໄດ້ເຮັດຂື້ນມາຳດຍໝາຍທີ່ກຳນົດໄວ້ ພາຍໄຕ້ໄລຍະເວລາ, ຊັບພະຍາກອນ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-04-26 10:48:18'),
(166, 'ບົດທີ່5 ຄວາມຕ້ອງການດ້າຍຊອບແວຣ\r\n- ຄວາມຕ້ອງການ\r\n- ປະເພດ\r\n- ຜູ້ໃຊ້\r\n- ດ້ານຊອບແວຣ\r\n- ເອກະສານ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-05-03 10:19:54'),
(167, 'ຈົ່ງບອກຂະບວນການວິສະວະກຳຄອມຕ້ອງການ', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-05-03 10:54:55'),
(168, 'ສອນ coursephp ໃຫ້ແລ້ວວັນທີ່ 16', NULL, 'CodingProgramming', 0, '2024-05-06 15:21:55'),
(169, '$ ! pip install seaborn \r\nfor graph\r\n$ ! pip install pandas', NULL, 'CodingProgramming', 0, '2024-05-07 08:19:58'),
(170, 'ຜົນງານຂອງຂ້ອຍ:\r\n- daily\r\n- schoolphp\r\n- laravel10ecommerce\r\n- laraveldepositmotorbike\r\n- hotel_booking_php\r\n- laravel10daily', NULL, 'CodingProgramming', 0, '2024-05-15 11:46:55'),
(171, '', 'uploads/devop.png', '', 0, '2024-05-15 20:39:41'),
(172, 'ແຜນກ່ຽວກັບ laravel + livewire:\r\n- ecommerce\r\n- pos\r\n- api', NULL, 'CodingProgramming', 1, '2024-05-15 20:41:39'),
(173, '', 'uploads/porchouavangpos.png', 'ແນວຄິດສ້າງສັນ', 0, '2024-05-16 22:52:55'),
(174, 'kali linux nmap', NULL, 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-05-27 14:07:04'),
(175, '', 'uploads/sqlserver.png', 'ບົດຮຽນໃນຫ້ອງຮຽນ', 0, '2024-05-27 15:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `pdaily`
--

CREATE TABLE `pdaily` (
  `id` int(11) NOT NULL,
  `five_six` varchar(30) DEFAULT NULL,
  `six_seven` varchar(30) DEFAULT NULL,
  `seven_eight` varchar(30) DEFAULT NULL,
  `eight_nine` varchar(30) DEFAULT NULL,
  `nine_ten` varchar(30) DEFAULT NULL,
  `ten_eleven` varchar(30) DEFAULT NULL,
  `eleven_twelve` varchar(30) DEFAULT NULL,
  `twelve_thirteen` varchar(30) DEFAULT NULL,
  `thirteen_fourteen` varchar(30) DEFAULT NULL,
  `fourteen_fifteen` varchar(30) DEFAULT NULL,
  `fifteen_sixteen` varchar(30) DEFAULT NULL,
  `sixteen_seventeen` varchar(30) DEFAULT NULL,
  `seventeen_eighteen` varchar(30) DEFAULT NULL,
  `eighteen_nineteen` varchar(30) DEFAULT NULL,
  `nineteen_twenty` varchar(30) DEFAULT NULL,
  `twenty_twentyone` varchar(30) DEFAULT NULL,
  `twentyone_twentytwo` varchar(30) DEFAULT NULL,
  `twentytwo_twentythree` varchar(30) DEFAULT NULL,
  `twentythree_five` varchar(30) DEFAULT NULL,
  `days` varchar(6) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `in_reason` varchar(30) DEFAULT NULL,
  `expenditure` int(11) DEFAULT NULL,
  `ex_reason` varchar(30) DEFAULT NULL,
  `m_status` int(11) DEFAULT 0,
  `is_delete` int(2) NOT NULL DEFAULT 0,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pdaily`
--

INSERT INTO `pdaily` (`id`, `five_six`, `six_seven`, `seven_eight`, `eight_nine`, `nine_ten`, `ten_eleven`, `eleven_twelve`, `twelve_thirteen`, `thirteen_fourteen`, `fourteen_fifteen`, `fifteen_sixteen`, `sixteen_seventeen`, `seventeen_eighteen`, `eighteen_nineteen`, `nineteen_twenty`, `twenty_twentyone`, `twentyone_twentytwo`, `twentytwo_twentythree`, `twentythree_five`, `days`, `income`, `in_reason`, `expenditure`, `ex_reason`, `m_status`, `is_delete`, `timestamp`) VALUES
(1, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ອາບນ້ຳ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ນອນ', 'ນອນ', 'ນອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-01 17:25:18'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 379000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-01-02 19:20:40'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ອາຫານ', 0, 0, '2024-01-02 19:21:41'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ເຄື່ອງດື່ມ', 0, 0, '2024-01-02 19:22:06'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25000, 'ຜັກ+ໝາກໄມ້', 0, 0, '2024-01-02 19:22:25'),
(14, 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ອາບນ້ຳ', 'ກິນເຂົ້າ', 'ເຮັດວຽກບ້ານ', 'ເຮັດວຽກບ້ານ', 'ເຮັດວຽກບ້ານ', 'ເຮັດບົດບັນທຶກ', 'ກັບຫ້ອງແລະກິນເຂົ້າ', 'ເຮັດບົດບັນທຶກ', 'ເຮັດບົດບັນທຶກ', 'ເຮັດບົດບັນທຶກ+ກິນເຂົ້າ', 'ເຮັດບົດບັນທຶກ', 'ເຮັດບົດບັນທຶກ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-02 19:29:09'),
(16, 'ນອນ', 'ນອນ', 'ນອນ', 'ໄປໂຮງຮຽນ+ຮຽນ', 'ຮຽນ', 'ບໍ່ໄດ້ຮຽນ+ກັບຫ້ອງ', 'ກິນເຂົ້າ', 'ນອນ', 'laravel', 'ຊ່ວຍແກ້ຊ່າງໄຟຟ້າໃຫ້ນ້ອງ', 'ຊ່ວຍແກ້ code ໃຫ້ກົງໃຫ', 'ກັບຫ້ອງ+ອາບນ້ຳ', 'ກິນເຂົ້າ + ສອນphp', 'ສອນ php', 'ສອນພື້ນຖານພາສາອັງກິດ', 'ລົມນຳຄອບຄົວ', 'ກິນເຂົ້າ', 'ນອນ', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-03 13:38:36'),
(21, 'ນອນ', 'ນອນ', 'ນອນ', 'ແກ້ຄະນິດສາດໃຫ້ນ້ອງສາວ', 'ແກ້ຄະນິດສາດໃຫ້ນ້ອງສາວ', 'ຕອບພາສາອັງກິດໃຫ້ນ້ອງສາວ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ກິນເຂົ້າ', 'ໄປຮັບເຄື່ອງ ປາ', 'ກັບຫ້ອງ', 'ໄປສົ່ງເຄື່ອງ', 'ກັບຫ້ອງ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ບັນທຶກ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'laravel ecommerce', 'laravel-00', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-04 18:23:36'),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່າຝາກເຄື່ອງປາ', 0, 0, '2024-01-04 18:24:15'),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ເອື້ອຍເອົາໃຫ້ຄ່າຝາກເຄື່ອງ', NULL, NULL, 0, 0, '2024-01-04 18:24:51'),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 'ຄ່າຜັກເຄື່ອງປຸງປາ', 0, 0, '2024-01-04 18:25:52'),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າອາຫານ', 0, 0, '2024-01-04 18:37:21'),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-01-04 18:37:47'),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ສະກັອດຕິດເຈ້ຍ', 0, 0, '2024-01-04 18:41:13'),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000, 'ຄ່າຝາກລົດຈັກ', 0, 0, '2024-01-04 18:42:35'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 0, 0, '2024-01-05 00:33:22'),
(31, 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ກິນເຂົ້າ + ໄປທະນະຄານນຳນ້ອງຊາຍ', 'ກັບຫ້ອງ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ກິນເຂົ້າ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ເຮັດບົດບັນທຶກທີ່ສຳຄັນ', 'ພັກຜ່ອນ', 'ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-05 11:29:54'),
(33, 'ຕື່ນນອນ+ອາບນ້ຳ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'laravel+ecommerce+livewire', 'laravel+ecommerce+livewire', 'laravel+ecommerce+livewire', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'laravel+livewire ecommerce', 'laravel+livewire ecommerce', 'laravel+livewire ecommerce', 'laravel+livewire ecommerce2', 'ພັກຜ່ອນ', 'ສອນ english', 'ສອນ english', 'ອາບນ້ຳ+ກຽມໄປ', 'ກິນຈຽງຊຳເກດ - 22:30', 'ກັບຫ້ອງ', 'ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-06 10:53:08'),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 'ຊື້ໄຂ່ລູກ', 0, 0, '2024-01-07 09:31:10'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 'ຄ່າຝາກລົດຈັກ', 0, 0, '2024-01-07 09:32:14'),
(37, 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ກິນເຂົ້າ', 'ໄປເດີ່ນກິນຈຽງຊຳເກດ', 'ໄປເດີ່ນກິນຈຽງຊຳເກດ', 'ໄປເດີ່ນກິນຈຽງຊຳເກດ', 'lararvel+livewire ecommerce2', 'ໄປເດີ່ນກິນຈຽງຊຳເກດ', 'ໄປເດີ່ນກິນຈຽງຊຳເກດ', 'ໄປເດີ່ນກິນຈຽງຊຳເກດ+ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'review ບົດຮຽນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-07 09:34:56'),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າຜັກ', 0, 0, '2024-01-07 18:08:40'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່າເຂົ້າປຽກ', 0, 0, '2024-01-07 18:09:21'),
(40, 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນ້ຳ+ໄປໂຮງຮຽນ', 'ຮຽນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ+ໄປໂຮງຮຽນ', 'ກວດກາ 20 score', 'ກັບຫ້ອງ', 'ສອນphp', 'ສອນphp', 'ສອນພື້ນຖານພາສາອັງກິດ', 'ພັກຜ່ອນ+ກິນເຂົ້າ', 'ອາບນ້ຳ', 'laravel+livewire ecommerce', 'ນອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-08 19:48:43'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000, 'ກຳໄລປູປາເຕົ້າ', NULL, NULL, 0, 0, '2024-01-08 17:15:14'),
(43, 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ໄປໂຮງຮຽນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'laravel+livewire ecommerce', 'ພັກຜ່ອນ', 'review php', 'review php', 'ໄປຕະຫຼາດ + ແຕ່ງກິນ', 'ກິນເຂົ້າ+ອາບນ້ຳ', 'ອາບນ້ຳ', 'ນອນ', 'ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-09 10:34:07'),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າຊີ້ນແຫ້ງ', 0, 0, '2024-01-09 19:22:06'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25000, 'ຄ່າຜັກ', 0, 0, '2024-01-09 19:22:22'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200000, 'ເງິນຈາກນ້ອງຊາຍ', NULL, NULL, 0, 0, '2024-01-09 19:26:06'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ນ້ຳມັນລົດ', 0, 0, '2024-01-13 00:23:44'),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າແປງວາວ', 0, 0, '2024-01-13 00:24:18'),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ໄປເດີ່ນກິນຈຽງ', 0, 0, '2024-01-13 00:25:20'),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ໃຫ້ນ້ອງສາວ', 0, 0, '2024-01-13 00:26:10'),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 500000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-01-13 00:28:48'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200000, 'ອ້າຍເອົາໃຫ້', NULL, NULL, 0, 0, '2024-01-13 00:29:01'),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 400000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-01-13 00:29:16'),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200000, 'ໃຫ້ນ້ອງຊາຍ', 0, 0, '2024-01-13 00:29:43'),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700000, 'ແປງລົດ', 0, 0, '2024-01-13 00:29:53'),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່ານ້ຳມັນ', 0, 0, '2024-01-13 00:34:06'),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-01-13 00:35:18'),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ໃຫ້ນ້ອງຊາຍ', 0, 0, '2024-01-13 00:36:19'),
(65, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນ້ຳ+ໄປໂຮງຮຽນ', 'ຮຽນ', 'ຮຽນ', 'ກວດກາ', 'ກັບຫ້ອງ', 'ກິນເຂົ້າ+ຕັດຜົມ', 'ກຽມເຄື່ອງກັບບ້ານ', 'ກັບບ້ານ', 'ກັບບ້ານ', 'ກັບບ້ານ', 'ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ໄປຫຼີ້ນບຸນ', 'ໄປຫຼິ້ນບຸນ', 'ກັບຫ້ອງ+ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-10 00:48:18'),
(66, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ກຽມຕົວ', 'ກິນເຂົ້າ', 'ເຮັດວຽກເຮືອນ', 'ເຮັດວຽກເຮືອນ', 'ເຮັດວຽກເຮືອນ', 'ເຮັດວຽກເຮືອນ', 'ເຮັດວຽກເຮືອນ', 'ເຮັດວຽກເຮືອນ', 'ເຮັດວຽກເຮືອນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ + ໄປຫຼິ້ນບຸນ', 'ໄປຫຼິ້ນບຸນ', 'ກັບຫ້ອງ+ນອນ', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-11 00:38:33'),
(67, 'ນອນ', 'ຕື່ນນອນ', 'ແຕ່ງກິນ', 'ໄປແປງລົດ', 'ຕັດຜົມ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ໄປກິນຊີ້ນໝາ', 'ໄປກິນຊີ້ນໝາ', 'ໄປຫຼິ້ນບຸນ', 'ສົ່ງສາວກັບບ້ານ', 'ໄປເອົາລົດ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ໄປຫຼິ້ນບຸນ', 'ກັບຫ້ອງ+ບັນທຶກ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-12 00:55:23'),
(68, 'ຕື່ນນອນ+ແຕ່ງກິນ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ໄປເບິ່ງງົວຊົນກັນ', 'ໄປເບິ່ງງົວຊົນກັນ', 'ໄປເບິ່ງງົວຊົນກັນ', 'ເບິ່ງງົວຊົນກັນ', 'ເບິ່ງງົວຊົນກັນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ຕື່ນນອນ', 'ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ໄປຫຼິ້ນບຸນ', 'ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-13 00:57:53'),
(71, 'ຕື່ນນອນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ໄປກິນດອງ', 'ໄປຫຼີ້ນບຸນກິນຈຽງ', 'ໄປຫຼີ້ນບຸນກິນຈຽງ', 'ໄປຫຼີ້ນບຸນກິນຈຽງ', 'ໄປຫຼີ້ນບຸນກິນຈຽງ', 'ໄປຫຼີ້ນບຸນກິນຈຽງ', 'ກັບຫ້ອງ', 'ບັນທຶກ', 'ສົ່ງລິ້ງໃຫ້ນັກຮຽນ ແລະ ຊັກເຄື່ອ', 'ກິນເຂົ້າ', 'ໄປຫຼີ້ນບຸນກິນຈຽງ', 'ໄປຫຼີ້ນບຸນກິນຈຽງ', 'ໄປຫຼິ້ນບຸນ', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-14 17:26:46'),
(72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-01-14 17:27:37'),
(73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ຫຼີ້ນບຸນ', 0, 0, '2024-01-14 17:28:23'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-01-14 17:29:03'),
(76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ກຳໄລປູປາເຕົ້າ', NULL, NULL, 0, 0, '2024-01-14 18:37:47'),
(79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91000, 'ຫຼີ້ນບຸນ', 0, 0, '2024-01-17 16:27:47'),
(82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-01-17 16:29:39'),
(83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-01-17 16:30:23'),
(84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19000, 'ຫຼີ້ນບຸນ', 0, 0, '2024-01-17 16:33:27'),
(85, 'ຕື່ນນອນ', 'ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ໄປຊ່ວຍພີ່ນ້ອງເຮັດຂວັນ', 'ໄປຊ່ວຍພີ່ນ້ອງເຮັດຂວັນ', 'ໄປຊ່ວຍພີ່ນ້ອງເຮັດຂວັນ', 'ຊັກເຄື່ອງ', 'ໄປຊ່ວຍພີ່ນ້ອງເຮັດຂວັນ', 'ໄປຫຼີ້ນບຸນກິນຈຽງ', 'ໄປຫຼີ້ນບຸນກິນຈຽງ', 'ກັບບ້ານ', 'ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ໄປຫຼີ້ນບຸນ', 'ໄປຫຼິ້ນບຸນ', 'ນອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-15 16:38:04'),
(86, 'ຕື່ນນອນ', 'ກຽມເຄື່ອງ', 'ມາວຽງ', 'ມາວຽງ', 'ມາວຽງ', 'ມາວຽງ', 'ມາວຽງ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ໄປເຮັດວຽກບ້ານ', 'ໄປເຮັດວຽກບ້ານ', 'ໄປເຮັດວຽກບ້ານ', 'ໄປເຮັດວຽກບ້ານ', 'ໄປເຮັດວຽກບ້ານ', 'ກັບຫ້ອງ', 'ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-16 16:39:49'),
(87, 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ໄປໂຮງຮຽນ', 'ກັບຫ້ອງ+ໄປໂຮງຮຽນ', 'ບໍ່ໄດ້ຮຽນ+ກັບຫ້ອງ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກັບຫ້ອງ+ອາບນ້ຳ', 'ສອນphp', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ບັນທຶກ', 'ບັນທຶກ', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-17 16:41:37'),
(88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 400000, 'ຄ່າສອນphp', NULL, NULL, 0, 0, '2024-01-17 19:15:46'),
(90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 'ຜ້າອັດປາກ', 0, 0, '2024-01-18 13:47:00'),
(94, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ + ວຽກບ້ານ', 'ວຽກບ້ານ', 'ຮຽນພາສາອັງກິດ', 'ຮຽນພາສາອັງກິດ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ບັນທຶກ', 'ອາບນ້ຳ', 'ນອນ', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-18 21:13:49'),
(99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 0, 0, '2024-01-18 21:53:28'),
(103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າຜັກ', 0, 0, '2024-01-19 09:39:52'),
(111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-01-16 14:22:51'),
(112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ແມ່ເອົາໃຫ້ຊື້ນ້ຳມັນລົດ', NULL, NULL, 0, 0, '2024-01-19 14:23:56'),
(114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62000, 'ຄ່າປື້ມໃຫ້ນັກຮຽນ', 0, 0, '2024-01-19 17:01:41'),
(117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຊື້ນ້ຳຢາລ້າງຈານແລະມີດ', 0, 0, '2024-01-19 18:58:03'),
(118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຊື້ຊິ້ນ', 0, 0, '2024-01-19 19:03:22'),
(121, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ', 'ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແກ້ໄຂປຸ່ມຊອກຫາ', 'ແກ້ໄຂປຸ່ມຊອກຫາຮອດ23:50 ແລ້ວນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-19 22:18:57'),
(123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90000, 'ຄ່າຊື້ ແລະ ຝາກປື້ມ', NULL, NULL, 0, 0, '2024-01-20 13:15:40'),
(127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16000, 'ຊື້ຢາ TIFFI', 0, 0, '2024-01-20 22:35:04'),
(128, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ກິນເຂົ້າ', 'ບັນທຶກ', 'ບັນທຶກ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ບັນທຶກ', 'ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-20 22:59:46'),
(129, 'ຕື່ນ+ແຕ່ງເຂົ້າກິນ', 'ເອົານ້ຳແຂງອອກຈາກຕູ້ເຢັນ', 'ລ້າງຖ້ວຍ+ບັນທຶກ', 'ອາບນ້ຳ', 'ໄປຕະຫຼາດ+ແຕ່ງກິນ', 'ກິນເຂົ້າ+ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'laravel+ecommerce2', 'ຮຽນພື້ນຖານພາສາຈີນ', 'ພັກຜ່ອນ', 'ຮຽນພື້ນຖານພາສາຈີນ', 'laravel+livewire ecommerce1', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-21 05:37:42'),
(130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າຜັກ', 0, 0, '2024-01-21 08:46:07'),
(131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 0, 0, '2024-01-21 19:32:45'),
(132, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນ້ຳ+ໄປໂຮງຮຽນ', 'ຮຽນ', 'ຮຽນ+ກັບຫ້ອງ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ໄປເອົາເຄື່ອງ', 'ກັບຫ້ອງ+ກິນເຂົ້າ', 'ໄປຮຽນ+ຮຽນ', 'ຮຽນ+ກັບຫ້ອງ', 'ໄປຕະຫຼາດ', 'ເຮັດ php', 'ເຮັດ php', 'ເຮັດ php', 'ກິນເຂົ້າ', 'ເຮັດ php', 'upload web to server not succe', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-22 09:26:29'),
(133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ຄ່າບັດເຊີນໃຫ້ລູຢົງຊົ່ງ', 0, 0, '2024-01-22 15:48:51'),
(134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຊື້ຜັກສຸກ', 0, 0, '2024-01-22 15:49:08'),
(135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າໜີ້ບັດເຕີມເງິນໃຫ້ຢູ້ເຮີ', 0, 0, '2024-01-22 15:49:30'),
(136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-01-22 15:49:49'),
(138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125000, 'ຊື້ຜັກ+ຊີ້ນ+ນ້ຳມັນພືດ', 0, 0, '2024-01-22 16:51:37'),
(139, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ເຮັດ php', 'ເຮັດ php', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ໄປຊື້ໂທລະສັບໃຫ້ແມ່', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ໄປຕິດກັນແຕກ', 'ຊື້ເຄັກໂທລະສັບ+ກັບຫ້ອງ', 'ຕັ້ງຄ່າໂທລະສັບໃຫ້ແມ່', 'review php ', 'ສອນພື້ນຖານພາສາອັງກິດ', 'ແຕ່ງກິນ', 'html+css', 'ກິນເຂົ້າ', 'ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-23 09:07:25'),
(140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1899000, 'ຊື້ໂທລະສັບໃຫ້ແມ່', 0, 0, '2024-01-23 17:30:25'),
(141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 'ຊື້ປາເຕ່', 0, 0, '2024-01-23 17:30:41'),
(142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຊື້ເບີໂທໃຫ້ແມ່', 0, 0, '2024-01-23 17:31:01'),
(143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55000, 'ຊື້ເຄັກໂທລະສັບ', 0, 0, '2024-01-23 17:31:20'),
(144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000, 'ຄ່າບໍລິກິນ bcelone', 0, 0, '2024-01-23 17:58:08'),
(145, 'ຕື່ນນອນ', 'ແຕ່ງກິນ+ອາບນຳ້', 'ຊັກເຄື່ອງ+ກິນເຂົ້າ+ໄປໂຮງຮຽນ', 'ຮຽນ+ສົ່ງວຽກບ້ານ', 'ຮຽນ', 'ກັບຫ້ອງ', 'ຊື້ໂທລະສັບໃຫ້ອາ', 'ຊື້ໂທລະສັບໃຫ້ອາ', 'ຊື້ໂທລະສັບໃຫ້ອາ', 'ຊື້ໂທລະສັບໃຫ້ອາ', 'ສົ່ງເຄື່ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສອນ php', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-24 06:03:02'),
(156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000000, 'ແມ່ເອົາໃຫ້ຊື້ໂທລະສັບໃຫ້ແມ່', NULL, NULL, 0, 0, '2024-01-24 16:23:34'),
(157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຊື້ເບີໂທໃຫ້ອາ', 0, 0, '2024-01-24 16:24:46'),
(159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 'ຄ່າຝາກໂທລະສັບ', 0, 0, '2024-01-24 16:25:24'),
(161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55000, 'ຊື້ຊິ້ນເປັດ', 0, 0, '2024-01-25 08:13:58'),
(162, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ກວດຫ້ອງ', 'ຊັກເຄື່ອງ', 'ອາບນ້ຳ', 'ໄປໂຮງຮຽນ+ຮຽນ', 'ຮຽນ+ກັບຫ້ອງ', 'ພັກຜ່ອນ+ມານັ່ງທີ່ປິ່ງຊຸນ', 'ແຕ່ງເປັດກິນ', 'ກິນເປັດ', 'review php', 'download phppos video', 'download phppos video', 'ກັບຫ້ອງ', 'ນອນ', 'ນອນ', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-25 08:59:20'),
(163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17000, 'ຊານົມໃຫ້ນ້ອງຊາຍ', 0, 0, '2024-01-25 19:08:24'),
(164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 'ຊື້ຜັກໃຫ້ນ້ອງຊາຍ', 0, 0, '2024-01-27 20:58:12'),
(165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 'ຊື້ຜັກ ແລະ ໜັງໝູກອບ', 0, 0, '2024-01-27 20:58:45'),
(166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ປີ່ນຮູບພາບ', 0, 0, '2024-01-27 20:59:19'),
(167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ຊື້ນຳ້ມັນລົດ', 0, 0, '2024-01-27 20:59:52'),
(168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າບັດໃຫ້ແມ່', 0, 0, '2024-01-27 21:00:06'),
(169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ຊື້ນຳ້ດື່ມ', 0, 0, '2024-01-27 21:00:34'),
(170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ເອົາໃຫ້ອ້າຍກົກ', 0, 0, '2024-01-27 21:00:49'),
(171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46000, 'ເອົາໃຫ້ນ້ອງສາວ', 0, 0, '2024-01-27 21:01:07'),
(172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200000, 'ໃຫ້ນ້ອງຊາຍ', 0, 0, '2024-01-27 21:01:29'),
(173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000000, 'ເອື້ອຍໄມເນັ້ງເອົາໃຫ້', NULL, NULL, 0, 0, '2024-01-27 21:01:57'),
(174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ນ້ອງສາວເອົາມາແລກ', NULL, NULL, 0, 0, '2024-01-27 21:02:33'),
(175, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນຳ້', 'ໄປຮຽນ+ກັບຫ້ອງ', 'ໄປຊື້ຜັກ+ເອກະສານ', 'ກິນເຂົ້າ+ກຽມ', 'ກັບບ້ານ', 'ກັບບ້ານ', 'ກັບບ້ານ', 'ພັກຜ່ອນ+ແລ່ນເອກະສານ', 'ພັກຜ່ອນ', 'ກວດຂີ້ເຫຍື້ອຍ', 'ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-26 21:11:14'),
(176, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ໄປຊ່ວຍນ້າບ່າວເຮັດວຽກ', 'ຊ່ວຍນ້າບ່າວເຮັດວຽກ', 'ຊ່ວຍນ້າບ່າວເຮັດວຽກ', 'ຊ່ວຍນ້າບ່າວເຮັດວຽກ', 'ຊ່ວຍນ້າບ່າວເຮັດວຽກ', 'ຊ່ວຍນ້າບ່າວເຮັດວຽກ', 'ຊ່ວຍນ້າບ່າວເຮັດວຽກ', 'ກັບບ້ານ+ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ອາບນຳ້', 'ບັນທຶກ', 'ນອນ', 'ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-27 21:19:34'),
(177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່ານຳ້ມັນ', 0, 0, '2024-01-29 15:14:00'),
(178, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ກຽມ', 'ກຽມ', 'ກຽມ', 'ກຽມ', 'ກັບວຽງ', 'ກັບວຽງ', 'ກັບວຽງ', 'ກັບວຽງ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-28 15:16:06'),
(179, 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນຳ້+ໄປໂຮງຮຽນ', 'ຮຽນ', 'ກັບຫ້ອງ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ມາຮຽນ+ບໍ່ໄດ້ຮຽນ', 'ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ສອນ php', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-29 15:17:48'),
(180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 350000, 'ຈ່າຍຄ່າຫ້ອງ', 0, 0, '2024-01-29 17:30:29'),
(181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-01-29 17:33:59'),
(182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 104000, 'ບໍ່ທັນບັນທຶກ', 0, 0, '2024-01-29 17:39:03'),
(184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117000, 'ຄ່າສະບູແຟັກ+ນ້ຳດັບກິ່ນເຕົ່າ', 0, 0, '2024-01-30 11:59:08'),
(185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17000, 'ຊື້ນ້ຳປັ່ນ', 0, 0, '2024-01-30 18:17:46'),
(186, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ກວດຫ້ອງ', 'ກວດຫ້ອງ', 'ໄປຊື້ເຄື່ອງ', 'ກວດຫ້ອງ', 'ຊັກເຄື່ອງ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ໄປເສັງ+ເສັງ', 'ເສັງ+ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ມາເຮັດວຽກບ້ານ', 'ເຮັດວຽກບ້ານ', 'ເຮັດວຽກບ້ານ', 'ເຮັດວຽກບ້ານ', 'ກັບຫ້ອງ+ກິນເຂົ້າ', 'ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-30 18:23:09'),
(188, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນ້ຳ+ໄປໂຮງຮຽນ', 'ຮຽນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ກັບຫ້ອງ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ພັກຜ່ອນ', 'ໄປຊື້ໂທລະສັບໃຫ້ປ້າ', 'ຊື້ໂທລະສັບໃຫ້ປ້າ', 'ພັກຜ່ອນ', 'ສອນ php', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ຊອກເຈ້ຍບັນທຶກ', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-01-31 22:18:33'),
(189, 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ອາບນຳ້+ໄປໂຮງຮຽນ', 'ຮຽນ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-01 07:46:58'),
(190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 'ເງິນສະຖິຕິ', 0, 0, '2024-02-01 16:49:12'),
(191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 'ກຳໄລຈາກການຊື້ໂທລະສັບ', NULL, NULL, 0, 0, '2024-02-01 16:50:06'),
(192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ຄ່າຝາກລົດຈັກ', 0, 0, '2024-02-02 18:31:12'),
(193, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນ້ຳ+ໄປໂຮງຮຽນ', 'ພັກຜ່ອນ', 'ເສັງ', 'ລາຍງານ ecommerce', 'ພັກຜ່ອນ', 'ກັບຫ້ອງ+ກິນເຂົ້າ', 'ໄປຖາມການເຮັດpassport', 'ກັບຫ້ອງ+ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ຕັດຜົມ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-02 18:33:19'),
(194, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ເຂົ້າຫ້ອງນຳ້+ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ຊັກເຄື່ອງ+ອາບນຳ້', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ຕັດຜົມ', 'ເຮັດວຽກບ້ານ', 'ເຮັດວຽກບ້ານ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-03 09:25:44'),
(195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 'ຄ່າຜັກ', 0, 0, '2024-02-03 09:45:13'),
(196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າຜັກ', 0, 0, '2024-02-04 10:15:21'),
(197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32000, 'ຄ່າຜັກ', 0, 0, '2024-02-04 10:15:47'),
(198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ນ້ຳຫວານ', 0, 0, '2024-02-04 10:16:09'),
(199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59000, 'ນ້ຳຫອມ', 0, 0, '2024-02-04 10:16:25'),
(200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 'ນ້ຳສົ້ມ', 0, 0, '2024-02-04 10:20:28'),
(201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000, 'ຄ່າບໍລິກິນ bcelone', 0, 0, '2024-02-04 10:22:40'),
(202, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ໄປຮັບນ້ອງສາວ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-04 10:28:39'),
(203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'yuav khuam kuab', 0, 0, '2024-02-04 12:01:25'),
(204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ນ້ຳມັນລົດ', 0, 0, '2024-02-04 16:23:29'),
(205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-02-04 16:23:39'),
(206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 'ຄ່າຝາກໂທລະສັບ', 0, 0, '2024-02-04 18:32:07'),
(207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຊື້ຊິ້ນ', 0, 0, '2024-02-05 11:27:18'),
(208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຊື້ຜັກ', 0, 0, '2024-02-05 11:27:30'),
(209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຊື້ສົ້ມ', 0, 0, '2024-02-05 11:27:47'),
(210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ຊື້ໄຂ່', 0, 0, '2024-02-05 11:28:04'),
(211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ກັອບປີ', 0, 0, '2024-02-05 11:28:18'),
(212, 'ຕື່ນນອນ+ອາບນ້ຳ', 'ແຕ່ງກິນ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ໄປໂຮງຮຽນ+ເສັງ', 'ເສັງ', 'ກັບຫ້ອງ+ໄປສົ່ງປື້ມ', 'ໄປຫ້ອງ+ກິນເຂົ້າ', 'ພັກຜ່ອນ+ໄປໂຮງຮຽນ', 'ເສັງ', 'ເສັງ+ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສອນ english', 'ພັກຜ່ອນ', 'ນອນ', 'ອາບນ້ຳ+ພັກຜ່ອນ', 'ນອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-05 11:34:47'),
(213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າຝາກລົດຈັກ', 0, 0, '2024-02-06 17:57:37'),
(214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40000, 'ຄ່າເຂົ້າປຽກ', 0, 0, '2024-02-06 17:58:01'),
(215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 800000, 'ຄ່າເຮັດ passport', 0, 0, '2024-02-06 17:58:19'),
(216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າຊານົມ', 0, 0, '2024-02-06 17:58:47'),
(217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 'ຊື້ຜັກ', 0, 0, '2024-02-06 18:02:26'),
(218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ຄ່າກັອບປີ', 0, 0, '2024-02-06 18:04:37'),
(219, 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ໄປເຮັດ passport', 'ເຮັດ passport', 'ເຮັດ passport', 'ເຮັດ passport', 'ກິນເຂົ້າ', 'ເຮັດ passport', 'ເຮັດ passport + ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສອນພື້ນຖານພາສາອັງກິດ', 'ພັກຜ່ອນ+ແຕ່ງກິນ', 'ກິນເຂົ້າ+ອາບນ້ຳ', 'ພັກຜ່ອນ', 'ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-06 18:40:51'),
(220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ສະບູກ້ອນແລະເຫຼັກລ້າງຖ້ວຍ', 0, 0, '2024-02-06 20:23:27'),
(221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຊື້ບັດໃນບັນຊີ', 0, 0, '2024-02-07 18:06:04'),
(222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000000, 'ແມ່ເອົາໃຫ້ແລກປ່ຽນເປັນ dollar', NULL, NULL, 0, 0, '2024-02-07 18:06:32'),
(223, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ+ໄປໂຮງຮຽນ', 'ເສັງ asp.net', 'ເສັງ asp.net', 'ກັບຫ້ອງ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-07 18:10:19'),
(224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-02-07 18:11:05'),
(225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 'pigki', 0, 0, '2024-02-08 08:49:27'),
(226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28000, 'ເຄື່ອງປຸງເປັດ', 0, 0, '2024-02-08 22:49:30'),
(227, 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ເສັງ web server', 'ເສັງ web server', 'ກັບຫ້ອງ', 'ເສັງ english', 'ກັບຫ້ອງ', 'ແຕ່ງເປັດກິນ', 'ແຕ່ງເປັດກິນ', 'ກິນເປັດ', 'ນັ່ງຫຼີ້ນ', 'ນັ່ງຫຼີ້ນ', 'ນັ່ງຫຼີ້ນ', 'ນັ່ງຫຼີ້ນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ອາບນ້ຳ', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-08 23:09:20'),
(228, 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ໄປເອົາເຄື່ອງ', 'ເອົາເຄື່ອງ', 'ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-09 11:32:36'),
(229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 0, 0, '2024-02-09 12:24:29'),
(230, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ກິນເຂົ້າ', 'ນອນ', 'ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-10 11:25:02'),
(231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ເຄື່ອງປຸງປາ', 0, 0, '2024-02-10 22:36:01'),
(232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ນ້ຳຫວານ', 0, 0, '2024-02-10 22:36:13'),
(233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 680000, 'registration fees', 0, 0, '2024-02-11 19:35:33'),
(234, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ກິນເຂົ້າ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-11 19:40:55'),
(235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-02-12 13:04:40'),
(237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62000, 'ึຄ່າປື້ມ', 0, 0, '2024-02-12 13:35:54'),
(238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າອາຫານ', 0, 0, '2024-02-12 13:36:04'),
(239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80000, 'ຄ່າຊື້ ແລະ ຝາກປື້ມ', NULL, NULL, 0, 0, '2024-02-12 15:47:23'),
(240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ເຄື່ອງປຸງປາ', 0, 0, '2024-02-12 17:14:06'),
(241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຂອງຫວານກິນ', 0, 0, '2024-02-12 17:14:20'),
(242, 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແກ້ເລກໃຫ້ນ້ອງສາວ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ຊື້ປື້ມ ແລະ ຝາກໃຫ້ນັກຮຽນ', 'ກິນເຂົ້າ', 'ຊັກເຄື່ອງ', 'ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ອາບນ້ຳ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-12 17:17:06'),
(243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າຊື້ຟອມລົງທະບຽນ', 0, 0, '2024-02-12 17:23:10'),
(244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 0, 0, '2024-02-12 19:55:58'),
(245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7000, 'ແປງຖູແຂ້ວໃຊ້ຖູຢາ', 0, 0, '2024-02-13 16:03:08'),
(246, 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ລ້າງຢາພື້ນເມືອງ', 'ລ້າງຢາພື້ນເມືອງ', 'ລ້າງຢາພື້ນເມືອງ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ມາທີ່ ປິ່ງຊຸນ', 'laravel+livewire ecommerce1 lo', 'login and register successfull', 'ສອນ php', 'ສອນ php', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+laravel sorting produc', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-13 16:06:59'),
(247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ໄຂ່4:12 ແລະ ໝີ່ 2:8', 0, 0, '2024-02-13 21:15:28'),
(248, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ຊັກເຄື່ອງ', 'ກິນເຂົ້າ+ກຽມ', 'ມາ bing chun ', 'ໃຫ້ຮອດ sorting product', 'laravel+livewire ecommerce1', 'laravel+livewire ecommerce1', 'ພັກຜ່ອນ', 'ສອນ php', 'ພັກຜ່ອນ', 'ໄປຫຼີ້ນນຳອ້າຍ', 'ໄປຫຼີ້ນນຳອ້າຍ', 'ໄປຫຼີ້ນນຳອ້າຍ', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-14 00:39:54'),
(249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າອາຫານ', 0, 0, '2024-02-14 13:31:59'),
(250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ນ້ຳມັນລົດ', 0, 0, '2024-02-15 14:43:17'),
(251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າພິກກີ່', 0, 0, '2024-02-15 14:44:11'),
(252, 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ອາບນ້ຳ', 'ກິນເຂົ້າ', 'ມາ bing chun ', 'ivewire delete cart', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ sorting product', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', '', '', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-15 14:46:11'),
(253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16000, 'ຄ່າໄຂ່ມຸກນ້ຳຕານແດງ', 0, 0, '2024-02-15 16:21:40'),
(254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17000, 'ຊານົມຈ້ຳໂປ້', 0, 0, '2024-02-15 19:30:23'),
(255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65000, 'ປ່ຽນນ້ຳມັນເຄື່ອງ', 0, 0, '2024-02-16 12:52:59'),
(256, 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ກິນເຂົ້າ', 'ປ່ຽນນ້ຳມັນເຄື່ອງ', 'ຕັດຜົມ', 'ກຽມເຄື່ອງກັບບ້ານ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-16 12:53:50'),
(257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78000, 'ບຸບເຟ່ເຝີ', 0, 0, '2024-02-17 10:58:40'),
(258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34000, 'ຊານົມຈ້ຳໂປ້', 0, 0, '2024-02-17 11:00:32'),
(259, 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ກິນເຂົ້າ', 'laravel+ecommerce', 'laravel+ecommerce', 'laravel+ecommerce', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'laravel+ecommerce1', 'laravel+ecommerce1', 'ພັກຜ່ອນ', 'laravel ecommerce', 'laravel ecommerce', 'ອາບນ້ຳ+ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-17 11:02:27'),
(262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000, 'ຄ່າຝາກລົດຈັກ', 0, 0, '2024-02-17 12:35:17'),
(263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າອາຫານ', 0, 0, '2024-02-17 12:36:30'),
(264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26000, 'ຄ່າອາຫານ', 0, 0, '2024-02-17 18:08:33'),
(265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-02-17 19:42:54'),
(266, 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'laravel ecommerce1', 'laravel+ecommerce1', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'laravel ecommerce', 'datetimespickerphpproject', 'ອາບນ້ຳ+ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-18 17:20:41'),
(267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 0, 0, '2024-02-18 17:54:08'),
(268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ໄຂ່4:12 ແລະ ໝີ່ 2:8', 0, 0, '2024-02-18 19:25:08'),
(269, 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ໄປນຳຮົວຊື້ລົດຈັກ', 'ໄປນຳຮົວຊື້ລົດຈັກ', 'ໄປນຳຮົວຊື້ລົດຈັກ', 'ໄປນຳຮົວຊື້ລົດຈັກ', 'ໄປນຳຮົວຊື້ລົດຈັກ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ອາບນ້ຳ', 'daillyproject', 'dailyproject', 'ອາບນ້ຳ+ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'dailyproject', 'ນອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-19 17:48:45'),
(275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16000, 'ປາກະປອງ', 0, 0, '2024-02-19 21:56:49'),
(276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48000, 'ຄ່າຝາກລົດຈັກ:8000 ຄ່າຂື້ນປະຕູໄ', 0, 0, '2024-02-20 17:35:41'),
(277, 'ນອນ', 'ຕື່ນນອນ+ອາບນຳ້', 'ແຕ່ງກິນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ຕັດຜົມ', 'ຕັດຜົມ', 'ອາບນ້ຳ+ໄປເອົາພາສປອດ', 'ລໍຖ້າພາສປອດ', 'ໄປຂື້ນປະຕູໄຊ', 'ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ຊື້ນ້ຳມັນລົດ+ກວດລົດ', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '2024-02-20 17:38:05'),
(278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 0, 0, '2024-02-20 18:01:18'),
(279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 0, 0, '2024-02-20 23:09:07'),
(280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17000, 'ຄ່ານ້ຳອັດລົມ', 0, 0, '2024-02-20 23:09:43'),
(281, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-02-27 17:56:39'),
(282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-02-27 17:57:22'),
(283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-02-27 18:00:31'),
(284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-02-27 18:01:13'),
(285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-02-27 18:01:30'),
(286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ໃຫ້ງານດອງ', 0, 0, '2024-02-27 18:01:49'),
(287, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ຄ່າໃບມີດ', 0, 0, '2024-02-27 18:02:14'),
(288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 'ຄ່າບັດ', 0, 0, '2024-02-27 18:02:29'),
(290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48000, 'ຄ່າອາຫານ', 0, 0, '2024-02-27 20:00:34'),
(291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59000, 'ໃຫ້ນ້ອງສາວ', 0, 0, '2024-02-27 20:01:13'),
(292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-02-27 20:01:57'),
(293, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າຫົວທຽນລົດຈັກ', 0, 0, '2024-02-27 20:05:54'),
(294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40000, 'ຄ່າເຫຼັກລວດ', 0, 0, '2024-02-27 20:06:11'),
(295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ໃຫ້ນ້ອງສາວ', 0, 0, '2024-02-27 20:07:20'),
(296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57000, 'ໃຫ້ອ້າຍ40 ແລະ ໃຊ້ທົ່ວໄປ17', 0, 0, '2024-02-27 20:09:08'),
(297, 'ກັບບ້ານ', 'ກັບບ້ານ', 'ກັບບ້ານ', 'ກັບບ້ານ', 'ກວດເຮືອນ', 'ກວດເຮືອນ', 'ກວດເຮືອນ', 'ກວດເຮືອນ', 'ກວດເຮືອນ', 'ກວດເຮືອນ', 'ກວດເຮືອນ', 'ກວດເຮືອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ໄປຫຼີ້ນນຳນ້ອງ', 'ໄປຫຼີ້ນນຳນ້ອງ', 'ໄປຫຼີ້ນນຳນ້ອງ', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-27 20:11:25'),
(298, 'ຕື່ນນອນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ໄປໄຮ່', 'ໄປໄຮ່', 'ໄປໄຮ່', 'ກັບບ້ານ', 'ກັບບ້ານ', 'ກັບບ້ານ', 'ກິນເຂົ້າ+ຍົກໄມ້', 'ກວດເຮືອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ໄປຫຼີ້ນນຳນ້ອງ', 'ນອນ', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-27 20:13:40'),
(299, 'ຕື່ນນອນ', 'ກິນເຂົ້າ', 'ກຽມ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ກິນເຂົ້າ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', '', 'ອາບນ້ຳ', 'ນອນ', 'ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-27 20:17:21'),
(300, 'ຕື່ນນອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ໄປຊື້ຮົ້ວ', 'ໄປຊື້ຮົ້ວ', 'ໄປຊື້ຮົ້ວ', 'ກັບບ້ານ', 'ກັບບ້ານ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ນອນ', 'ນອນ', 'ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-24 20:19:45'),
(301, 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ໄປກິນດອງ', 'ໄປກິນດອງ', 'ໄປກິນດອງ', 'ໄປກິນດອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ເຮັດຮົ້ວ', 'ເຮັດຮົ້ວ', 'ເຮັດຮົ້ວ', 'ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-25 20:22:00'),
(302, 'ຕື່ນນອນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ເຮັດຮົ້ວ', 'ເຮັດຮົ້ວ', 'ເຮັດຮົ້ວ', 'ເຮັດຮົ້ວ', 'ເຮັດຮົ້ວ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ໄປຫຼີ້ນນຳນ້ອງ', 'ໄປຫຼີ້ນນຳນ້ອງ', 'ກັບຫ້ອງ+ນອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-26 20:23:59'),
(303, 'ກັບວຽງ', 'ກັບວຽງ', 'ກັບວຽງ', 'ກັບວຽງ+ກິນເຂົ້າ', 'ກັບວຽງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ສອນ php', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ບັນທຶກ', 'ກິນເຂົ້າ+ອາບນ້ຳ', 'ພັກຜ່ອນ', 'ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-27 20:25:35'),
(304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32000, 'ທີ່ຊູ່2:6 ໝີ່2:8 ນ້ຳສົ້ມ1:8 ສະ', 0, 0, '2024-02-28 11:53:45'),
(305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ຄ່າບັດ', 0, 0, '2024-02-28 11:54:15');
INSERT INTO `pdaily` (`id`, `five_six`, `six_seven`, `seven_eight`, `eight_nine`, `nine_ten`, `ten_eleven`, `eleven_twelve`, `twelve_thirteen`, `thirteen_fourteen`, `fourteen_fifteen`, `fifteen_sixteen`, `sixteen_seventeen`, `seventeen_eighteen`, `eighteen_nineteen`, `nineteen_twenty`, `twenty_twentyone`, `twentyone_twentytwo`, `twentytwo_twentythree`, `twentythree_five`, `days`, `income`, `in_reason`, `expenditure`, `ex_reason`, `m_status`, `is_delete`, `timestamp`) VALUES
(306, 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ໄປເອົາເຂົ້າສານ', 'ແປງພັດລົມ', 'ແປງພັດລົມ', 'ກວດຫ້ອງ+ອາບນ້ຳ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ໄປຮັບອ້າຍ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສອນ php', 'ກິນເຂົ້າ', 'edit my daily project', 'relax', 'ນອນ', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-28 11:55:32'),
(307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າຫອມບົ່ວ', 0, 0, '2024-02-28 17:46:21'),
(308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າຢາຕົ້ມໄກ່', 0, 0, '2024-02-28 17:46:34'),
(309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63000, 'ຄ່າໄຂ່ແຕະ1', 0, 0, '2024-02-28 17:47:04'),
(310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່ານ້ຳຫວານ', 0, 0, '2024-02-28 17:47:22'),
(311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-02-28 17:47:35'),
(322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28000, 'ທົດສອບເງິນໃນບັນຊີ', NULL, NULL, 1, 0, '2024-02-28 20:55:26'),
(327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28000, 'ທົດສອບໃນບັນຊີ', 1, 0, '2024-02-28 21:07:43'),
(328, 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+laravel', 'lararvel+livewire ecommerce1', 'lararvel+livewire ecommerce1', 'lararvel+livewire ecommerce1', 'ພັກຜ່ອນ', 'lararvel+livewire ecommerce1', 'lararvel+livewire ecommerce1', 'lararvel+livewire ecommerce1', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ກິນເຂົ້າ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-02-29 10:28:05'),
(329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 400000, 'ຄ່າຫ້ອງແຖວ', 0, 0, '2024-02-29 10:36:18'),
(330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34000, 'ຊານົມຈ້ຳໂປ້2ຈອກ', 0, 0, '2024-03-01 16:50:08'),
(331, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ອາບນ້ຳ', 'ກິນເຂົ້າ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'laravel+livewire ecommerce1', 'laravel+livewire1:00+ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-01 17:14:40'),
(332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ໝາກອຶ', 0, 0, '2024-03-01 18:15:01'),
(333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 1, 0, '2024-03-01 18:15:24'),
(337, 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ຊັກເຄື່ອງ', 'laravel+livewire ecommerce', 'laravel+livewire ecommerce', 'laravel+livewire ecommerce1', 'lararvel+livewire ecommerce1', 'laravel+ecommerce1', 'laravel+ecommerce1', 'laravel', 'laravel ecommerce', 'laravel+livewire ecommerce1', 'laravel+livewire1:00+ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-02 00:48:24'),
(339, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'laravel+ecommerce+livewire', 'laravel+ecommerce+livewire', 'laravel+ecommerce+livewire', 'ຫຍິບເສື້ອ', 'ຫຍິບເສື້ອ', 'ອາບນ້ຳ+ໄປຕະຫຼາດ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ໄປກິນບຸບເຟ່ນຳອ້າຍ', 'ໄປກິນບຸບເຟ່ນຳອ້າຍ+ກັບຫ້ອງ', 'laravel+livewire ecommerce1', 'laravel+livewire', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-03 14:20:19'),
(340, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101000, 'ຈາກນ້ອງຊາຍ', NULL, NULL, 0, 0, '2024-03-03 14:42:12'),
(341, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຊື້ຊີ້ນ', 0, 0, '2024-03-03 14:42:40'),
(342, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ນ້ຳຫວານ', 0, 0, '2024-03-03 14:42:55'),
(343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 'ຜັກ+ຫົວຜັກທຽມ+ຫອມບົ່ວ', 0, 0, '2024-03-03 14:43:08'),
(345, 'laravel+livewire ecommerce', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ+ກິນເຂົ້າ', 'laravel+ecommerce+livewire', 'ໄປຝາກເຄື່ອງ', 'ພັກຜ່ອນ', 'laravel+livewire ecommerce', 'laravel+livewire ecommerce', 'laravel+livewire ecommerce', 'laravel+livewire ecommerce1', 'lararvel+livewire ecommerce1', 'ສອນ php', 'ບັນທຶກ', 'laravel+livewire ecommerce', 'laravel+livewire ecommerce', 'laravel+livewire ecommerce', 'ນອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-04 19:21:25'),
(346, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62000, 'ຊື້ປື້ມ', 0, 0, '2024-03-04 19:22:10'),
(347, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 'ຊື້ພິກ', 0, 0, '2024-03-04 19:23:14'),
(349, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80000, 'ຄ່າຊື້ ແລະ ຝາກປື້ມ', NULL, NULL, 1, 0, '2024-03-05 13:00:49'),
(350, 'laravel+livewire ecommerce', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'lararvel+livewire ecommerce1', 'laravel+ecommerce+livewire', 'ກິນເຂົ້າ', 'laravel+livewire ecommerce1', 'laravel+livewire ecommerce1', 'lararvel+livewire ecommerce1', 'ສອນ php', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'laravel+livewire1:00+ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-05 15:36:39'),
(353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 1, 0, '2024-03-05 22:19:26'),
(354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ຄ່າໄຟ້າ', 1, 0, '2024-03-06 14:48:45'),
(355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62000, 'ຄ່າປື້ມໃຫ້ນັກຮຽນ', 1, 0, '2024-03-06 14:49:27'),
(356, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17000, 'ຊານົມຈ້ຳໂປ້', 1, 0, '2024-03-06 14:49:47'),
(357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62000, 'ຄ່າປື້ມໃຫ້ນັກຮຽນ', 1, 0, '2024-03-06 14:50:21'),
(358, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80000, 'ຄ່າຊື້ ແລະ ຝາກປື້ມ', NULL, NULL, 1, 0, '2024-03-06 14:50:56'),
(359, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55000, 'ໄຂ່ແຕະໜື່ງ', 1, 0, '2024-03-06 16:30:32'),
(360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 'ນ້ຳຕານ ແລະ ນ້ຳກ້ອນ', 1, 0, '2024-03-06 16:31:35'),
(361, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ສົ່ງປື້ມໃຫ້ນັກຮຽນ', 'ພັກຜ່ອນ', 'ມາທີ່ ປິ່ງຊຸນ+github', 'github ', 'github can push and clone', 'github can push and clone', 'github can push and clone', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '2024-03-06 18:36:59'),
(362, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ+ກິນເຂົ້າ', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '2024-03-07 11:17:48'),
(364, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ຄ່ານ້ຳຢາລ້າງຈານ', 0, 0, '2024-03-07 18:59:48'),
(365, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000, 'ຄ່າບໍລິກິນ bcelone', 1, 0, '2024-03-07 19:05:38'),
(366, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າຫອມບົ່ວ', 0, 0, '2024-03-07 19:06:28'),
(367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ໃຊ້ທົ່ວໄປ', 0, 0, '2024-03-07 19:09:22'),
(368, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6000, 'ນ້ຳດື່ມຫົວເສືອ', 1, 0, '2024-03-13 15:28:34'),
(369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-03-13 15:28:51'),
(370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-03-13 15:29:13'),
(371, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ນ້ຳມັນເຄື່ອງ', 0, 0, '2024-03-13 15:29:49'),
(372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ນ້ຳມັນລົດ', 0, 0, '2024-03-13 15:30:14'),
(373, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ໃຫ້ນ້ອງຊາຍ', 1, 0, '2024-03-13 15:30:33'),
(374, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-03-13 15:30:53'),
(375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300000, 'ເອື້ອຍເອົາໃຫ້ແມ່', NULL, NULL, 1, 0, '2024-03-13 15:31:33'),
(376, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-03-13 15:32:16'),
(377, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2200000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-03-13 15:34:41'),
(378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 1, 0, '2024-03-13 15:38:59'),
(379, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 1, 0, '2024-03-13 15:39:11'),
(380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000, 'ຄ່າຝາກລົດຈັກ', 1, 0, '2024-03-13 15:39:33'),
(381, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000, 'ຄ່າບໍລິການ bcelone', 1, 0, '2024-03-13 15:39:51'),
(382, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32000, 'ໃຊ້ທົ່ວໄປ', 0, 0, '2024-03-13 15:43:39'),
(383, 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-08 15:46:05'),
(384, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ກິນເຂົ້າ', 'ກຽມ', 'ກັບບ້ານ', '', 'ກັບບ້ານ', 'ກັບບ້ານ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-09 15:47:29'),
(385, 'ຕື່ນນອນ', 'ແຕ່ງກິນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-10 15:48:28'),
(386, 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ເຮັດຂວັນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-11 15:49:28'),
(387, 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-12 15:50:35'),
(388, 'ຕື່ນນອນ', 'ກຽມເຄື່ອງ', 'ກັບວຽງ', 'ກັບວຽງ', 'ກັບວຽງ', 'ໄປຮັບນ້ອງ', 'ໄປຮັບນ້ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ+ໄປຕະຫຼາດ', 'ກິນເຂົ້າ', 'ໄປຊື້ເຄື່ອງໃຫ້ແມ່', 'ຝາກເຄື່ອງໃຫ້ແມ່', 'ສອນ php', 'ພັກຜ່ອນ+ໄປຊື້ຜັກ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-13 15:52:30'),
(390, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80000, 'ຄ່າຊື້ ແລະ ຝາກປື້ມ', NULL, NULL, 1, 0, '2024-03-13 19:48:03'),
(391, 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ອາບນ້ຳ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ໄປສົ່ງປື້ມ ແລະ ໄປທີ່ປິ່ນຊຸມ', 'ມາທີ່ປິ່ງຊຸນ', 'ມາທີ່ປິ່ງຊຸນ', 'ມາທີ່ປິ່ງຊຸນ', 'ມາທີ່ປິ່ງຊຸນ', 'ມາທີ່ປິ່ງຊຸນ', 'ພັກຜ່ອນ', 'ສອນ php', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-14 09:22:09'),
(397, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2100000, 'ຊື້ໂທລະສັບໃຫ້ແມ່', 0, 0, '2024-03-14 09:44:59'),
(398, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120000, 'ຊື້ເບີໂທໃຫ້ແມ່', 0, 0, '2024-03-14 09:45:14'),
(399, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າຝາກໂທລະສັບ', 1, 0, '2024-03-14 09:45:48'),
(400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ຄ່າຜັກ', 0, 0, '2024-03-14 09:46:13'),
(401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57000, 'ຊື້ຊິ້ນ', 0, 0, '2024-03-14 09:46:24'),
(402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ນ້ຳຫວານ', 0, 0, '2024-03-14 09:46:36'),
(403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 1, 0, '2024-03-14 09:49:55'),
(405, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-03-14 10:04:05'),
(406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62000, 'ຄ່າປື້ມໃຫ້ນັກຮຽນ', 0, 0, '2024-03-14 15:05:21'),
(407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17000, 'ຊານົມຈ້ຳໂປ້', 0, 0, '2024-03-14 19:29:39'),
(408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າໝາກນາວ', 0, 0, '2024-03-14 19:29:56'),
(410, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 1, 0, '2024-03-14 19:31:13'),
(413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-03-14 19:42:39'),
(416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-03-14 19:48:11'),
(417, 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ມາທີ່ ປິ່ງຊຸນ', 'ຕັດວິດີໂອ', 'ພັກຜ່ອນ+ກັບບ້ານ', 'ສອນ php', '', '', 'ກິນເຂົ້າ+ອາບນ້ຳ', 'ພັກຜ່ອນ', 'react js + livewire + ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-15 17:22:28'),
(418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າຂຶ້ນເຮືອໄປທ່າດິນແດງໃຕ້', 0, 0, '2024-03-16 18:36:57'),
(419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ຄ່າໄຂ່ແຕະ1', 0, 0, '2024-03-16 18:37:23'),
(420, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າດອກຂົມ', 0, 0, '2024-03-16 18:37:47'),
(421, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ໄປທ່າດິນແດງ', 'ໄປທ່າດິນແດງ', 'ໄປທ່າດິນແດງ', 'ໄປທ່າດິນແດງ', 'ໄປທ່າດິນແດງ', 'ໄປທ່າດິນແດງ', 'ໄປທ່າດິນແດງ', 'ກັບຫ້ອງ', 'ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-16 18:39:41'),
(423, 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ໄປສົ່ງປ່າ', 'ໄປສົ່ງປ່າ', 'ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-17 10:16:31'),
(424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16000, 'ຢາໃສ່ເສຶ້ອຜ້າ', 0, 0, '2024-03-17 11:50:34'),
(425, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າຢາຕົ້ມໄກ່', 0, 0, '2024-03-17 19:01:39'),
(426, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ນ້ຳຫວານ', 0, 0, '2024-03-17 19:01:56'),
(427, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80000, 'ຄ່າຊື້ ແລະ ຝາກປື້ມ', NULL, NULL, 1, 0, '2024-03-18 08:48:38'),
(428, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນ້ຳ', 'ໄປໂຮງຮຽນ', 'ພັກຜ່ອນ+note table', 'ຮຽນສຳມະນາ', 'ຮຽນສຳມະນາກັບຫ້ອງ', 'ພັກຜ່ອນ+ກິນເຂົ້າ', 'ກິນເຂົ້າ+ໄປໂຮງຮຽນ+ຮຽນ', 'ຮຽນ+ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສອນ php', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'edit daily', 'edit daily', 'ນອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-18 09:16:23'),
(429, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີໄປທີ່ m m', 1, 0, '2024-03-18 13:37:48'),
(430, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17000, 'ຄ່າຊານົມ', 1, 0, '2024-03-18 20:21:59'),
(466, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າສົ້ມ', 0, 0, '2024-03-18 22:40:02'),
(467, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າເປບຊີ', 0, 0, '2024-03-18 22:40:22'),
(474, 'ນອນ', 'ຕື່ນນອນ', 'ບັນທຶກ+ອາບນ້ຳ', 'ໄປໂຮງຮຽນ+ຮຽນ', 'ຮຽນ machine learning', 'ນັ່ງຫຼີ້ນ', 'vue.js javascript framework', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-19 06:52:14'),
(477, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-03-19 10:32:47'),
(479, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2', NULL, NULL, 1, 1, '2024-03-19 11:26:38'),
(480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000, 'ຄ່າຝາກລົດຈັກ', 1, 1, '2024-03-19 11:36:41'),
(481, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '144', 0, 1, '2024-03-20 09:43:17'),
(482, 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ຊັກເຄື່ອງ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ+ໄປທີ່ປິ່ງຊຸນ', 'react js + laravel', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-03-20 09:45:59'),
(483, 'ນອນ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-03-20 09:46:54'),
(484, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000, 'ຄ່າບໍລິກິນ bcelone', 1, 0, '2024-03-20 09:48:16'),
(485, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ຄ່າຜັກ', 1, 0, '2024-03-20 09:48:41'),
(486, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37000, 'ຄ່າຊີ້ນ', 1, 0, '2024-03-20 09:48:55'),
(487, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າເປບຊີ+ນ້ຳກ້ອນ', 1, 0, '2024-03-20 09:49:36'),
(488, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, '2', 0, 1, '2024-03-20 09:50:57'),
(490, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '0', 0, 1, '2024-03-20 14:59:17'),
(491, 'asd', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-03-20 15:29:19'),
(492, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ຊັກເຄື່ອງ', 'ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ສອນ php', 'ພັກຜ່ອນ', 'react js', 'react js ', 'laravel+livewire deposite', 'laravel+livewire deposite', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-20 20:52:21'),
(493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 'sds', NULL, NULL, 0, 1, '2024-03-20 23:36:09'),
(494, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000, 'ຈຕ 5030', NULL, NULL, 0, 1, '2024-03-20 23:42:16'),
(495, 'ນອນ', 'ຕື່ນນອນ+ອາບນຳ້', 'ແຕ່ງກິນ+ກິນເຂົ້າ+ອາບນ້ຳ+ໄປໂຮງຮ', 'ຮຽນ ວິສະວະກຳຊອບແວຣ', 'ຮຽນ ວິສະວະກຳຊອບແວຣ', 'ກັບຫ້ອງ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ໄປໂຮງຮຽນ', 'ມະນຸດສຳພັນ', 'ມະນຸດສຳພັນ', 'react + native', 'react + native', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'react + native', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-21 06:26:51'),
(496, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 300, 'ຄ່ານ້ຳດື່ມ', 0, 1, '2024-03-21 08:20:39'),
(497, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 0, 1, '2024-03-21 09:21:28'),
(498, 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ+ມາທີ່ປິ່ງຊຸນ', 'ພັກຜ່ອນ', 'react native', 'react native', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'resume', 'php ecommerce', 'resume', 'resume', 'ກິນເຂົ້າ+ອາບນ້ຳ', 'ພັກຜ່ອນ+ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-22 11:59:38'),
(499, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27000, 'ຄ່າໝາກນາວ+ຫອມປ້ອນ', 0, 0, '2024-03-22 12:00:19'),
(500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່ານ້ຳຫວານ', 0, 0, '2024-03-22 12:00:37'),
(501, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000, 'ຄ່າວິຕາມິນຊີ', 0, 0, '2024-03-22 12:01:01'),
(502, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າໝາກບວດຕົ້ມ', 0, 0, '2024-03-22 12:01:30'),
(503, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າອາຫານ', 0, 0, '2024-03-23 16:50:27'),
(504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ຄ່າອາຫານ', 0, 0, '2024-03-23 16:50:36'),
(505, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ໄປຫຼີ້ນບຸນjob', 'ໄປຫຼີ້ນບຸນjob', 'ກັບຫ້ອງ', 'ພັກຜ່ອນ+ມາທີ່ປິ່ງຊຸນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-23 16:52:21'),
(506, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ໝາກແຕງຂົມ', 0, 0, '2024-03-24 10:48:45'),
(507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ຄ່າຊີ້ນ', 0, 0, '2024-03-24 10:49:02'),
(508, 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ຊັກເຄື່ອງ', 'ກິນເຂົ້າ', 'react js', 'react js', 'react js', 'react js', 'ພັກຜ່ອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-24 10:51:33'),
(509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44000, 'ເຄື່ອງອົບ', 1, 0, '2024-03-25 13:29:40'),
(510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 'Antacil', 0, 0, '2024-03-25 13:29:56'),
(511, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າອາຫານ', 0, 0, '2024-03-25 13:30:15'),
(512, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າກາວກາຊ້າງ', 0, 0, '2024-03-25 13:30:34'),
(513, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'web security', 'web security', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສອນ php', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-25 13:39:23'),
(514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22222, 'ຄ່ານ້ຳດື່ມ', 0, 1, '2024-03-25 18:29:01'),
(515, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'tsefsfsf', 0, 1, '2024-03-25 18:51:59'),
(516, 'ນອນ', 'ນອນ', 'ນອນ', 'ໄປໂຮງຮຽນ+ຮຽນ', 'machine learning', 'vue.js', 'vue.js', 'ກິນເຂົ້າ', 'web security', 'web security', 'ພັກຜ່ອນ', 'ມາທີ່ປິ່ງຊຸນ', 'ສອນphp', 'ສອນ php', 'ພັກຜ່ອນ', 'laravel + livewire motobike', 'laravel + livewire motobike', 'laravel + livewire motobike', 'laravel + livewire motobike', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-26 16:35:40'),
(517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17000, 'ຄ່າຊານົມ', 1, 0, '2024-03-26 16:36:02'),
(518, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ມາດາວໂຫຼດ react js', 'ມາດາວໂຫຼດ react js', 'ມາດາວໂຫຼດ react js', 'ມາດາວໂຫຼດ react js+ ກັບຫ້ອ', '', 'ອາບນ້ຳ', '', '', NULL, NULL, NULL, NULL, 0, 0, '2024-03-27 15:05:42'),
(519, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່ານ້ຳມັນລົດ', 1, 0, '2024-03-27 17:35:47'),
(520, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ໄຂ່ແຕະໜື່ງ', 1, 0, '2024-03-27 17:36:05'),
(521, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ໄປໂຮງຮຽນ+ຮຽນ', 'ວິສະວະກຳຊອບແວຣ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ+ໄປໂຮງຮຽນ', 'ມະນຸດສຳພັນ', 'ມະນຸດສຳພັນ', '', '', '', '', '', '', '', '', '', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-28 14:38:29'),
(522, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ໄປໂຮງຮຽນ', 'react native', 'react native', 'vue js', 'vue js', '', '', '', '', '', '', '', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-29 13:50:01'),
(523, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25000, 'ຄ່າປື້ມໃຫ້ນ້ອງຊາຍ', 1, 0, '2024-03-29 15:17:04'),
(524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 400000, 'ຄ່າຫ້ອງແຖວ', 0, 0, '2024-03-29 15:17:20'),
(525, 'ນອນ', 'ນອນ', 'ນອນ', '', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-31 16:04:57'),
(526, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ+ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-03-31 16:06:14'),
(527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2200000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 1, 0, '2024-03-31 16:06:28'),
(528, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 145000, 'ຄ່າຊື້ໂສ້ງຂາສັ້ນ', 1, 0, '2024-03-31 16:06:52'),
(529, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ຄ່ານ້ຳມັນພືດ', 0, 0, '2024-03-31 16:07:41'),
(530, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 'ຄ່າເມັກກີ', 0, 0, '2024-03-31 16:07:57'),
(531, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າຫວຍ', 1, 0, '2024-03-31 16:08:18'),
(532, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າຜັກ', 0, 0, '2024-03-31 16:08:45'),
(533, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000, 'ດອກເບ້ຍ', NULL, NULL, 1, 0, '2024-03-31 16:09:58'),
(534, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 96000, 'ໃຊ້ທົ່ວໄປ', 0, 1, '2024-03-31 16:12:13'),
(535, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 96000, 'ໃຊ້ທົ່ວໄປ', 0, 0, '2024-03-31 16:16:38'),
(536, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ice cream', 1, 0, '2024-03-31 18:26:33'),
(537, 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ+ຊັກເຄື່ອງ', 'ແປງ daily', 'react js', 'react js', 'react js', '', '', '', '', '', '', '', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-01 12:41:11'),
(538, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1200, 'tester', 0, 1, '2024-04-01 13:54:32'),
(539, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'dlaab txhaj hab naam dlaab txh', NULL, NULL, 0, 1, '2024-04-01 14:53:55'),
(540, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34000, 'ຄ່າຊານົມ', 1, 0, '2024-04-02 15:11:05'),
(541, 'ນອນ', 'ນອນ', 'ນອນ', 'ອາບນຳ້+ໄປໂຮງຮຽນ', 'machine Learning', 'vue.js', 'vue.js', 'ກັບຫ້ອງ+ກິນເຂົ້າ', 'web security', 'web security', 'relax', 'relax', 'react js', 'ສອນ php', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-02 15:14:23'),
(542, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34000, 'ຄ່າຊີ້ນ', 1, 0, '2024-04-02 17:55:15'),
(543, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000, 'ຄ່າຜັກ', 1, 0, '2024-04-02 17:55:35'),
(544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1300, 'ຄ່າຫອມບົ່ວ+ຫົວຜັກທຽງ', 1, 0, '2024-04-02 17:56:08'),
(545, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່ານ້ຳຫວານ', 1, 0, '2024-04-02 17:56:28'),
(546, 'react js', 'ກິນເຂົ້າ', 'react js', 'ພັກຜ່ອນ', 'react js', 'react js', 'react js', 'ກິນເຂົ້າ', 'react js', 'react js', 'react js', 'react js', 'ພັກຜ່ອນ', '', '', '', '', '', '', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 1, '2024-04-02 22:18:58'),
(547, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ຊັກເຄື່ອງ', 'ອາບນ້ຳ', 'ພັກຜ່ອນ', 'react js', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'react js', 'react js', 'react js', 'react js ', 'react js', 'react js', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-03 14:31:42'),
(548, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ຄ່າຜັກ', 0, 0, '2024-04-03 18:27:18'),
(549, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ', 'ອາບນ້ຳ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', '', '', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 1, '2024-04-05 19:56:22'),
(550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000, 'ຄ່າປີ່ນເອກະສານ', 0, 0, '2024-04-05 19:56:42'),
(551, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75000, 'ຄ່າຫົວທຽນລົດຈັກ', 0, 0, '2024-04-05 19:56:58'),
(552, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43000, 'ຄ່າຊີ້ນ', 0, 0, '2024-04-05 19:57:31'),
(553, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42000, 'ຄ່າຜັກ', 0, 0, '2024-04-05 19:57:50'),
(554, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່ານ້ຳຫວານ', 0, 0, '2024-04-05 19:58:07'),
(555, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າອາຫານ', 0, 0, '2024-04-05 20:57:59'),
(556, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16000, 'ຄ່າເປບຊີ', 0, 0, '2024-04-05 22:51:40'),
(557, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, 'ຄ່ານ້ຳກ້ອນ', 0, 0, '2024-04-05 22:52:19'),
(558, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ອ້າຍເອົາໃຫ້ຝາກໄກ່', NULL, NULL, 1, 0, '2024-04-06 11:59:39'),
(559, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 'ໃຊ້ທົ່ວໄປ', 1, 0, '2024-04-06 12:04:33'),
(560, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າອາຫານ', 0, 0, '2024-04-06 17:01:21'),
(561, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-04-06 17:01:36'),
(562, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ice cream', 0, 0, '2024-04-06 17:02:07'),
(563, 'ນອນ', 'asfd', 'sf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-04-06 20:07:43'),
(564, 'tsfa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-04-06 20:08:22'),
(565, 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນ້ຳ+ໄປໂຮງຮຽນ', 'ຮຽນ', 'ກັບຫ້ອງ+ກິນເຂົ້າ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ໄປໂຮງຮຽນ+ຮຽນ', 'ຮຽນ', 'ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສອນ php', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-04 20:18:40'),
(566, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-05 20:19:54'),
(567, 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', '', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'react js', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-06 20:20:44'),
(568, 'ຕື່ນນອasdfsaກກຳລັງໄກ', 'asdfsadf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-04-06 20:47:33'),
(569, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-04-06 21:29:03'),
(570, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-04-06 21:29:17'),
(571, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ອາບນ້ຳັຫກດຫັດ', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-04-06 21:29:42'),
(572, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-04-06 21:30:58'),
(573, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-04-06 21:32:16'),
(574, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-04-06 22:14:13'),
(575, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000, 'ຄ່າບໍລິກິນ bcelone', 1, 0, '2024-04-06 22:52:21'),
(576, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'react js', 'ອາບນ້ຳ', 'react js', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-07 08:17:05'),
(577, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າອາຫານ', 0, 0, '2024-04-07 18:33:15'),
(578, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ກວດຫ້ອງ', 'ກິນເຂົ້າ:10:10', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ໄປເອົາເຄື່ອງ', 'ໄປເອົາເຄື່ອງ', 'ໄປເອົາເຄື່ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສອນphp', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'react js ', 'react js', 'react js', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-08 09:54:16'),
(579, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 1, 0, '2024-04-08 19:49:47'),
(580, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45000, 'ຄ່າອາຫານ', 0, 0, '2024-04-08 19:50:01'),
(581, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14000, 'ຄ່າໝີ່:2:7', 0, 0, '2024-04-09 09:45:07'),
(582, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16000, 'ຄ່າເປບຊີ', 0, 0, '2024-04-09 09:45:22'),
(583, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-04-09 09:45:32'),
(584, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18500, 'ຄ່າປາກະປອງ', 0, 0, '2024-04-09 09:45:56'),
(585, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 1, 0, '2024-04-09 09:46:10'),
(586, 'ນອນ', 'ນອນອ', 'ຕື່ນນອນ+ໄປສົ່ງມະໂຫສົດ+ອາບນ້ຳ', 'ໄປໂຮງຮຽນ+ຮຽນ', 'ຮຽນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'react js', 'react js', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-09 09:48:44'),
(587, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ice cream', 0, 0, '2024-04-09 15:46:13'),
(588, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ພັກຜ່ອນ', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-10 11:51:10'),
(589, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22000, 'ຄ່າອາຫານ', 0, 0, '2024-04-10 11:51:31'),
(590, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 'ຄ່າພວງມາໄລໃຫ້ອາຈານ', 1, 0, '2024-04-10 14:26:55'),
(591, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-04-11 09:23:01'),
(592, 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ກິນເຂົ້າ', '', '', '', '', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-11 09:24:28'),
(593, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 'ປາກະປອງ', 0, 0, '2024-04-11 19:45:18'),
(594, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34000, 'ຄ່າຜັກ', 0, 0, '2024-04-11 19:45:26'),
(595, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17000, 'ຄ່າຊານົມ', 0, 0, '2024-04-11 19:45:39'),
(596, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33000, 'ຄ່າເອັມ150', 0, 0, '2024-04-14 14:20:36'),
(597, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-04-14 14:20:52'),
(598, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 0, 0, '2024-04-14 14:21:11'),
(599, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 1, 0, '2024-04-14 14:21:36'),
(600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ໃຫ້ນ້ອງຊາຍ', 0, 0, '2024-04-14 14:21:49'),
(601, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 500000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-04-14 14:22:03'),
(602, 'ກັບບ້ານ', 'ກັບບ້ານ', 'ກັບບ້ານ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ພັກຜ່ອນ', 'ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-12 14:23:54'),
(603, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ພັກຜ່ອນ', 'ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-13 14:25:26'),
(604, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-14 14:26:16'),
(605, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ+ອາບນ້ຳ', 'php hotel booking', 'php hotel booking', 'php hotel booking', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-15 20:51:57'),
(606, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'php booking', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-16 01:40:54'),
(607, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ຊ່ວຍລຸງເຮັດຂວັນ', 'ຊ່ວຍລຸງເຮັດຂວັນ', 'ຊ່ວຍລຸງເຮັດຂວັນ', 'ຊ່ວຍລຸງເຮັດຂວັນ', 'ຊ່ວຍລຸງເຮັດຂວັນ', 'ຊ່ວຍລຸງເຮັດຂວັນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-17 09:30:20'),
(608, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ hotel booking', 'hotel booking', 'hotel booking', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ+ຊັກເຄື່ອງ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ພັກຜ່ອນ', '', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-18 09:32:06'),
(609, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-19 15:29:57'),
(610, 'ຕື່ນນອນ+ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ໄປເກັບຟືນ', 'ອາບນ້ຳ', 'ໄປກິນດອງ', 'ໄປກິນດອງ', 'ໄປກິນດອງ', 'ໄປກິນດອງ', 'ໄປກິນດອງ', 'ໄປກິນດອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ນອນ', 'ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-20 15:31:20'),
(611, 'ຕື່ນນອນ+ແຕ່ງກິນ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ກຽມ', 'ກຽມ+ກັບວຽງ', 'ກັບວຽງ', 'ກັບວຽງ', 'ກັບວຽງ', 'ກັບວຽງ', 'ກັບວຽງ', 'ກິນເຂົ້າກກ', 'ພັກຜ່ອນ+ອາບນ້ຳ+ຊັກເຄື່ອງ', 'ຊັກເຄື່ອງ', 'ຊັກເຄື່ອງ', 'ໄປຕະຫຼາດ+ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'hotel booking', 'ອາບນ້ຳ', 'hotel booking', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-21 15:34:03'),
(612, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160000, 'ເບກໜ້າ:40 ເບກຫຼັງ:60 ນ້ຳມນັເຄື', 0, 0, '2024-04-21 15:37:05'),
(613, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-04-21 15:37:30'),
(614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-04-21 15:37:40'),
(615, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 1, 0, '2024-04-21 15:37:51'),
(616, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-04-21 15:38:34'),
(617, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 'ຄ່າປາກະປອງ', 0, 0, '2024-04-21 15:38:57'),
(618, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16000, 'ຄ່າຫອມບົ່ວ', 0, 0, '2024-04-21 15:39:12');
INSERT INTO `pdaily` (`id`, `five_six`, `six_seven`, `seven_eight`, `eight_nine`, `nine_ten`, `ten_eleven`, `eleven_twelve`, `twelve_thirteen`, `thirteen_fourteen`, `fourteen_fifteen`, `fifteen_sixteen`, `sixteen_seventeen`, `seventeen_eighteen`, `eighteen_nineteen`, `nineteen_twenty`, `twenty_twentyone`, `twentyone_twentytwo`, `twentytwo_twentythree`, `twentythree_five`, `days`, `income`, `in_reason`, `expenditure`, `ex_reason`, `m_status`, `is_delete`, `timestamp`) VALUES
(619, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17000, 'ຄ່າປາກະປອງ', 0, 0, '2024-04-21 15:39:26'),
(620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ອ້າຍເອົາໃຫ້', NULL, NULL, 0, 0, '2024-04-21 15:39:47'),
(621, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-04-21 15:39:58'),
(622, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 111111, '111111', NULL, NULL, 0, 1, '2024-04-21 15:46:58'),
(623, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 97500, 'ໃຊ້ທົ່ວໄປ', 0, 1, '2024-04-21 15:57:04'),
(624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200000, 'ໃຫ້ນ້ອງຊາຍ', 0, 0, '2024-04-21 15:59:00'),
(625, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-04-21 16:17:56'),
(626, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35000, 'ຄ່າໄຟ້າ', 0, 0, '2024-04-21 18:30:30'),
(627, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55000, 'ຄ່າຊີ້ນ', 0, 0, '2024-04-21 18:30:45'),
(628, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56000, 'ຄ່າຜັກ', 0, 0, '2024-04-21 18:31:22'),
(629, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-04-21 18:33:51'),
(630, 'ຕື່ນນອນ+ແຕ່ງກິນ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ກິນເຂົ້າ', 'ສົ່ງນ້ອງໄປຮຽນ', 'ພັກຜ່ອນ', 'ພ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ສອນphp', 'ສອນ php', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ອາບນ້ຳ', 'hotel booking', 'hotel booking', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-22 17:02:20'),
(631, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນ້ຳ', 'ໄປໂຮງຮຽນ+ຮຽນmachine', 'machine learning', 'vue.js', 'vue.js+ກັບຫ້ອງ', 'ພັກຜ່ອນ+ກິນເຂົ້າ', 'ມາ bing chun + products', 'ພັກຜ່ອນ+ໄປຮຽນ', 'ຮຽນພາສາອັງກິດ', 'ຮຽນ+ກັບຫ້ອງ', 'ກັບມາອາເມຊອນ+ພັກຜ່ອນ', 'tiktok', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ພັກຜ່ອນ', 'ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-23 09:41:47'),
(632, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນ້ຳ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ຊັກເຄື່ອງ+ອາບນ້ຳ', 'ຕັດຜົມ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ມາທີ່ປິ່ງຊຸນ', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-24 10:16:42'),
(633, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ຄ່າຝາກລົດຈັກ', 0, 0, '2024-04-24 10:17:07'),
(634, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າຖົງມື', 1, 0, '2024-04-24 10:17:24'),
(635, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນ້ຳ+ໄປໂຮງຮຽນ', 'ກັບຫ້ອງ+ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ໄປໂຮງຮຽນ honda yes award', 'ລວມ+ແກ້ໄຂຄອມ', 'ແກ້ໄຂຄອມ', '', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-25 14:33:59'),
(636, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າໂອລາລິດ', 0, 0, '2024-04-25 14:34:24'),
(637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7000, 'tiffy', 1, 0, '2024-04-25 14:34:35'),
(638, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', '', NULL, NULL, NULL, NULL, 0, 1, '2024-04-25 16:09:03'),
(639, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່ານ້ຳສົ້ມ', 1, 0, '2024-04-26 10:49:13'),
(640, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43000, 'ຄ່າຜັກ', 0, 0, '2024-04-26 10:49:43'),
(641, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ໄປໂຮງຮຽນ+ຮຽນ', 'ຮຽນ', 'ກັບຫ້ອງ+ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ໄປຮຽນ+ຮຽນ', 'ຮຽນ+ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ໄປຊື້ເຄື່ອງ', 'ພັກຜ່ອນ+hotel booking', 'hotel booking', 'ອາບນ້ຳ', 'hotel booking', 'hotel booking', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-26 19:35:29'),
(642, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ຄ່າເຫຼັກບີບສິວ', 0, 0, '2024-04-27 16:51:22'),
(643, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40000, 'ຄ່າຜັກ', 0, 0, '2024-04-27 16:51:39'),
(644, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-04-27 16:51:50'),
(645, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-04-27 16:52:02'),
(646, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ຄ່າຊີ້ນເປັດ', 0, 0, '2024-04-27 16:52:20'),
(647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 600000, 'ໃຫ້ນ້ອງຊາຍ', 0, 0, '2024-04-27 16:53:42'),
(648, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 212000, 'ໃຊ້ທົ່ວໄປ', 0, 1, '2024-04-27 17:05:18'),
(649, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ໄປສຳມະນາ', 'ສຳມະນາ', 'ສາມະນາ+ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ໄປທີ່ປິ່ນຊຸນ+hotel booking', 'hotel booking', 'hotel booking', 'hotel booking', 'ອາບນ້ຳ', 'hotel booking', 'hotel booking', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-27 17:09:32'),
(650, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34000, 'ຄ່າຊານົມ', 1, 0, '2024-04-27 19:18:34'),
(651, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 95000, 'ກັອບປີ+ເຈ້ຍa4', 0, 0, '2024-04-27 19:19:21'),
(652, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17000, 'ຄ່າຊານົມ', 0, 0, '2024-04-27 19:19:34'),
(653, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100000, 'ໃຊ້ທົ່ວໄປ', 0, 0, '2024-04-27 19:20:37'),
(654, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ຊັກເຄື່ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+hotel booking', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'hotel booking', 'hotel booking', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-28 19:23:36'),
(655, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່ານ້ຳດື່ມ', 1, 0, '2024-04-28 19:23:46'),
(656, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ+hotel booking', 'hotel booking+ ໄປໂຮງຮຽນ', 'web security', 'web security', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-29 11:19:00'),
(657, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 400000, 'ຄ່າຫ້ອງແຖວ', 0, 0, '2024-04-29 15:57:24'),
(658, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າໄຂ່', 0, 0, '2024-04-29 15:57:43'),
(659, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'hotel booking', 'hotel booking', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-04-30 12:23:18'),
(660, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000, 'ໂຊກໃຫ້', NULL, NULL, 0, 0, '2024-04-30 16:05:25'),
(661, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9000, 'ຄ່ານ້ຳດື່ມໃນອາເມຊອນ', 0, 0, '2024-04-30 16:11:24'),
(662, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ຄ່າເຂົ້າຈີ່ປາເຕ່', 0, 0, '2024-04-30 16:34:57'),
(663, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5500, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-04-30 18:30:00'),
(664, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22000, 'ຄ່າອາຫານ', 0, 0, '2024-05-01 18:24:31'),
(665, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສອນphp', 'ສອນ php+ໄປຕະຫຼາດ ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ສະຫຼຸບບົດຮຽນ', 'ອາບນ້ຳ', 'hotel booking', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-01 18:29:54'),
(666, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65000, 'ຄ່າຊີ້ນຜັກ', 0, 0, '2024-05-01 22:38:24'),
(667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-05-02 18:37:51'),
(668, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ແຕ່ງກິນ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'hotel booking', 'ສອນ php', 'ອາບນ້ຳ', 'hotel booking', 'hotel booking', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-02 18:40:29'),
(669, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນ້ຳ+ໄປໂຮງຮຽນ', 'ຮຽນ', 'ຮຽນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ຮຽນ', 'ຮຽນ+ກັບຫ້ອງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ພັກຜ່ອນ', 'hotel booking', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-03 10:10:48'),
(670, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23000, 'ຄ່າອາຫານ', 0, 0, '2024-05-04 01:08:53'),
(671, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17000, 'ຊານົມຈ້ຳໂປ້', 0, 0, '2024-05-04 01:09:08'),
(672, 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ', 'ໄປຕະຫຼາດ+ແຕ່ງກິນ', 'ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'hotel booking', 'hotel booking', 'hotel booking', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-04 10:49:16'),
(673, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່າຊີ້ນ', 0, 0, '2024-05-04 19:15:42'),
(674, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32000, 'ຄ່າໝາກອື', 0, 0, '2024-05-04 19:16:09'),
(675, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40000, 'ຜັກ+ຫອມບົ່ວ', 0, 0, '2024-05-04 19:16:37'),
(676, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 710000, 'ຄ່າລົງທະບຽນ', 0, 0, '2024-05-05 15:54:50'),
(677, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ', 'ມາລົງທະບຽນ', 'ພັກຜ່ອນ', 'hotel booking', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ສອນ laravel', 'ອາບນ້ຳ', 'hotel booking', 'hotel booking + ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-05 16:13:19'),
(678, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່າບັດເຕີມເງິນໃນບັນຊີ', 1, 0, '2024-05-05 18:20:23'),
(679, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3000, 'ຄ່າບໍລິກິນ bcelone', 1, 0, '2024-05-05 18:20:39'),
(680, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ໃຫ້ນ້ອງຊາຍ', 0, 0, '2024-05-05 21:09:06'),
(681, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-05-06 12:44:19'),
(682, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7000, 'ໃຊ້ທົ່ວໄປ', 0, 0, '2024-05-06 12:48:01'),
(683, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ມາທີ່ປິ່ງຊຸນ', 'hotel booking', 'hotel booking', 'hotel booking', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-06 13:30:38'),
(684, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34000, 'ຄ່າຜັກ', 0, 0, '2024-05-07 08:11:05'),
(685, 'ນອນ', 'ນອນ', 'ນອນ+ຕື່ນນອນ+ໄປຮຽນ', 'ຮຽນ machine Learning', 'ຮຽນ machine Learning', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'hotel booking', 'ຊັກເຄື່ອງ', 'ສອນphp', 'ພັກຜ່ອນ', '', '', 'ອາບນ້ຳ', '', '', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-07 08:12:10'),
(686, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ພັກຜ່ອນ', 'hotel booking', 'ກິນເຂົ້າ', 'hotel booking', 'hotel booking', 'hotel booking', '', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-08 11:11:27'),
(687, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ກະເປົາເງິນ', 0, 0, '2024-05-08 16:06:06'),
(688, 'ນອນ', 'ນອນ', 'ນອນ+ຕື່ນນອນ+ໄປຮຽນ', 'ຮຽນ ວິສະວະກຳຊອບແວຣ', 'ຮຽນ ວິສະວະກຳຊອບແວຣ', 'ກັບຫ້ອງ+ກິນເຂົ້າ+ hotel bookin', 'hotel booking', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'react + native', 'react + native', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-09 09:56:59'),
(689, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8000, 'ຄ່າອາຫານ', 0, 0, '2024-05-09 15:37:53'),
(690, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14000, 'ໝາກອຶ', 0, 0, '2024-05-09 20:47:43'),
(691, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70000, 'ຄ່າສອນ english', NULL, NULL, 1, 0, '2024-05-09 20:48:13'),
(692, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31000, 'ຄ່າຢາດົມ', 1, 0, '2024-05-09 23:12:59'),
(693, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32000, 'ຄ່ານ້ຳໂອອີຊິ', 1, 0, '2024-05-09 23:13:23'),
(694, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າອາຫານ', 0, 0, '2024-05-10 18:17:50'),
(695, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສອນphp', 'ຊັກເຄື່ອງ+ອາບນ້ຳ', 'ກິນເຂົ້າ', '', 'ອາບນ້ຳ', '', '', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-10 18:19:15'),
(696, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55000, 'ຄ່າອາຫານ', 0, 0, '2024-05-11 11:12:06'),
(697, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-05-11 11:12:12'),
(698, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ຄ່າຜັກ', 0, 0, '2024-05-11 11:12:19'),
(699, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າອາຫານ', 0, 0, '2024-05-11 11:14:33'),
(700, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າໄຂ່', 0, 0, '2024-05-11 11:15:10'),
(701, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43000, 'ໃຊ້ທົ່ວໄປ', 0, 0, '2024-05-11 11:15:45'),
(702, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'hotel booking', 'hotel booking', 'ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ມາອາເມຊອນ+ hotel booking', 'hotel booking', 'hotel booking', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ແກ້ code hotel booking', '', '', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-11 15:02:52'),
(703, 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'hotel booking', 'hotel booking', 'hotel booking', 'hotel booking', 'hotel booking', 'laravel+livewire', 'ອາບນ້ຳ', 'hotel booking', 'hotel booking', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-12 15:34:01'),
(704, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'hotel booking', 'hotel booking', 'hotel booking', 'ກິນເຂົ້າ', 'hotel booking', '', '', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-13 11:02:36'),
(705, 'ນອນ', 'ນອນ', 'ນອນ', 'ໄປໂຮງຮຽນ', 'ຮຽນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ຕັດຜົມ', 'ພັກຜ່ອນ', 'hotel booking', 'ສອນ php', 'hotel booking', 'laravel daily', 'laravel daily', 'ກັບຫ້ອງ+ອາບນ້ຳ', 'ກິນເຂົ້າ', 'ນອນ', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-14 16:08:49'),
(706, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129000, 'ໃຊ້ທົ່ວໄປ', 0, 0, '2024-05-14 21:20:16'),
(707, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ+ອາບນ້ຳ+ຊັກເຄື່ອງ', 'hotel booking', 'hotel booking', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ສອນphp', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'wordpress', 'ອາບນ້ຳ', 'wordpress', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-15 11:36:42'),
(708, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1000000, 'ແມ່ເອົາໃຫ້', NULL, NULL, 0, 0, '2024-05-15 11:37:11'),
(709, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ice cream', 1, 0, '2024-05-15 20:07:48'),
(710, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ຮຽນ ວິສະວະກຳຊອບແວຣ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'ຊື້ພັດລົມ+ໄປໂຮງຮຽນ', 'ຮຽນ', 'ຮຽນ', 'ຮຽນ', 'ຮຽນ', 'ສອນphp', 'ແຕ່ງກິນ', 'ພັກຜ່ອນ', 'laravel', 'ອາບນ້ຳ', 'ພັກຜ່ອນ', 'ນອນ', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-16 11:27:13'),
(711, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 240000, 'ຄ່າພັດລົມ', 0, 0, '2024-05-16 16:05:10'),
(712, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-05-16 16:05:23'),
(713, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າອາຫານ', 0, 0, '2024-05-16 16:05:35'),
(714, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-05-16 16:05:43'),
(715, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ຄ່າເປີດບັນຊີ', 0, 0, '2024-05-16 16:05:55'),
(716, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45000, 'ຄ່າຜັກ', 0, 0, '2024-05-16 21:37:24'),
(717, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 'ຄ່າຜັກ', 0, 0, '2024-05-16 21:37:40'),
(718, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ຄ່ານ້ຳຫວານ', 0, 0, '2024-05-16 21:37:56'),
(719, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 'ຄ່າປາກະປອງ', 0, 0, '2024-05-16 21:38:17'),
(720, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ຊັກເຄື່ອງ', 'ກິນເຂົ້າ', 'ຮຽນ', 'ຮຽນ', 'ຮຽນ', 'ຮຽນ', 'ສອນphp', 'ຮຽນ', 'ຮຽນ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ອາບນ້ຳ', 'ຮຽນ', 'ນອນ', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-17 10:23:50'),
(721, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ສະຫຼຸບບົດຮຽນ', '', '', '', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-18 10:27:11'),
(722, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30000, 'ຄ່າໝາກແຕງ', 0, 0, '2024-05-18 11:02:13'),
(723, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 'ຄ່າອາຫານ', 0, 0, '2024-05-19 12:25:59'),
(724, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ຄ່າອາຫານ', 0, 0, '2024-05-19 12:26:12'),
(725, 'ຕື່ນນອນ+ແຕ່ງກິນ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ສະຫຼຸບບົດຮຽນ', 'ສະຫຼຸບບົດຮຽນ', 'ສະຫຼຸບບົດຮຽນ', 'ສະຫຼຸບບົດຮຽນ', 'ສະຫຼຸບບົດຮຽນ', 'ສະຫຼຸບບົດຮຽນ', 'ສະຫຼຸບບົດຮຽນ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'laravelpos', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-19 12:39:16'),
(726, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າອາຫານ', 0, 0, '2024-05-20 13:34:46'),
(727, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າຢາຖູແຂ້ວ', 0, 0, '2024-05-20 13:35:03'),
(728, 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'kali linux', 'kali linux', 'meeting', 'meeting', 'relax', 'relax', 'have dinner', 'relax', 'ອາບນ້ຳ', '', 'ນອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-20 13:36:35'),
(729, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່າໄຂ່', 0, 0, '2024-05-20 18:52:04'),
(730, 'ນອນ', 'ນອນ', 'ຕື່ນນອນ+ອາບນ້ຳ+ໄປໂຮງຮຽນ', 'ຮຽນ', 'ຮຽນ', 'ຮຽນ', 'ຮຽນ', 'ກັບຫ້ອງ+ກິນເຂົ້າ', 'ຮຽນ', 'ຮຽນ', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ອັງຄານ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-21 08:18:58'),
(731, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60000, 'ຄ່າໄຂ່ແຕະ1', 0, 0, '2024-05-23 09:44:05'),
(732, 'ນອນ', 'ນອນ', 'ນອນ', 'ຕື່ນນອນ', 'ແຕ່ງກິນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', '', '', '', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 1, '2024-05-23 10:44:40'),
(733, 'ນອນ', 'ນອນ', 'ນອນ', 'ແກ້ຄະນິດສາດໃຫ້ນ້ອງສາວ', 'ອາບນ້ຳ', 'ໄປຖ່າຍໜັງ', 'ຖ່າຍໜັງ', 'ກັບຫ້ອງ+ກິນເຂົ້າ', 'ລວມ', 'ລວມ', 'ຖ່າຍໜັງ', 'ຖ່າຍໜັງ', 'ຖ່າຍໜັງ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ນອນ', 'ພຸດ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-22 18:35:41'),
(734, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'ພັກຜ່ອນ', 'test deposit motorbike', 'test deposit motorbike', 'ກິນເຂົ້າ+ອາບນ້ຳ', 'Software Engineering', 'ນອນ', 'ພະຫັດ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-23 18:37:48'),
(735, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, 'ຄ່າທີຊູ', 0, 0, '2024-05-24 13:38:22'),
(736, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ໄປໂຮງຮຽນ+ຮຽນ', 'ຮຽນ', 'ຮຽນ', 'ຮຽນ', 'ກັບຫ້ອງ+ກິນເຂົ້າ', 'ໄປໂຮງຮຽນ+ຮຽນ', 'ຮຽນ', '', '', '', '', '', '', 'ອາບນ້ຳ', '', '', 'ສຸກ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-24 13:48:42'),
(737, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ພັກຜ່ອນ', 'ແຕ່ງກິນ+ກິນເຂົ້າ', 'ຊັກເຄື່ອງ', 'ມາທີ່ປິ່ງຊຸນ', 'vue js+node js', 'vue js+node js', 'vue js+node js', 'vue js+node js', 'ສຳມະນາ', 'ສຳມະນາ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ສຳມະນາ', 'ນອນ', 'ເສົາ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-25 14:59:29'),
(738, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າອາຫານ', 0, 0, '2024-05-25 14:59:36'),
(739, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'ຄ່າອາຫານ', 0, 0, '2024-05-26 11:47:43'),
(740, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10000, 'ຄ່ານ້ຳດື່ມ', 0, 0, '2024-05-26 11:47:52'),
(741, 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ນອນ', 'ອາບນ້ຳ', 'ກິນເຂົ້າ', 'node js + vue js', 'node js + vue js', 'node js + vue js', 'ໄປຕະຫຼາດ', 'node js + vue js', 'node js + vue js', 'node js + vue js', 'ອາບນ້ຳ', 'node js + vue js', 'ນອນ', 'ທິດ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-26 20:12:48'),
(742, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50000, 'ຄ່ານ້ຳມັນລົດ', 0, 0, '2024-05-26 20:12:55'),
(743, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 'ຄ່າຜັກ', 0, 0, '2024-05-26 20:13:01'),
(744, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 'ຄ່ານ້ຳຫວານ', 0, 0, '2024-05-26 20:13:17'),
(745, 'ຕື່ນນອນ+ແຕ່ງກິນ+ອອກກຳລັງໄກ', 'ອາບນ້ຳ+ກິນເຂົ້າ', 'ໄປໂຮງຮຽນ', 'vue js + node js', 'vue js + node js', 'vue js + node js', 'vue js + node js', 'ກິນເຂົ້າ', 'web security', 'web security', 'react + native', 'react + native', 'ສອນphp', 'ພັກຜ່ອນ+ແຕ່ງກິນ', 'ກິນເຂົ້າ', 'ພັກຜ່ອນ', 'ອາບນ້ຳ', 'vue js + node js', 'ນອນ', 'ຈັນ', NULL, NULL, NULL, NULL, 0, 0, '2024-05-26 22:33:53'),
(746, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24000, 'ຄ່າອາຫານ', 0, 0, '2024-05-27 13:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(50) NOT NULL,
  `percent` int(2) NOT NULL,
  `active` int(2) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `is_delete` int(2) NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `plan_name`, `percent`, `active`, `status`, `is_delete`, `timestamp`) VALUES
(1, 'Programming Language', 95, 40, 0, 1, '2024-01-02 20:43:35'),
(2, 'English Language', 95, 30, 0, 0, '2024-01-02 20:43:35'),
(3, 'Chinese Language', 80, NULL, 0, 0, '2024-01-02 20:43:35'),
(4, 'HTML,CSS', 80, 80, 1, 0, '2024-01-02 20:43:35'),
(5, 'PHP Management and PHP POS', 100, 75, 0, 0, '2024-01-02 20:49:29'),
(6, 'Laravel Framework', 80, 50, 0, 0, '2024-01-02 20:49:29'),
(7, 'Laravel+Ecommerce+livewire', 80, 80, 1, 0, '2024-01-02 20:49:46'),
(8, 'Laravel+POS(Point of Sale)', 80, NULL, 0, 0, '2024-01-02 20:50:00'),
(9, 'React JS', 80, NULL, 0, 0, '2024-01-02 20:50:23'),
(10, 'React JS + Larave POS', 80, NULL, 0, 0, '2024-01-02 20:50:30'),
(11, 'React JS + Larave Ecommerce', 80, NULL, 0, 0, '2024-01-02 20:50:38'),
(12, 'React JS + Node JS POS', 80, NULL, 0, 0, '2024-01-02 20:50:45'),
(13, 'React JS + Node JS Ecommerce', 80, NULL, 0, 0, '2024-01-02 20:50:50'),
(14, 'Vue JS + Laravel POS', 80, NULL, 0, 0, '2024-01-02 20:51:07'),
(15, 'Vue JS + Laravel Ecommerce', 80, NULL, 0, 0, '2024-01-02 20:51:14'),
(16, 'Vue JS + Node JS POS', 80, NULL, 0, 0, '2024-01-02 20:51:23'),
(17, 'Vue JS + Node JS Ecommerce', 80, NULL, 0, 0, '2024-01-02 20:51:29'),
(18, 'Flutter', 95, NULL, 0, 0, '2024-01-02 20:51:35'),
(19, 'Flutter + Larave Ecommerce', 85, NULL, 0, 0, '2024-01-02 20:51:40'),
(20, 'Flutter + Node JS Ecommerce', 85, NULL, 0, 0, '2024-01-02 20:51:44'),
(21, 'Nuxt JS + Vue JS Ecommerce', 80, NULL, 0, 0, '2024-01-02 20:51:49'),
(22, 'PostgreSQL', 95, NULL, 0, 0, '2024-01-02 20:51:58'),
(23, 'MongoDB', 80, NULL, 0, 0, '2024-01-02 20:52:05'),
(24, 'SQL Server', 80, NULL, 0, 0, '2024-01-02 20:52:10'),
(25, 'MySQL', 100, NULL, 0, 0, '2024-01-02 20:52:15'),
(26, 'English Grammer', 90, 50, 0, 0, '0000-00-00 00:00:00'),
(27, 'English IELTS', 80, NULL, 0, 0, '0000-00-00 00:00:00'),
(28, 'English Words', 90, NULL, 0, 0, '0000-00-00 00:00:00'),
(29, 'HSK1', 80, NULL, 0, 0, '0000-00-00 00:00:00'),
(30, 'HSK2', 90, NULL, 0, 0, '0000-00-00 00:00:00'),
(31, 'HSK3', 80, 0, 0, 0, '0000-00-00 00:00:00'),
(32, 'HSK4', 80, NULL, 0, 0, '0000-00-00 00:00:00'),
(34, 'ຂຽນບົດຈົບຊັ້ນ', 80, NULL, 0, 0, '2024-01-02 21:10:25'),
(35, 'ເສັງເອົາໃບຂັບຂີ່', 100, 100, 1, 1, '2024-02-19 20:48:48'),
(36, 'ເສັງເອົາໃບຂັບຂີ່', 50, 0, 0, 1, '2024-02-19 21:45:06'),
(37, 'github', 100, 80, 0, 0, '2024-03-07 13:01:19'),
(38, 'ຂຽນບົດຈົບຊັ້ນdsfsd', 100, NULL, 0, 1, '2024-03-15 22:25:05'),
(39, 'ຂຽນບົດຈົບຊັ້ນ', 100, 0, 0, 1, '2024-03-18 20:58:33'),
(40, 'sfsdfs', 55, NULL, 0, 1, '2024-03-18 20:58:49'),
(41, 'ຂຽນບົດຈົບຊັ້ນ', 22, NULL, 0, 1, '2024-03-18 21:57:35'),
(42, '200', 20, NULL, 0, 1, '2024-03-18 21:58:37'),
(43, 'sdfs', 200, NULL, 0, 1, '2024-03-18 22:01:17'),
(44, 'Laravel+Ecommerce+livewire', 100, 100, 1, 0, '2024-03-18 22:17:51'),
(45, 'test', 22, NULL, 0, 1, '2024-03-19 16:58:38'),
(46, 'API', 100, NULL, 0, 0, '2024-03-20 13:19:13'),
(47, 'React JS + PHP REST API', 80, NULL, 0, 0, '2024-04-09 16:36:18'),
(48, 'Angular', 80, NULL, 0, 0, '2024-04-11 20:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(2) NOT NULL,
  `Pid` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `regular_price` int(11) NOT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `category` varchar(11) NOT NULL,
  `m_pay` int(11) DEFAULT NULL,
  `is_delete` int(1) NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Pid`, `name`, `regular_price`, `sale_price`, `image`, `quantity`, `unit`, `category`, `m_pay`, `is_delete`, `timestamp`) VALUES
(23, 'P004', 'ໂຄຄາ ໂຄລາ', 20000, 18000, 'products/coca.png', 50, 'ຕຸກ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-28 21:46:42'),
(24, 'P005', 'Pepsi', 18000, 16000, 'products/Pepsi.png', 50, 'ປອງ', 'ເຄື່ອງດື່ມ', NULL, 1, '2024-04-28 21:49:01'),
(25, 'P005', 'Pepsi', 10000, 8000, 'products/pepsi1.png', 40, 'ຕຸກ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-28 21:50:48'),
(26, 'P006', 'ສະຕິງ', 12000, 10000, 'products/sting.png', 60, 'ຕຸກ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-29 16:01:42'),
(27, 'P007', 'ສະປອນເຊີ', 12000, 10000, 'products/sponsor.png', 60, 'ປອງ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-29 16:04:33'),
(28, 'P008', 'ມີຣິນດາ', 16000, 15000, 'products/mirinda.png', 20, 'ປອງ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-29 16:06:58'),
(29, 'P009', 'ນ້ຳໝາກພ້າວ', 16000, 15000, 'products/coconut.png', 20, 'ປອງ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-29 16:10:07'),
(30, 'P010', 'ນ້ຳໂຊດາ', 16000, 15000, 'products/soda.png', 10, 'ປອງ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-29 16:10:51'),
(31, 'P011', 'O-ishi', 18000, 16000, 'products/oishi.png', 10, 'ຕຸກ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-29 16:46:34'),
(32, 'P012', 'ນ້ຳໝາກກະທັນ', 15000, 13000, 'products/jujube.png', 10, 'ປອງ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-29 17:27:33'),
(33, 'P013', 'ເບຍລາວ', 20000, 18000, 'products/beerlao.png', 100, 'ແກ້ວ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-30 18:35:47'),
(34, 'P014', 'Heineken', 20000, 18000, 'products/heineken.png', 100, 'ແກ້ວ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-30 18:42:52'),
(35, 'P015', 'Somerby', 20000, 19000, 'products/somerby.png', 100, 'ແກ້ວ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-30 18:45:04'),
(36, 'P016', 'Golden Ale', 20000, 19000, 'products/golden beer.png', 100, 'ແກ້ວ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-30 19:10:39'),
(37, 'P017', 'ນ້ຳດື່ມຫົວເສືອ ຂະໜາດນ້ອຍ', 4000, 3000, 'products/drinkingwater1.png', 100, 'ຕຸກ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-30 19:15:03'),
(38, 'P018', 'ນ້ຳດື່ມຫົວເສືອ ຂະໜາດກາງ', 6000, 5000, 'products/drinkingwater3.png', 100, 'ຕຸກ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-30 19:16:03'),
(39, 'P019', 'ນ້ຳດື່ມຫົວເສືອ ຂະໜາດໃຫຍ່', 10000, 8000, 'products/drinkingwater2.png', 100, 'ຕຸກ', 'ເຄື່ອງດື່ມ', NULL, 0, '2024-04-30 19:16:57'),
(40, 'test', 'sfd', 2, 2, 'products/Pepsi.png', 4, 'ໜ່ວຍ', 'ເຄື່ອງດື່ມ', NULL, 1, '2024-05-02 19:21:10'),
(41, 'sfs', 'asdf', 2, 2, 'products/Pepsi.png', 2, 'ໜ່ວຍ', 'ເຄື່ອງດື່ມ', NULL, 1, '2024-05-02 19:45:08'),
(42, 'P005', 'asdf', 3, 2, 'products/coconut.png', 3, 'ປອງ', 'ເຄື່ອງດື່ມ', NULL, 1, '2024-05-03 10:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `school_table`
--

CREATE TABLE `school_table` (
  `id` int(11) NOT NULL,
  `first_time` varchar(70) DEFAULT NULL,
  `second_time` varchar(70) DEFAULT NULL,
  `third_time` varchar(70) DEFAULT NULL,
  `fourth_time` varchar(70) DEFAULT NULL,
  `days` varchar(11) NOT NULL,
  `is_delete` int(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_table`
--

INSERT INTO `school_table` (`id`, `first_time`, `second_time`, `third_time`, `fourth_time`, `days`, `is_delete`, `created_at`) VALUES
(1, 'te', 'ta', 'ta', 'at', 'at', 1, '2024-04-07 18:57:24'),
(2, 'Lect. ວິຊາເລືອກ (FNS313)', 'ສຳມະນາ 1 (FNS208) ອຈ ບຸນມີ', 'Lab. ຄວາມປອດໄພຂອງເວບໄຊ (CS005) ອຈ ເພັດ', 'ຫວ່າງ', 'ຈັນ', 0, '2024-04-07 19:05:46'),
(3, 'Lect. ມາຊີນເລີນນິ່ງ (Machine Learning) (FNS312) ອຈ ສຸກປະເສີດ', 'Lect. ການພັດທະນາເວບໄຊດ້ວຍພາສາ ASP.net2+framework (FNS313) ອຈ ສຸລິດ', 'Lect. ຄວາມປອດໄພຂອງເວບໄຊ (FNS313) ອຈ. ເພັດ', 'ຫວ່າງ', 'ອັງຄານ', 0, '2024-04-07 19:09:30'),
(4, 'Lab.ວິຊາເລືອກ (FNS312) ອຈ', 'ຫວ່າງ', 'ຫວ່າງ', 'ຫວ່າງ', 'ພຸດ', 0, '2024-04-07 19:10:18'),
(5, 'ຊົ່ວໂມງ1: Lect. ວິສະວະກຳຊັອບແວ (MA201) ອຈ ບົວສົດ', 'ຫວ່າງ', 'Lect. ມະນຸດ​ສຳພັນ (FNS210) ອຈ ຈັນດາວັນ', 'Lab. ການຂຽນໂປຣແກຣມເທິງມືຖື 2(CS007) ອຈ ບຸນມີ', 'ພະຫັດ', 0, '2024-04-07 19:11:27'),
(6, 'ຫວ່າງ', 'ຫວ່າງ', 'ຊົ່ວໂມງ3: Lect. ການຂຽນໂປຣແກຣມເທິງມືຖື 2 (FNS207) ອຈ ບຸນມີ', ' ຊົ່ວໂມງ4: Lab. ການພັດທະນາເວບໄຊດ້ວຍພາສາ ASP.net2+framework (MA201) ອຈ ', 'ສຸກ', 0, '2024-04-07 19:12:30'),
(7, 'te', 't', 'ta', 'at', 'ສຸກ', 1, '2024-04-23 10:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(22) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(1) NOT NULL DEFAULT 1,
  `is_delete` int(2) NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `password`, `role`, `is_delete`, `timestamp`) VALUES
(1, 'ປໍ້ຈົວ', '76589225', 'kangserpobtsuasvaaj@gmail.com', 'porchouavangkangser05122001100175002', 4, 0, '2024-01-23 09:35:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `necessary`
--
ALTER TABLE `necessary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdaily`
--
ALTER TABLE `pdaily`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_table`
--
ALTER TABLE `school_table`
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
-- AUTO_INCREMENT for table `necessary`
--
ALTER TABLE `necessary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `pdaily`
--
ALTER TABLE `pdaily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=747;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `school_table`
--
ALTER TABLE `school_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
