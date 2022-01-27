SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
`sno` int(3) NOT NULL,
`sender` text NOT NULL,
`receiver` text NOT NULL,
`balance` int(8) NOT NULL,
`datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `users` (
`id` int(3) NOT NULL,
`name` text NOT NULL,
`email` varchar(30) NOT NULL,
`balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Priya Malhotra', 'priya@gmail.com', 50000),
(2, 'Yash Shah', 'yash@gmail.com', 30000),
(3, 'Supriya Sen', 'supriya@gmail.com', 40000),
(4, 'Akshay Agarwal', 'akagarwal@gmail.com', 50000),
(5, 'Tara Kapadia', 'tara@gmail.com', 40000),
(6, 'Jay Singh', 'jaysingh@gmail.com', 30000),
(7, 'Supreet Chaudhary', 'supreet@gmail.com', 50000),
(8, 'Bhushan Rathore', 'bhushan@gmail.com', 40000),
(9, 'Vivan Singhania', 'vivan@gmail.com', 30000),
(10, 'Atharv Deshpande', 'atharv@gmail.com', 50000);


ALTER TABLE `transaction`
ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;


ALTER TABLE `users`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
