-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Paź 2022, 11:04
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mydb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `questions`
--

CREATE TABLE `questions` (
  `idquestions` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `answers_idanswers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `questions`
--

INSERT INTO `questions` (`idquestions`, `description`, `answers_idanswers`) VALUES
(1, 'co jest kotem?', 2),
(2, 'ile to 2+2?', 6),
(3, 'który to kąt prosty ?', 10),
(4, 'jakiego koloru są czarnuchy', 13),
(5, 'Kto ukradł rower Ewy?', 21),
(6, 'ile dni ma tydzień?', 23),
(7, 'jakie są przyciski na klawiaturze ?', 30);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`idquestions`,`answers_idanswers`),
  ADD KEY `fk_questions_answers` (`answers_idanswers`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_questions_answers` FOREIGN KEY (`answers_idanswers`) REFERENCES `answers` (`idanswers`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
