-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2024 at 03:29 AM
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
-- Database: `coronaproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `delete_register`
--

CREATE TABLE `delete_register` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delete_table`
--

CREATE TABLE `delete_table` (
  `id` int(11) NOT NULL,
  `hosp_name` varchar(255) DEFAULT NULL,
  `hosp_email` varchar(255) DEFAULT NULL,
  `hosp_contact` varchar(255) DEFAULT NULL,
  `vaccine` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hosp_register`
--

CREATE TABLE `hosp_register` (
  `id` int(11) NOT NULL,
  `hosp_name` varchar(100) NOT NULL,
  `hosp_email` varchar(100) NOT NULL,
  `hosp_contact` varchar(100) NOT NULL,
  `vaccine` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hosp_register`
--

INSERT INTO `hosp_register` (`id`, `hosp_name`, `hosp_email`, `hosp_contact`, `vaccine`) VALUES
(4, 'Alpha Health Center', 'admin@alphahealth.com', '111-222-3336', 'Not Available'),
(5, 'Alpha Health Center', 'help@alphahealth.com', '111-222-3337', 'COVID-19'),
(6, 'Beta Medical Facility', 'contact@betamedical.com', '222-333-4444', 'Hepatitis B'),
(7, 'Beta Medical Facility', 'info@betamedical.com', '222-333-4445', 'HPV'),
(8, 'Beta Medical Facility', 'support@betamedical.com', '222-333-4446', 'Hepatitis B'),
(11, 'Gamma Health Clinic', 'contact@gammahealth.com', '333-444-5555', 'Tetanus'),
(12, 'Gamma Health Clinic', 'info@gammahealth.com', '333-444-5556', 'Flu'),
(13, 'Gamma Health Clinic', 'support@gammahealth.com', '333-444-5557', 'Tetanus'),
(14, 'Gamma Health Clinic', 'admin@gammahealth.com', '333-444-5558', 'Flu'),
(15, 'Gamma Health Clinic', 'help@gammahealth.com', '333-444-5559', 'Tetanus'),
(16, 'Delta Hospital', 'contact@deltahospital.com', '444-555-6666', 'COVID-19'),
(17, 'Delta Hospital', 'info@deltahospital.com', '444-555-6667', 'HPV'),
(18, 'Delta Hospital', 'support@deltahospital.com', '444-555-6668', 'COVID-19'),
(19, 'Delta Hospital', 'admin@deltahospital.com', '444-555-6669', 'HPV'),
(20, 'Delta Hospital', 'help@deltahospital.com', '444-555-6670', 'COVID-19'),
(21, 'Epsilon Clinic', 'contact@epsilonclinic.com', '555-666-7777', 'Hepatitis B'),
(22, 'Epsilon Clinic', 'info@epsilonclinic.com', '555-666-7778', 'Tetanus'),
(23, 'Epsilon Clinic', 'support@epsilonclinic.com', '555-666-7779', 'Hepatitis B'),
(24, 'Epsilon Clinic', 'admin@epsilonclinic.com', '555-666-7780', 'Tetanus'),
(25, 'Epsilon Clinic', 'help@epsilonclinic.com', '555-666-7781', 'Hepatitis B'),
(26, 'jinnah', 'jinnah@gmail.com', '03123456789', 'fluinece');

-- --------------------------------------------------------

--
-- Table structure for table `p_reg`
--

CREATE TABLE `p_reg` (
  `id` int(11) NOT NULL,
  `p_name` varchar(100) DEFAULT NULL,
  `p_contact` varchar(100) DEFAULT NULL,
  `p_CNIC` varchar(100) DEFAULT NULL,
  `h_name` varchar(200) DEFAULT NULL,
  `v_name` varchar(200) DEFAULT NULL,
  `status_drop` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_reg`
--

INSERT INTO `p_reg` (`id`, `p_name`, `p_contact`, `p_CNIC`, `h_name`, `v_name`, `status_drop`) VALUES
(16, 'trgu2', '123', '123', 'Beta Medical Facility', 'Hepatitis B', 'Partially vaccinated'),
(17, 'trgu2', '123', '123', 'Beta Medical Facility', 'Hepatitis B', 'Fully vaccinated'),
(18, 'trgu2', '123', '123', 'Beta Medical Facility', 'Hepatitis B', 'Not vaccinated'),
(19, 'trgu2', '123', '123', 'Beta Medical Facility', 'Hepatitis B', 'Partially vaccinated'),
(20, 'trgu2', '123', '123', 'Beta Medical Facility', 'Hepatitis B', 'Fully vaccinated'),
(21, 'trgu2', '123', '123', 'Beta Medical Facility', 'Hepatitis B', 'Fully vaccinated'),
(22, 'trgut', '0333', '4021', 'Delta Hospital', 'HPV', 'Fully vaccinated'),
(25, 'abrar', '03123456789', '1234567890123', 'Gamma Health Clinic', 'Tetanus', 'Not vaccinated'),
(26, 'abrar', '03123456789', '1234567890123', 'Gamma Health Clinic', 'Tetanus', 'Fully vaccinated');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `pass`, `gender`, `status`) VALUES
(13, 'Hassan', 'Hassan@gmail.com', '$2y$10$lY6CocPvunpMMCSq/BL9yuJ.ToKjaeaPlVe8ZTPrhDOHku9IS3LYm', 'male', 'admin'),
(14, 'Abrar', 'Abrar@gmail.com', '$2y$10$pgg/V0.bbwO79teECGLsgup8T6utkUAr7KK04saF804/txMQSMkY6', 'male', 'admin'),
(15, 'Maaz', 'Maaz@gmail.com', '$2y$10$iJ4xOEe0.ArQyY4ZV4RMpOT1/4l9a/jZFzrGNCiJI477PNTo/5lRK', 'male', 'admin'),
(16, 'aaaa', 'abc@gmail.com', '$2y$10$FQ1DLamDYaA/SoZqeGiQ7u.OpkZqmxoWnlslBQaxl9bpv08bIQmri', 'male', 'hospital'),
(17, 'Nabeel', 'nabeel@gmail.com', '$2y$10$2pV5jOV8z0GouSFCMYMrNOpmT64DxId9rNRwg67Zh0oyzYDwrJ8CS', 'female', 'hospital'),
(18, 'aarish', 'aarish@gmail.com', '$2y$10$MOoCYAOhj.k5cZdkLfWFx.WtfhjWpHAs7KEPb5gGpYHwkZCouuJzC', 'male', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delete_register`
--
ALTER TABLE `delete_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delete_table`
--
ALTER TABLE `delete_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hosp_register`
--
ALTER TABLE `hosp_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_reg`
--
ALTER TABLE `p_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delete_register`
--
ALTER TABLE `delete_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `delete_table`
--
ALTER TABLE `delete_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hosp_register`
--
ALTER TABLE `hosp_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `p_reg`
--
ALTER TABLE `p_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
