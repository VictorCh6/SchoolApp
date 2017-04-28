# SchoolApp
  Login : Admin
  Pass: Admin123

-- Database: `school`
--
-- structure of table for table `students`
--
CREATE TABLE `students` (
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `pesel` text NOT NULL,
  `email` text NOT NULL,
  `faculty` text NOT NULL,
  `yearofstudy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `students`
  ADD UNIQUE KEY `pesel` (`pesel`(11));

-- Sample Data `students`
--

INSERT INTO `students` (`firstname`, `lastname`, `pesel`, `email`, `faculty`, `yearofstudy`) VALUES
('Ala', 'Makota', '96040414550', 'alamakota@gmail.com', 'Law', 2),
('Tomek', 'Kowalski', '92120212344', 'tomek@ad.pl', 'Psychology', 3),
('Karol', 'Szklanka', '94010112345', 'karszkl@gmail.com', 'Logistics', 1);
